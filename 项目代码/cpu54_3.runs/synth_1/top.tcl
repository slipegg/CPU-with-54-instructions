# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath D:/ModelSim/win32pe
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/vivadocode/cpu54_3/cpu54_3.cache/wt [current_project]
set_property parent.project_path D:/vivadocode/cpu54_3/cpu54_3.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files c:/Users/javen/Desktop/网课/大二下/计算机组成原理/51条CPU/mips_54_mars_simulate_student_ForWeb.coe
add_files c:/Users/javen/Desktop/test.coe
read_verilog -library xil_defaultlib {
  C:/Users/javen/Desktop/54/seg7x16.v
  C:/Users/javen/Desktop/54/top.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/vivadocode/cpu54_3/cpu54_3.srcs/constrs_1/new/t.xdc
set_property used_in_implementation false [get_files D:/vivadocode/cpu54_3/cpu54_3.srcs/constrs_1/new/t.xdc]


synth_design -top top -part xc7a100tcsg324-1


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
