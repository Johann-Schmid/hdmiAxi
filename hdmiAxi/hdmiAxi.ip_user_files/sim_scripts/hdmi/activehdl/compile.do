vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/v_tc_v6_1_13
vlib activehdl/v_vid_in_axi4s_v4_0_9
vlib activehdl/v_axi4s_vid_out_v4_0_10
vlib activehdl/v_tc_v6_2_0
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/util_vector_logic_v2_0_1

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 activehdl/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 activehdl/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 activehdl/v_axi4s_vid_out_v4_0_10
vmap v_tc_v6_2_0 activehdl/v_tc_v6_2_0
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vlog -work xpm  -sv2k12 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_clk_wiz_0_1/hdmi_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/hdmi/ip/hdmi_clk_wiz_0_1/hdmi_clk_wiz_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_v_axi4s_vid_out_0_0/sim/hdmi_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_0 -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_v_tc_0_0/sim/hdmi_v_tc_0_0.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/ClockGen.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/hdmi/ip/hdmi_rgb2dvi_1_0/sim/hdmi_rgb2dvi_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_proc_sys_reset_0_0/sim/hdmi_proc_sys_reset_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_xlconstant_0_0/sim/hdmi_xlconstant_0_0.v" \
"../../../bd/hdmi/ip/hdmi_dataGen_0_0/sim/hdmi_dataGen_0_0.v" \
"../../../bd/hdmi/sim/hdmi.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_util_vector_logic_0_0/sim/hdmi_util_vector_logic_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

