# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Download/static_pipline_CPU/static_pipline_CPU.cache/wt [current_project]
set_property parent.project_path C:/Download/static_pipline_CPU/static_pipline_CPU.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files {{C:/Users/YY  WYX/Desktop/Apoclyps.coe}}
read_verilog -library xil_defaultlib {
  C:/Download/static_pipline_CPU/static_pipline_CPU.srcs/sources_1/new/inst_decoder.v
  C:/Download/static_pipline_CPU/static_pipline_CPU.srcs/sources_1/new/IF_ID.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Download/static_pipline_CPU/static_pipline_CPU.srcs/constrs_1/new/xdc.xdc
set_property used_in_implementation false [get_files C:/Download/static_pipline_CPU/static_pipline_CPU.srcs/constrs_1/new/xdc.xdc]


synth_design -top IF_ID -part xc7a100tcsg324-1


write_checkpoint -force -noxdef IF_ID.dcp

catch { report_utilization -file IF_ID_utilization_synth.rpt -pb IF_ID_utilization_synth.pb }
