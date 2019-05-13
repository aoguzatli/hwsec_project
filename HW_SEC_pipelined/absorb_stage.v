`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:41 05/06/2019 
// Design Name: 
// Module Name:    absorb_stage 
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
module absorb_stage(	input [1087:0] block,
							input [1599:0] prev_state,
							input [6:0] prev_round,
							input flag_rounds_completed,
							output reg [1599:0] next_state,
							output reg [6:0] next_round
    );

	wire [1599:0] xored_padded_block;
	genvar i;
	
	assign xored_padded_block[1599:512] = prev_state ^ block;
	assign xored_padded_block[511:0] = prev_state;
	
	/*
	generate
	
		for (i = 0; i < 1024; i=i+1) begin: for1
			assign xored_padded_block[i] = prev_state[i] ^ block[i];
		end
		
		for (i = 1024; i < 1088; i=i+1) begin: for2
			assign xored_padded_block[i] = prev_state[i] ^ block[i];
		end
	
		for (i = 1088; i < 1600; i=i+1) begin: for3
			assign xored_padded_block[i] = prev_state[i];
		end
		
	endgenerate 
	
	/*generate
	
		for (i = 0; i < 1024; i=i+1) begin: for1
			assign xored_padded_block[i] = block[i];
		end
		
		for (i = 1024; i < 1088; i=i+1) begin: for2
			assign xored_padded_block[i] = block[i];
		end
	
		for (i = 1088; i < 1600; i=i+1) begin: for3
			assign xored_padded_block[i] = 0;
		end
		
	endgenerate*/
	
	

	always @(*) begin
		
		if (flag_rounds_completed) begin
			next_state = xored_padded_block;
		end
		
		else begin
			next_state = prev_state;
		end
		
		next_round = prev_round;

	end


endmodule
