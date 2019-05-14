`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:00 05/09/2019 
// Design Name: 
// Module Name:    sha3_tb 
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
module sha3_tb(
    );

	reg clk, scan_clk, reset, enable;
	reg [135:0] scan_in;
	wire [255:0] digest;
	integer i;
	wire complete;
 
	//wire [1087:0] message = {8'h41, 8'h42, 8'h43, 8'h06, 1048'h00, 8'h80};
	//wire [1087:0] message = {8'h41, 8'h42, 8'h43, 8'h00, 1048'h00, 8'h00};

	wire [1599:0] full_message = 1600'h00000000000060ab000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
	//wire [1087:0] message = 1088'b0;
	wire [1087:0] message = 1088'h31383633324953415745534f4d450600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080;
	//wire [1087:0] message = 1088'b0;
	
	pipeline_1_unrolling_1 dut( 	.clk(clk),
					.scan_clk(scan_clk),
					.reset(reset),
					.enable(enable),
					.scan_in(scan_in),
					.digest(digest),
					.complete(complete)		);
				
	always
		#1 clk = !clk; 

	initial begin
		reset = 0;
		clk = 0;
		scan_clk = 0;
		enable = 0;
		scan_in = 136'b0;
		
		for (i = 0; i < 8; i=i+1) begin
			#1
			scan_clk = 0;
			scan_in = message[i*136 +: 136];
			
			#1
			scan_clk = 1;
		end
		
		enable = 1;
		#2
		
		reset = 1;
		#2
		reset = 0;
	
	end

endmodule
