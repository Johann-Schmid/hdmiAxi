// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Feb  2 10:44:08 2023
// Host        : PC1012002888 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/hdmiAxi/hdmiAxi/hdmiAxi.srcs/sources_1/bd/hdmi/ip/hdmi_dataGen_0_0/hdmi_dataGen_0_0_stub.v
// Design      : hdmi_dataGen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dataGen,Vivado 2020.1" *)
module hdmi_dataGen_0_0(i_clk, i_reset_n, o_data, o_data_valid, 
  i_data_ready, o_sof, o_eol)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_reset_n,o_data[23:0],o_data_valid,i_data_ready,o_sof,o_eol" */;
  input i_clk;
  input i_reset_n;
  output [23:0]o_data;
  output o_data_valid;
  input i_data_ready;
  output o_sof;
  output o_eol;
endmodule
