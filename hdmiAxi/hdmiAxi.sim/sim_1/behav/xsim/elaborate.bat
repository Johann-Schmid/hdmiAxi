@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Jan 27 15:50:36 +0100 2023
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto e9a2bb920e1949fba158853dc15cb4ce --incr --debug typical --relax --mt 2 -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_10 -L v_tc_v6_2_0 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xlconstant_v1_1_7 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot hdmi_wrapper_behav xil_defaultlib.hdmi_wrapper xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto e9a2bb920e1949fba158853dc15cb4ce --incr --debug typical --relax --mt 2 -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_10 -L v_tc_v6_2_0 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xlconstant_v1_1_7 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot hdmi_wrapper_behav xil_defaultlib.hdmi_wrapper xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
