`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:54 04/13/2019 
// Design Name: 
// Module Name:    rho 
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
module rho(	input [1599:0] state_in,
				output [1599:0] state_out
    );

/*
genvar t, k;
integer i = 1, j = 0;
integer oldi, u;

generate
	for (t = 0; t < 24; t=t+1) begin: tloop
		
		assign u = ((t+1)*(t+2))/2;
		
		for (k = 0; k < 64; k=k+1) begin: kloop
			
			assign state_out[(5*i + j)*64 + k] = state_in[(5*i + j)*64 + (k - u + 320)%5];
			 
		end
		
		assign oldi = i;
		assign i = j;
		assign j = (2*oldi + 3*j)%5;
	end

endgenerate
*/

genvar k;

generate

for (k = 0; k < 64; k=k+1) begin: kloop
	
	assign state_out[(5*0+0)*64 + k] = state_in[(5*0+0)*64 + ((k + 64 - 0)%64)];
	assign state_out[(5*0+1)*64 + k] = state_in[(5*0+1)*64 + ((k + 64 - 1)%64)];
	assign state_out[(5*0+2)*64 + k] = state_in[(5*0+2)*64 + ((k + 64 - 62)%64)];
	assign state_out[(5*0+3)*64 + k] = state_in[(5*0+3)*64 + ((k + 64 - 28)%64)];
	assign state_out[(5*0+4)*64 + k] = state_in[(5*0+4)*64 + ((k + 64 - 27)%64)];
	
	assign state_out[(5*1+0)*64 + k] = state_in[(5*1+0)*64 + ((k + 64 - 36)%64)];
	assign state_out[(5*1+1)*64 + k] = state_in[(5*1+1)*64 + ((k + 64 - 44)%64)];
	assign state_out[(5*1+2)*64 + k] = state_in[(5*1+2)*64 + ((k + 64 - 6)%64)];
	assign state_out[(5*1+3)*64 + k] = state_in[(5*1+3)*64 + ((k + 64 - 55)%64)];
	assign state_out[(5*1+4)*64 + k] = state_in[(5*1+4)*64 + ((k + 64 - 20)%64)];
	
	assign state_out[(5*2+0)*64 + k] = state_in[(5*2+0)*64 + ((k + 64 - 3)%64)];
	assign state_out[(5*2+1)*64 + k] = state_in[(5*2+1)*64 + ((k + 64 - 10)%64)];
	assign state_out[(5*2+2)*64 + k] = state_in[(5*2+2)*64 + ((k + 64 - 43)%64)];
	assign state_out[(5*2+3)*64 + k] = state_in[(5*2+3)*64 + ((k + 64 - 25)%64)];
	assign state_out[(5*2+4)*64 + k] = state_in[(5*2+4)*64 + ((k + 64 - 39)%64)];
	
	assign state_out[(5*3+0)*64 + k] = state_in[(5*3+0)*64 + ((k + 64 - 41)%64)];
	assign state_out[(5*3+1)*64 + k] = state_in[(5*3+1)*64 + ((k + 64 - 45)%64)];
	assign state_out[(5*3+2)*64 + k] = state_in[(5*3+2)*64 + ((k + 64 - 15)%64)];
	assign state_out[(5*3+3)*64 + k] = state_in[(5*3+3)*64 + ((k + 64 - 21)%64)];
	assign state_out[(5*3+4)*64 + k] = state_in[(5*3+4)*64 + ((k + 64 - 8)%64)];
	
	assign state_out[(5*4+0)*64 + k] = state_in[(5*4+0)*64 + ((k + 64 - 18)%64)];
	assign state_out[(5*4+1)*64 + k] = state_in[(5*4+1)*64 + ((k + 64 - 2)%64)];
	assign state_out[(5*4+2)*64 + k] = state_in[(5*4+2)*64 + ((k + 64 - 61)%64)];
	assign state_out[(5*4+3)*64 + k] = state_in[(5*4+3)*64 + ((k + 64 - 56)%64)];
	assign state_out[(5*4+4)*64 + k] = state_in[(5*4+4)*64 + ((k + 64 - 14)%64)];

end

endgenerate

endmodule
