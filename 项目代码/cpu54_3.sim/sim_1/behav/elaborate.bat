@echo off
set xv_path=D:\\xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto c964ae086c9c48d0b5df77beceeeca9a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L dist_mem_gen_v8_0_10 -L unisims_ver -L unimacro_ver -L secureip --snapshot top_tb_behav xil_defaultlib.top_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
