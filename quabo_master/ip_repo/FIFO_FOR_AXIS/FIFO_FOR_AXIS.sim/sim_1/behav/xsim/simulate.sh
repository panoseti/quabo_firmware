#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3_AR71948 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Oct 12 15:43:51 PDT 2019
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xsim sim_switch_behav -key {Behavioral:sim_1:Functional:sim_switch} -tclbatch sim_switch.tcl -log simulate.log
