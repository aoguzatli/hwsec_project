`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:04 04/13/2019 
// Design Name: 
// Module Name:    chi 
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
module chi(	input [1599:0] state_in,
				output [1599:0] state_out
    );
	 
genvar i, j, k;

generate
	for (i = 0; i < 5; i=i+1) begin: iloop
		for (j = 0; j < 5; j=j+1) begin: jloop
			for (k = 0; k < 64; k=k+1) begin: kloop
			
				assign state_out[(5*j+i)*64 + k] = state_in[(5*j + i)*64 + k] ^ 
																((~state_in[((i+1)%5 + 5*((j+0)%5))*64 + k]) && state_in[((i+2)%5 + 5*((j+0)%5))*64 + k]);
			
			end
		end
	end
endgenerate

endmodule
