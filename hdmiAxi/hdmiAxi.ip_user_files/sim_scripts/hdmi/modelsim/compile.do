vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/v_tc_v6_1_13
vlib modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vlib modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vlib modelsim_lib/msim/v_tc_v6_2_0
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 modelsim_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 modelsim_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 modelsim_lib/msim/v_axi4s_vid_out_v4_0_10
vmap v_tc_v6_2_0 modelsim_lib/msim/v_tc_v6_2_0
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work xpm  -incr -sv "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_clk_wiz_0_1/hdmi_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/hdmi/ip/hdmi_clk_wiz_0_1/hdmi_clk_wiz_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13  -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_v_axi4s_vid_out_0_0/sim/hdmi_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_0  -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/hdmi/ip/hdmi_v_tc_0_0/sim/hdmi_v_tc_0_0.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/ClockGen.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/hdmi/ip/hdmi_rgb2dvi_1_0/sim/hdmi_rgb2dvi_1_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/hdmi/ip/hdmi_proc_sys_reset_0_0/sim/hdmi_proc_sys_reset_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_xlconstant_0_0/sim/hdmi_xlconstant_0_0.v" \
"../../../bd/hdmi/ip/hdmi_dataGen_0_0/sim/hdmi_dataGen_0_0.v" \
"../../../bd/hdmi/sim/hdmi.v" \

vlog -work util_vector_logic_v2_0_1  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8b3d" \
"../../../bd/hdmi/ip/hdmi_util_vector_logic_0_0/sim/hdmi_util_vector_logic_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

