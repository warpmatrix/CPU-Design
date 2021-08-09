
################################################################
# This is a generated script based on design: BCDto7Seg
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
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BCDto7Seg_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name BCDto7Seg

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
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

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

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
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
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set BCD1 [ create_bd_port -dir I BCD1 ]
  set BCD2 [ create_bd_port -dir I BCD2 ]
  set BCD4 [ create_bd_port -dir I BCD4 ]
  set BCD8 [ create_bd_port -dir I BCD8 ]
  set D1 [ create_bd_port -dir O D1 ]
  set D2 [ create_bd_port -dir O D2 ]
  set D3 [ create_bd_port -dir O D3 ]
  set D4 [ create_bd_port -dir O D4 ]
  set D5 [ create_bd_port -dir O D5 ]
  set D6 [ create_bd_port -dir O D6 ]
  set D7 [ create_bd_port -dir O D7 ]
  set DigIn1 [ create_bd_port -dir I DigIn1 ]
  set DigIn2 [ create_bd_port -dir I DigIn2 ]
  set DigIn3 [ create_bd_port -dir I DigIn3 ]
  set DigIn4 [ create_bd_port -dir I DigIn4 ]
  set DigOut1 [ create_bd_port -dir O DigOut1 ]
  set DigOut2 [ create_bd_port -dir O DigOut2 ]
  set DigOut3 [ create_bd_port -dir O DigOut3 ]
  set DigOut4 [ create_bd_port -dir O DigOut4 ]

  # Create instance: BCD1_INV, and set properties
  set BCD1_INV [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_inv:1.0 BCD1_INV ]

  # Create instance: BCD2_INV, and set properties
  set BCD2_INV [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_inv:1.0 BCD2_INV ]

  # Create instance: BCD4_INV, and set properties
  set BCD4_INV [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_inv:1.0 BCD4_INV ]

  # Create instance: BCD8_INV, and set properties
  set BCD8_INV [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_inv:1.0 BCD8_INV ]

  # Create instance: D7_CA1, and set properties
  set D7_CA1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_nor3:1.0 D7_CA1 ]

  # Create instance: xup_and2_0, and set properties
  set xup_and2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and2:1.0 xup_and2_0 ]

  # Create instance: xup_and3_0, and set properties
  set xup_and3_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_0 ]

  # Create instance: xup_and3_1, and set properties
  set xup_and3_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_1 ]

  # Create instance: xup_and3_2, and set properties
  set xup_and3_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_2 ]

  # Create instance: xup_and3_3, and set properties
  set xup_and3_3 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_3 ]

  # Create instance: xup_and3_4, and set properties
  set xup_and3_4 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_4 ]

  # Create instance: xup_and3_5, and set properties
  set xup_and3_5 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_5 ]

  # Create instance: xup_and3_6, and set properties
  set xup_and3_6 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_6 ]

  # Create instance: xup_and3_7, and set properties
  set xup_and3_7 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_7 ]

  # Create instance: xup_and3_8, and set properties
  set xup_and3_8 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_8 ]

  # Create instance: xup_and3_9, and set properties
  set xup_and3_9 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_9 ]

  # Create instance: xup_and3_10, and set properties
  set xup_and3_10 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_10 ]

  # Create instance: xup_and3_11, and set properties
  set xup_and3_11 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_11 ]

  # Create instance: xup_and3_12, and set properties
  set xup_and3_12 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_12 ]

  # Create instance: xup_and4_0, and set properties
  set xup_and4_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_0 ]

  # Create instance: xup_and4_1, and set properties
  set xup_and4_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_1 ]

  # Create instance: xup_and4_2, and set properties
  set xup_and4_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_2 ]

  # Create instance: xup_and4_3, and set properties
  set xup_and4_3 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_3 ]

  # Create instance: xup_and4_4, and set properties
  set xup_and4_4 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_4 ]

  # Create instance: xup_and4_5, and set properties
  set xup_and4_5 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_5 ]

  # Create instance: xup_and4_6, and set properties
  set xup_and4_6 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_6 ]

  # Create instance: xup_and4_7, and set properties
  set xup_and4_7 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and4:1.0 xup_and4_7 ]

  # Create instance: xup_or2_0, and set properties
  set xup_or2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or2:1.0 xup_or2_0 ]

  # Create instance: xup_or3_0, and set properties
  set xup_or3_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or3:1.0 xup_or3_0 ]

  # Create instance: xup_or3_1, and set properties
  set xup_or3_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or3:1.0 xup_or3_1 ]

  # Create instance: xup_or3_2, and set properties
  set xup_or3_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or3:1.0 xup_or3_2 ]

  # Create instance: xup_or4_0, and set properties
  set xup_or4_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or4:1.0 xup_or4_0 ]

  # Create instance: xup_or4_1, and set properties
  set xup_or4_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or4:1.0 xup_or4_1 ]

  # Create instance: xup_or4_2, and set properties
  set xup_or4_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or4:1.0 xup_or4_2 ]

  # Create instance: xup_xor2_0, and set properties
  set xup_xor2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_0 ]

  # Create instance: xup_xor2_1, and set properties
  set xup_xor2_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_1 ]

  # Create port connections
  connect_bd_net -net BCD1_1 [get_bd_ports BCD1] [get_bd_pins BCD1_INV/a] [get_bd_pins xup_and2_0/b] [get_bd_pins xup_and3_1/b] [get_bd_pins xup_and3_10/c] [get_bd_pins xup_and3_12/c] [get_bd_pins xup_and3_4/c] [get_bd_pins xup_and3_7/c] [get_bd_pins xup_and3_9/c] [get_bd_pins xup_and4_0/d] [get_bd_pins xup_and4_2/d] [get_bd_pins xup_and4_5/d] [get_bd_pins xup_and4_6/d] [get_bd_pins xup_xor2_0/b]
  connect_bd_net -net BCD1_INV_y [get_bd_pins BCD1_INV/y] [get_bd_pins xup_and3_2/c] [get_bd_pins xup_and3_3/c] [get_bd_pins xup_and3_5/c] [get_bd_pins xup_and4_1/d] [get_bd_pins xup_and4_3/d] [get_bd_pins xup_and4_4/d] [get_bd_pins xup_and4_7/d]
  connect_bd_net -net BCD2_1 [get_bd_ports BCD2] [get_bd_pins BCD2_INV/a] [get_bd_pins D7_CA1/c] [get_bd_pins xup_and3_11/c] [get_bd_pins xup_and3_12/b] [get_bd_pins xup_and3_2/b] [get_bd_pins xup_and3_4/b] [get_bd_pins xup_and3_6/c] [get_bd_pins xup_and3_7/b] [get_bd_pins xup_and4_1/c] [get_bd_pins xup_and4_4/c] [get_bd_pins xup_and4_6/c] [get_bd_pins xup_xor2_1/a]
  connect_bd_net -net BCD2_INV_y [get_bd_pins BCD2_INV/y] [get_bd_pins xup_and3_0/b] [get_bd_pins xup_and3_8/c] [get_bd_pins xup_and3_9/b] [get_bd_pins xup_and4_0/c] [get_bd_pins xup_and4_2/c] [get_bd_pins xup_and4_3/c] [get_bd_pins xup_and4_5/c] [get_bd_pins xup_and4_7/c]
  connect_bd_net -net BCD4_1 [get_bd_ports BCD4] [get_bd_pins BCD4_INV/a] [get_bd_pins D7_CA1/b] [get_bd_pins xup_and3_2/a] [get_bd_pins xup_and3_3/b] [get_bd_pins xup_and3_5/b] [get_bd_pins xup_and3_6/b] [get_bd_pins xup_and3_7/a] [get_bd_pins xup_and3_8/b] [get_bd_pins xup_and4_0/b] [get_bd_pins xup_and4_3/b] [get_bd_pins xup_and4_5/b] [get_bd_pins xup_and4_6/b] [get_bd_pins xup_and4_7/b] [get_bd_pins xup_xor2_0/a] [get_bd_pins xup_xor2_1/b]
  connect_bd_net -net BCD4_INV_y [get_bd_pins BCD4_INV/y] [get_bd_pins xup_and3_10/b] [get_bd_pins xup_and3_11/b] [get_bd_pins xup_and3_9/a] [get_bd_pins xup_and4_1/b] [get_bd_pins xup_and4_2/b] [get_bd_pins xup_and4_4/b]
  connect_bd_net -net BCD8_1 [get_bd_ports BCD8] [get_bd_pins BCD8_INV/a] [get_bd_pins D7_CA1/a] [get_bd_pins xup_and3_1/a] [get_bd_pins xup_and3_3/a] [get_bd_pins xup_and3_4/a] [get_bd_pins xup_and3_5/a] [get_bd_pins xup_and3_6/a] [get_bd_pins xup_and4_4/a] [get_bd_pins xup_and4_5/a] [get_bd_pins xup_and4_7/a]
  connect_bd_net -net BCD8_INV_y [get_bd_pins BCD8_INV/y] [get_bd_pins xup_and2_0/a] [get_bd_pins xup_and3_0/a] [get_bd_pins xup_and3_10/a] [get_bd_pins xup_and3_11/a] [get_bd_pins xup_and3_12/a] [get_bd_pins xup_and3_8/a] [get_bd_pins xup_and4_0/a] [get_bd_pins xup_and4_1/a] [get_bd_pins xup_and4_2/a] [get_bd_pins xup_and4_3/a] [get_bd_pins xup_and4_6/a]
  connect_bd_net -net D7_CA1_y [get_bd_pins D7_CA1/y] [get_bd_pins xup_or3_1/a]
  connect_bd_net -net DigIn1_1 [get_bd_ports DigIn1] [get_bd_ports DigOut1]
  connect_bd_net -net DigIn2_1 [get_bd_ports DigIn2] [get_bd_ports DigOut2]
  connect_bd_net -net DigIn3_1 [get_bd_ports DigIn3] [get_bd_ports DigOut3]
  connect_bd_net -net DigIn4_1 [get_bd_ports DigIn4] [get_bd_ports DigOut4]
  connect_bd_net -net xup_and2_0_y [get_bd_pins xup_and2_0/y] [get_bd_pins xup_or3_0/c]
  connect_bd_net -net xup_and3_0_y [get_bd_pins xup_and3_0/y] [get_bd_pins xup_or2_0/a]
  connect_bd_net -net xup_and3_10_y [get_bd_pins xup_and3_10/y] [get_bd_pins xup_or4_0/a]
  connect_bd_net -net xup_and3_11_y [get_bd_pins xup_and3_11/y] [get_bd_pins xup_or4_0/b]
  connect_bd_net -net xup_and3_12_y [get_bd_pins xup_and3_12/y] [get_bd_pins xup_or4_0/c]
  connect_bd_net -net xup_and3_1_y [get_bd_pins xup_and3_1/y] [get_bd_pins xup_or2_0/b]
  connect_bd_net -net xup_and3_2_y [get_bd_pins xup_and3_2/y] [get_bd_pins xup_or4_2/b]
  connect_bd_net -net xup_and3_3_y [get_bd_pins xup_and3_3/y] [get_bd_pins xup_or4_2/c]
  connect_bd_net -net xup_and3_4_y [get_bd_pins xup_and3_4/y] [get_bd_pins xup_or4_2/d]
  connect_bd_net -net xup_and3_5_y [get_bd_pins xup_and3_5/y] [get_bd_pins xup_or3_2/a]
  connect_bd_net -net xup_and3_6_y [get_bd_pins xup_and3_6/y] [get_bd_pins xup_or3_2/b]
  connect_bd_net -net xup_and3_7_y [get_bd_pins xup_and3_7/y] [get_bd_pins xup_or4_1/c]
  connect_bd_net -net xup_and3_8_y [get_bd_pins xup_and3_8/y] [get_bd_pins xup_or3_0/a]
  connect_bd_net -net xup_and3_9_y [get_bd_pins xup_and3_9/y] [get_bd_pins xup_or3_0/b]
  connect_bd_net -net xup_and4_0_y [get_bd_pins xup_and4_0/y] [get_bd_pins xup_or4_2/a]
  connect_bd_net -net xup_and4_1_y [get_bd_pins xup_and4_1/y] [get_bd_pins xup_or3_2/c]
  connect_bd_net -net xup_and4_2_y [get_bd_pins xup_and4_2/y] [get_bd_pins xup_or4_1/a]
  connect_bd_net -net xup_and4_3_y [get_bd_pins xup_and4_3/y] [get_bd_pins xup_or4_1/b]
  connect_bd_net -net xup_and4_4_y [get_bd_pins xup_and4_4/y] [get_bd_pins xup_or4_1/d]
  connect_bd_net -net xup_and4_5_y [get_bd_pins xup_and4_5/y] [get_bd_pins xup_or4_0/d]
  connect_bd_net -net xup_and4_6_y [get_bd_pins xup_and4_6/y] [get_bd_pins xup_or3_1/b]
  connect_bd_net -net xup_and4_7_y [get_bd_pins xup_and4_7/y] [get_bd_pins xup_or3_1/c]
  connect_bd_net -net xup_or2_0_y [get_bd_ports D1] [get_bd_pins xup_or2_0/y]
  connect_bd_net -net xup_or3_0_y [get_bd_ports D5] [get_bd_pins xup_or3_0/y]
  connect_bd_net -net xup_or3_1_y [get_bd_ports D7] [get_bd_pins xup_or3_1/y]
  connect_bd_net -net xup_or3_2_y [get_bd_ports D3] [get_bd_pins xup_or3_2/y]
  connect_bd_net -net xup_or4_0_y [get_bd_ports D6] [get_bd_pins xup_or4_0/y]
  connect_bd_net -net xup_or4_1_y [get_bd_ports D4] [get_bd_pins xup_or4_1/y]
  connect_bd_net -net xup_or4_2_y [get_bd_ports D2] [get_bd_pins xup_or4_2/y]
  connect_bd_net -net xup_xor2_0_y [get_bd_pins xup_and3_0/c] [get_bd_pins xup_xor2_0/y]
  connect_bd_net -net xup_xor2_1_y [get_bd_pins xup_and3_1/c] [get_bd_pins xup_xor2_1/y]

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


