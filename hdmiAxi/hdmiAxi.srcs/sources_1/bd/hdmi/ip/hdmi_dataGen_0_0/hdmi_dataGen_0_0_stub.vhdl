-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Feb  2 10:44:08 2023
-- Host        : PC1012002888 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/hdmiAxi/hdmiAxi/hdmiAxi.srcs/sources_1/bd/hdmi/ip/hdmi_dataGen_0_0/hdmi_dataGen_0_0_stub.vhdl
-- Design      : hdmi_dataGen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_dataGen_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_data_valid : out STD_LOGIC;
    i_data_ready : in STD_LOGIC;
    o_sof : out STD_LOGIC;
    o_eol : out STD_LOGIC
  );

end hdmi_dataGen_0_0;

architecture stub of hdmi_dataGen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_reset_n,o_data[23:0],o_data_valid,i_data_ready,o_sof,o_eol";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dataGen,Vivado 2020.1";
begin
end;
