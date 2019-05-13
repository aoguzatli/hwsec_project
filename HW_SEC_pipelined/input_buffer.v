`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:58 05/09/2019 
// Design Name: 
// Module Name:    input_buffer 
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
module input_buffer(	input scan_clk,
							input [135:0] scan_in,
							output reg [1087:0] block
    );
	
	always @(posedge scan_clk) begin
	
		block = {scan_in, block[1087:136]};
	
	end

endmodule
