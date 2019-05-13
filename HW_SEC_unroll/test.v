`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:25 05/06/2019 
// Design Name: 
// Module Name:    pipeline_1_unrolling_1 
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
module test (	input clk,
											input scan_clk,
											input reset,
											input enable,
											input [135:0] scan_in,
											output [255:0] digest,
											output complete
	 );


	wire [1087:0] block;
	wire [1599:0] prev_state0, next_state0, iota_out1, iota_out;
	wire [4:0] prev_round, next_round0, prev_round1;
        reg [4:0] round_out_ff;
        reg [1599:0] state_out_ff;
	reg flag_rounds_completed;
	
	assign digest = state_out_ff[255:0];
	assign complete = flag_rounds_completed;
	
	input_buffer inputbuf(	.scan_clk(scan_clk),
									.scan_in(scan_in),
									.block(block) );
	
	absorb_stage absorb( .block(block),
								.prev_state(state_out_ff),
								.prev_round(round_out_ff),
								.flag_rounds_completed(flag_rounds_completed),
								.next_state(next_state0),
								.next_round(next_round0) );
								
	round_comb round0(	.clk(clk),
							.reset(reset),
							.enable(enable),
							.state_in(next_state0),
							.round_in(next_round0),
                                                        .iota_out (iota_out1),
							.round_out(prev_round1) );

	round_comb round1(	.clk(clk),
							.reset(reset),
							.enable(enable),
							.state_in(iota_out1),
							.round_in(prev_round1),
                                                        .iota_out (iota_out),
							.round_out(prev_round) );


	always @(posedge clk) begin
	
		if (reset) begin
			round_out_ff = 5'b0;
			state_out_ff = 1600'b0;
			flag_rounds_completed = 1;
		end
	
		else if (enable) begin
			
			round_out_ff = prev_round;
			state_out_ff = iota_out;
			
			if (prev_round == 5'b10111) begin 
				flag_rounds_completed = 1;
			end 
			else begin
				flag_rounds_completed = 0;
			end
		end
        end

endmodule
