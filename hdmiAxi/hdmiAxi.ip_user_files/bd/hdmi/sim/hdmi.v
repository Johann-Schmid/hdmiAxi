//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Fri Jan 27 15:50:23 2023
//Host        : PC1012002888 running 64-bit major release  (build 9200)
//Command     : generate_target hdmi.bd
//Design      : hdmi
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "hdmi,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=hdmi,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "hdmi.hwdef" *) 
module hdmi
   (hdmi_out_clk_n,
    hdmi_out_clk_p,
    hdmi_out_data_n,
    hdmi_out_data_p,
    reset,
    sys_clock);
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_N" *) output hdmi_out_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_P" *) output hdmi_out_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_N" *) output [2:0]hdmi_out_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_P" *) output [2:0]hdmi_out_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN hdmi_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire clk_wiz_0_clk_out1;
  wire [23:0]dataGen_0_o_data;
  wire dataGen_0_o_data_valid;
  wire dataGen_0_o_eol;
  wire dataGen_0_o_sof;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_1;
  wire rgb2dvi_1_TMDS_CLK_N;
  wire rgb2dvi_1_TMDS_CLK_P;
  wire [2:0]rgb2dvi_1_TMDS_DATA_N;
  wire [2:0]rgb2dvi_1_TMDS_DATA_P;
  wire sys_clock_1;
  wire v_axi4s_vid_out_0_s_axis_video_tready;
  wire v_axi4s_vid_out_0_vid_active_video;
  wire [23:0]v_axi4s_vid_out_0_vid_data;
  wire v_axi4s_vid_out_0_vid_hsync;
  wire v_axi4s_vid_out_0_vid_vsync;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire [0:0]xlconstant_0_dout;

  assign hdmi_out_clk_n = rgb2dvi_1_TMDS_CLK_N;
  assign hdmi_out_clk_p = rgb2dvi_1_TMDS_CLK_P;
  assign hdmi_out_data_n[2:0] = rgb2dvi_1_TMDS_DATA_N;
  assign hdmi_out_data_p[2:0] = rgb2dvi_1_TMDS_DATA_P;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  hdmi_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1));
  hdmi_dataGen_0_0 dataGen_0
       (.i_clk(clk_wiz_0_clk_out1),
        .i_data_ready(v_axi4s_vid_out_0_s_axis_video_tready),
        .i_reset_n(proc_sys_reset_0_peripheral_aresetn),
        .o_data(dataGen_0_o_data),
        .o_data_valid(dataGen_0_o_data_valid),
        .o_eol(dataGen_0_o_eol),
        .o_sof(dataGen_0_o_sof));
  hdmi_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  hdmi_rgb2dvi_1_0 rgb2dvi_1
       (.PixelClk(clk_wiz_0_clk_out1),
        .TMDS_Clk_n(rgb2dvi_1_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_1_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_1_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_1_TMDS_DATA_P),
        .aRst_n(proc_sys_reset_0_peripheral_aresetn),
        .vid_pData(v_axi4s_vid_out_0_vid_data),
        .vid_pHSync(v_axi4s_vid_out_0_vid_hsync),
        .vid_pVDE(v_axi4s_vid_out_0_vid_active_video),
        .vid_pVSync(v_axi4s_vid_out_0_vid_vsync));
  hdmi_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(xlconstant_0_dout));
  hdmi_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(clk_wiz_0_clk_out1),
        .aclken(xlconstant_0_dout),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .fid(1'b0),
        .s_axis_video_tdata(dataGen_0_o_data),
        .s_axis_video_tlast(dataGen_0_o_eol),
        .s_axis_video_tready(v_axi4s_vid_out_0_s_axis_video_tready),
        .s_axis_video_tuser(dataGen_0_o_sof),
        .s_axis_video_tvalid(dataGen_0_o_data_valid),
        .vid_active_video(v_axi4s_vid_out_0_vid_active_video),
        .vid_data(v_axi4s_vid_out_0_vid_data),
        .vid_hsync(v_axi4s_vid_out_0_vid_hsync),
        .vid_io_out_ce(xlconstant_0_dout),
        .vid_vsync(v_axi4s_vid_out_0_vid_vsync),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  hdmi_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(clk_wiz_0_clk_out1),
        .clken(xlconstant_0_dout),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  hdmi_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
