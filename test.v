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
module test(	input clk,
											input scan_clk,
											input reset,
											input enable,
											input [135:0] scan_in,
											output [255:0] digest,
											output complete
	 );


	wire [1087:0] block;
	wire [1599:0] prev_state, next_state;
	wire [4:0] prev_round, next_round;
	wire flag_rounds_completed;
	
	assign complete = flag_rounds_completed;
	
	assign digest = prev_state[255:0];
	
	input_buffer inputbuf(	.scan_clk(scan_clk),
									.scan_in(scan_in),
									.block(block) );
	
	absorb_stage absorb(
								.block(block),
								.prev_state(prev_state),
								.prev_round(prev_round),
								.flag_rounds_completed(flag_rounds_completed),
								.next_state(next_state),
								.next_round(next_round) );
								
	round_comb round(	.clk(clk),
							.reset(reset),
							.enable(enable),.state_in(next_state),
							.round_in(next_round),
							.state_out(prev_state),
							.round_out(prev_round),
							.flag_rounds_completed(flag_rounds_completed) );

endmodule
