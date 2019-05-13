`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:57 05/04/2019 
// Design Name: 
// Module Name:    RC_lookup 
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
module RC_lookup( input [6:0] round,
						output reg [63:0] round_constant
    );

always @(round) begin

	case (round)
		
		0: round_constant = 64'h0000000000000001;
		1: round_constant = 64'h0000000000008082;
		2: round_constant = 64'h800000000000808A;
		3: round_constant = 64'h8000000080008000;
		4: round_constant = 64'h000000000000808B;
		5: round_constant = 64'h0000000080000001;
		6: round_constant = 64'h8000000080008081;
		7: round_constant = 64'h8000000000008009;
		8: round_constant = 64'h000000000000008A;
		9: round_constant = 64'h0000000000000088;
		10: round_constant = 64'h0000000080008009;
		11: round_constant = 64'h000000008000000A;
		12: round_constant = 64'h000000008000808B;
		13: round_constant = 64'h800000000000008B;
		14: round_constant = 64'h8000000000008089;
		15: round_constant = 64'h8000000000008003;
		16: round_constant = 64'h8000000000008002;
		17: round_constant = 64'h8000000000000080;
		18: round_constant = 64'h000000000000800A;
		19: round_constant = 64'h800000008000000A;
		20: round_constant = 64'h8000000080008081;
		21: round_constant = 64'h8000000000008080;
		22: round_constant = 64'h0000000080000001;
		23: round_constant = 64'h8000000080008008;
		default: round_constant = 64'h0000000000000000;
		
	
	endcase

end

endmodule
