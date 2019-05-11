///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2018 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : VIO.v
// /___/   /\     Timestamp  : Tue Feb 27 20:09:54 Eastern Standard Time 2018
// \   \  /  \
//  \___\/\___\
//
// Design Name: Verilog Synthesis Wrapper
///////////////////////////////////////////////////////////////////////////////
// This wrapper is used to integrate with Project Navigator and PlanAhead

`timescale 1ns/1ps

module VIO(
    CONTROL,
    ASYNC_IN,
    ASYNC_OUT) /* synthesis syn_black_box syn_noprune=1 */;


inout [35 : 0] CONTROL;
input [24 : 0] ASYNC_IN;
output [9 : 0] ASYNC_OUT;

endmodule
