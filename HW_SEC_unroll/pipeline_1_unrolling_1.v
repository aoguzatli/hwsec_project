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
module pipeline_1_unrolling_1(	input clk,
											/*input scan_clk,
											input reset,
											input enable,
											input [135:0] scan_in,*/
											output [255:0] digest
	 );

	wire enable, reset;
	wire [135:0] scan_in;
	wire scan_clk;

	wire [1087:0] block;
	wire [1599:0] prev_state0, next_state0, iota_out1, iota_out;
	wire [4:0] prev_round, prev_round1, next_round0;
	reg [4:0] round_out_ff;
        reg [1599:0] state_out_ff;
        reg flag_rounds_completed;
	
	assign digest = state_out_ff[255:0];
	
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


	//////////////////////////////////////////////////////////////
	//ICON, VIO, and ILA instantiations. No need to edit this part
	 wire [138:0] vio_op;
	 assign scan_in=vio_op[138:3]; 
	 assign scan_clk=vio_op[2];
	 assign reset=vio_op[1];	 
	 assign enable=vio_op[0];
	 
	 wire [255:0] vio_ip;
	 assign vio_ip[255:0]= state_out_ff[255:0];
	 
	 wire ila_data;
	 assign ila_data=flag_rounds_completed; 
	 
	wire [35:0] cntbus, ilacntbus;
	(* KEEP = "TRUE" *)
	ICON ICON0 (
    .CONTROL0(cntbus),
	 .CONTROL1(ilacntbus));	
	(* KEEP = "TRUE" *)
	VIO VIO0 ( 
		 .CONTROL(cntbus),
		 .ASYNC_OUT(vio_op),
		 .ASYNC_IN(vio_ip));	 
	(* KEEP = "TRUE" *)
	ILA ILA0 (
    .CONTROL(ilacntbus),
    .CLK(clk),
    .DATA(ila_data),
	 .TRIG0(flag_rounds_completed) );
	 ////////////////////////////////////////////////////////////


endmodule
