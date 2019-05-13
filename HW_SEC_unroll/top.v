`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:37:43 04/11/2019 
// Design Name: 
// Module Name:    top 
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
module top #(parameter N = 128, parameter r = 1088) (
		input [1599:0] state_in,
		output [1599:0] state_out
    );

	wire [1599:0] state_after_rho;
	
	rho rho_mod(state_in, state_after_rho);
	pi pi_mod(state_after_rho, state_out);
	

endmodule
