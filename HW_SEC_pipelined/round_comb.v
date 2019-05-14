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
						 input [6:0] round_in,
						 output reg [1599:0] state_out,
						 output reg [6:0] round_out,
						 output reg flag_rounds_completed
    );

	wire [1599:0] theta_out, rho_out, pi_out, chi_out, iota_out;
        reg [1599:0] pipe_stage1;
	wire [63:0] round_constant;

	RC_lookup rc(round_in, round_constant);

	theta t(state_in, theta_out);
	
        always @(posedge clk) begin
               if (reset) begin
                   pipe_stage1 <= 1600'b0;
               end
               else begin
                   pipe_stage1 <= theta_out;
               end
        end

        rho r(theta_out, rho_out);
	pi p(rho_out, pi_out);
        
	chi c(pi_out, chi_out);

	iota i(chi_out, iota_out, round_constant);
	


	always @(posedge clk) begin
	
		if (reset) begin
			round_out <= 7'b0;
			state_out <= 1600'b0;
			flag_rounds_completed <= 1;
		end
		else if (enable) begin
			
			round_out <= round_in + 1;
			state_out <= iota_out;
			
			if (round_in == 7'b0101111) begin 
				flag_rounds_completed <= 1;
			end 
			else begin
				flag_rounds_completed <= 0;
			end
		end
	
	end
endmodule
