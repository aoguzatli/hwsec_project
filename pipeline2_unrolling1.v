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
module pipeline2_unrolling1(	input clk,
											input scan_clk,
											input reset,
											input enable,
											//input [1087:0] block,
											input [135:0] scan_in,
											output [255:0] digest,
											output complete
	 );


	wire [1087:0] block;
	wire [1599:0] prev_state, next_state;
	wire [6:0] prev_round, next_round;
	wire flag_rounds_completed;
	genvar i, j, k, b;
	
	assign complete = flag_rounds_completed;
	
	//assign digest = prev_state[255:0];
	
	generate
	
		for (i = 0; i < 4; i=i+1) begin: iloop_xor
			for (j = 0; j < 1; j=j+1) begin: jloop_xor
				for (k = 0; k < 8; k=k+1) begin: kloop_xor
					for (b = 7; b >= 0; b=b-1) begin: bloop_xor
						assign digest[255-((5*j+i)*64 + 8*k) + b-7] = prev_state[((5*j+i)*64 + 8*k + b)];
					end
				end
			end
		end
	
	endgenerate
	
	input_buffer inputbuf(	.scan_clk(scan_clk),
									.scan_in(scan_in),
									.block(block) ); 
	
	absorb_stage_pipelined absorb(
								.block(block),
								.prev_state(prev_state),
								.prev_round(prev_round),
								.flag_rounds_completed(flag_rounds_completed),
								.next_state(next_state),
								.next_round(next_round) );
								
	round_pipelined round(	.clk(clk),
							.reset(reset),
							.enable(enable),.state_in(next_state),
							.round_in(next_round),
							.state_out(prev_state),
							.round_out(prev_round),
							.flag_rounds_completed(flag_rounds_completed) );

endmodule