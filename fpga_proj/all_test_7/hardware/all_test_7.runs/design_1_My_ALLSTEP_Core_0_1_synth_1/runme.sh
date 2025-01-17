#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/siyun/xilinx/SDK/2017.4/bin:/home/siyun/xilinx/Vivado/2017.4/ids_lite/ISE/bin/lin64:/home/siyun/xilinx/Vivado/2017.4/bin
else
  PATH=/home/siyun/xilinx/SDK/2017.4/bin:/home/siyun/xilinx/Vivado/2017.4/ids_lite/ISE/bin/lin64:/home/siyun/xilinx/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/siyun/xilinx/Vivado/2017.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/siyun/xilinx/Vivado/2017.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/siyun/vivado_workspace/all_test_7/hardware/all_test_7.runs/design_1_My_ALLSTEP_Core_0_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_My_ALLSTEP_Core_0_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_My_ALLSTEP_Core_0_1.tcl
