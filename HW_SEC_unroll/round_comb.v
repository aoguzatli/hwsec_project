`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:24 05/06/2019 
// Design Name: 
// Module Name:    round_comb 
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
module round_comb(input clk,
						input reset,
						input enable,
						input [1599:0] state_in,
						input [4:0] round_in,
                                                output [1599:0] iota_out,
						output [4:0] round_out
    );

	wire [1599:0] theta_out, rho_out, pi_out, chi_out;
	wire [63:0] round_constant;

	RC_lookup rc(round_in, round_constant);

	theta t(state_in, theta_out);
	rho r(theta_out, rho_out);
	pi p(rho_out, pi_out);
	chi c(pi_out, chi_out);
	iota i(chi_out, iota_out, round_constant);
        assign round_out = round_in + 1'b1;        
	
endmodule