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
						 output reg [1599:0] state_out,
						 output reg [4:0] round_out,
						 output reg flag_rounds_completed
    );

	wire [1599:0] theta_out, rho_out, pi_out, chi_out, iota_out;
	wire [63:0] round_constant;
	reg done;

	RC_lookup rc(round_in, round_constant);

	theta t(state_in, theta_out);
	rho r(theta_out, rho_out);
	pi p(rho_out, pi_out);
	chi c(pi_out, chi_out);
	iota i(chi_out, iota_out, round_constant);
	
	always @(posedge clk) begin
	
		if (reset) begin
			round_out = 5'b0;
			state_out = 1600'b0;
			flag_rounds_completed = 1;
			done = 0;
		end
	
		else if (enable && (!done)) begin
			
			round_out = round_in + 1;
			state_out = iota_out;
			
			if (round_in == 5'b10111) begin 
				flag_rounds_completed = 1;
				done = 1;
			end 
			else begin
				flag_rounds_completed = 0;
			end
		end
	
	end
endmodule
