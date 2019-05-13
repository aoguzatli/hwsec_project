`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:38 04/13/2019 
// Design Name: 
// Module Name:    padding 
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
module padding(a, b, c, d, out
    );

	input a, b, c, d;
	output out;
	
	assign out = ((a && b) || (c && d));

endmodule
