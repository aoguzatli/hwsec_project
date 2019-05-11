`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:43 04/13/2019 
// Design Name: 
// Module Name:    theta 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module theta(	input [1599:0] state_in,
					output [1599:0] state_out
    );
	 
wire [319:0] parities;
genvar i, j, k;

generate 
	for (i = 0; i < 5; i=i+1) begin: iloop_parities
		for (k = 0; k < 64; k=k+1) begin: kloop_parities
			
			assign parities[64*i + k] = state_in[(5*0+i)*64 + k] ^ state_in[(5*1+i)*64 + k] ^ state_in[(5*2+i)*64 + k] 
													^ state_in[(5*3+i)*64 + k] ^ state_in[(5*4+i)*64 + k];
				
		end
	end
endgenerate

generate 
	/*
	// XOR'ing the parities and the bit
	for (i = 0; i < 5; i=i+1) begin: iloop_xor
		for (j = 0; j < 5; j=j+1) begin: jloop_xor
			for (k = 0; k < 64; k=k+1) begin: kloop_xor
				$display("%d, %d, %d", i, j, k);
				$display("%d", i);
				$display("%d", j);
				$display("%d", k);
				assign state_out[(5*i+j)*64 + k] = state_in[(5*i+j)*64 + k] 
																^ parities[64*((i+1)%5) + ((k-1)%64)]
																^ parities[64*((i-1)%5) + k];
				
			end
		end
	end
	*/
	for (i = 0; i < 5; i=i+1) begin: iloop_xor
		for (j = 0; j < 5; j=j+1) begin: jloop_xor
			for (k = 0; k < 64; k=k+1) begin: kloop_xor

				assign state_out[(5*j+i)*64 + k] = state_in[(5*j+i)*64 + k] 
																^ parities[64*((i+1)%5) + ((k+63)%64)]
																^ parities[64*((i+4)%5) + k];
				
			end
		end
	end

endgenerate

endmodule
