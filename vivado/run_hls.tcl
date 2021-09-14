############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project -reset hls_prj
set_top dut 

############################################################
# dut files
############################################################
add_files ../hls/dut.cc -cflags "-I../src/ -I../tb/"

############################################################
# testbench files
############################################################
add_files -tb ../tb/main.cc     -cflags "-I../src/ -I../tb/"

############################################################
# in/output data files
############################################################


open_solution "solution1"
set_part {xcu250-figd2104-2L-e}

create_clock -period 3.333 -name default
config_sdx -target none
#config_rtl -prefix "prefix_"
config_rtl -encoding onehot -kernel_profile=0 -module_auto_prefix=0 -mult_keep_attribute=0 -reset control -reset_async=0 -reset_level high -verbose=0
set_clock_uncertainty 12.5%


csim_design
#csynth_design
#cosim_design
#cosim_design -trace_level all -argv {-p ../../../../../build/rdo -n 1}
#export_design -format ip_catalog
#export_design -flow impl -rtl verilog -format ip_catalog
#export_design -flow syn -rtl verilog -format syn_dcp 

exit
