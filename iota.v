`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:29 04/13/2019 
// Design Name: 
// Module Name:    iota 
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
module iota( 	input [1599:0] state_in,
					output [1599:0] state_out,
					input [63:0] round_constant
    );

genvar i, j, k;

generate
	
	for (i = 0; i < 5; i=i+1) begin: iloop
		for (j = 0; j < 5; j=j+1) begin: jloop
			for (k = 0; k < 64; k=k+1) begin: kloop
				
				if (i == 0 && j == 0) begin
					assign state_out[0 + k] = state_in[0 + k] ^ round_constant[k];
				end
				
				else begin
					assign state_out[(5*j + i)*64 + k] = state_in[(5*j + i)*64 + k];
				end
			
			end
		end
	end

endgenerate

endmodule
