
################################################################
# This is a generated script based on design: hdmi
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source hdmi_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# dataGen

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tsbg484-1
   set_property BOARD_PART digilentinc.com:nexys_video:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name hdmi

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set hdmi_out [ create_bd_intf_port -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 hdmi_out ]


  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {126.651} \
   CONFIG.CLKOUT1_PHASE_ERROR {104.359} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {146} \
   CONFIG.CLKOUT1_REQUESTED_PHASE {0} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {9.125} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.250} \
   CONFIG.MMCM_CLKOUT0_PHASE {0.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: dataGen_0, and set properties
  set block_name dataGen
  set block_cell_name dataGen_0
  if { [catch {set dataGen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dataGen_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_0

  # Create instance: rgb2dvi_1, and set properties
  set rgb2dvi_1 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2dvi:1.4 rgb2dvi_1 ]
  set_property -dict [ list \
   CONFIG.TMDS_BOARD_INTERFACE {hdmi_out} \
   CONFIG.kClkPrimitive {MMCM} \
   CONFIG.kGenerateSerialClk {true} \
   CONFIG.kRstActiveHigh {false} \
 ] $rgb2dvi_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {0} \
   CONFIG.C_VTG_MASTER_SLAVE {0} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {960} \
   CONFIG.GEN_F0_VBLANK_HSTART {960} \
   CONFIG.GEN_F0_VFRAME_SIZE {1170} \
   CONFIG.GEN_F0_VSYNC_HEND {1004} \
   CONFIG.GEN_F0_VSYNC_HSTART {1004} \
   CONFIG.GEN_F0_VSYNC_VEND {1167} \
   CONFIG.GEN_F0_VSYNC_VSTART {1157} \
   CONFIG.GEN_F1_VBLANK_HEND {960} \
   CONFIG.GEN_F1_VBLANK_HSTART {960} \
   CONFIG.GEN_F1_VFRAME_SIZE {1125} \
   CONFIG.GEN_F1_VSYNC_HEND {1004} \
   CONFIG.GEN_F1_VSYNC_HSTART {1004} \
   CONFIG.GEN_F1_VSYNC_VEND {1088} \
   CONFIG.GEN_F1_VSYNC_VSTART {1083} \
   CONFIG.GEN_HACTIVE_SIZE {912} \
   CONFIG.GEN_HFRAME_SIZE {1040} \
   CONFIG.GEN_HSYNC_END {1032} \
   CONFIG.GEN_HSYNC_START {968} \
   CONFIG.GEN_VACTIVE_SIZE {1140} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.HAS_INTC_IF {false} \
   CONFIG.INTERLACE_EN {false} \
   CONFIG.SYNC_EN {false} \
   CONFIG.VIDEO_MODE {Custom} \
   CONFIG.auto_generation_mode {false} \
   CONFIG.enable_detection {false} \
   CONFIG.enable_generation {true} \
 ] $v_tc_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net rgb2dvi_1_TMDS [get_bd_intf_ports hdmi_out] [get_bd_intf_pins rgb2dvi_1/TMDS]
  connect_bd_intf_net -intf_net v_axi4s_vid_out_0_vid_io_out [get_bd_intf_pins rgb2dvi_1/RGB] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]

  # Create port connections
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins dataGen_0/i_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins rgb2dvi_1/PixelClk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net dataGen_0_o_data [get_bd_pins dataGen_0/o_data] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tdata]
  connect_bd_net -net dataGen_0_o_data_valid [get_bd_pins dataGen_0/o_data_valid] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tvalid]
  connect_bd_net -net dataGen_0_o_eol [get_bd_pins dataGen_0/o_eol] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tlast]
  connect_bd_net -net dataGen_0_o_sof [get_bd_pins dataGen_0/o_sof] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tuser]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins dataGen_0/i_reset_n] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins rgb2dvi_1/aRst_n] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_tc_0/resetn]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net v_axi4s_vid_out_0_s_axis_video_tready [get_bd_pins dataGen_0/i_data_ready] [get_bd_pins v_axi4s_vid_out_0/s_axis_video_tready]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins rgb2dvi_1/vid_pVDE] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins rgb2dvi_1/vid_pData] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_pins rgb2dvi_1/vid_pHSync] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_pins rgb2dvi_1/vid_pVSync] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


