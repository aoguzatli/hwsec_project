///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2018 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : ILA.veo
// /___/   /\     Timestamp  : Tue Feb 27 20:08:56 Eastern Standard Time 2018
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ILA YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .DATA(DATA), // IN BUS [37:0]
    .TRIG0(TRIG0), // IN BUS [11:0]
    .TRIG1(TRIG1) // IN BUS [11:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

