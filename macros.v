`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:26 04/14/2019 
// Design Name: 
// Module Name:    macros 
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
`ifndef _MACROS_V
    `define _MACROS_V 1
	
	// Width of one slice in bits. Must be power of 2.
	`define SLICE_WIDTH 512
	// Number of slices in the module. 
	`define NUM_SLICES 4
	// Total width of module is sum of slice widths.
	`define TOTAL_WIDTH `SLICE_WIDTH * `NUM_SLICES
	// Output width in bits from each slice.
	`define SLICE_OUTPUT_WIDTH $clog2(`SLICE_WIDTH + 1)
	// If compiler does not recognize $clog2 then use hard-coded
	//`define SLICE_OUTPUT_WIDTH 10
	
	`define COUNTER_WIDTH 4
	
`endif // _MACROS_VH