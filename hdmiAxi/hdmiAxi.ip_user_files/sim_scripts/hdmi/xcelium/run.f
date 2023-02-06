-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi/ip/hdmi_clk_wiz_0_1/hdmi_clk_wiz_0_1_clk_wiz.v" \
  "../../../bd/hdmi/ip/hdmi_clk_wiz_0_1/hdmi_clk_wiz_0_1.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_tc_v6_1_13 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/v_axi4s_vid_out_v4_0_10 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi/ip/hdmi_v_axi4s_vid_out_0_0/sim/hdmi_v_axi4s_vid_out_0_0.v" \
-endlib
-makelib xcelium_lib/v_tc_v6_2_0 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi/ip/hdmi_v_tc_0_0/sim/hdmi_v_tc_0_0.vhd" \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/ClockGen.vhd" \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/SyncAsync.vhd" \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/SyncAsyncReset.vhd" \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/DVI_Constants.vhd" \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/OutputSERDES.vhd" \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/TMDS_Encoder.vhd" \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/d57c/src/rgb2dvi.vhd" \
  "../../../bd/hdmi/ip/hdmi_rgb2dvi_1_0/sim/hdmi_rgb2dvi_1_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi/ip/hdmi_proc_sys_reset_0_0/sim/hdmi_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi/ip/hdmi_xlconstant_0_0/sim/hdmi_xlconstant_0_0.v" \
  "../../../bd/hdmi/ip/hdmi_dataGen_0_0/sim/hdmi_dataGen_0_0.v" \
  "../../../bd/hdmi/sim/hdmi.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../hdmiAxi.srcs/sources_1/bd/hdmi/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi/ip/hdmi_util_vector_logic_0_0/sim/hdmi_util_vector_logic_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

