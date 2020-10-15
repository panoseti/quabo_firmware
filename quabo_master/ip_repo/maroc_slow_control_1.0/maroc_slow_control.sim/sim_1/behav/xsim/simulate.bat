@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Sep 03 11:13:44 -0700 2018
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim maroc_sc_t_behav -key {Behavioral:sim_1:Functional:maroc_sc_t} -tclbatch maroc_sc_t.tcl -view C:/XilinxProjects/PANOSETI/QuadrantBoard/ip_repo/maroc_slow_control_1.0/maroc_slow_control.sim/sim_1/behav/maroc_sc_t_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
