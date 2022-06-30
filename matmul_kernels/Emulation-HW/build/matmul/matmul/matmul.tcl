catch {::common::set_param -quiet hls.xocc.mode csynth};
# 
# HLS run script generated by v++ compiler
# 

open_project matmul
set_top matmul
# v++ -g, -D, -I, --advanced.prop kernel.matmul.kernel_flags
add_files "/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp" -cflags " -g -I /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src "
open_solution -flow_target vitis solution
set_part xc7z045ffg900-2
create_clock -period 100.000000MHz -name default
# v++ -g or --profile_kernel stall
config_rtl -kernel_profile
# v++ --advanced.param compiler.hlsDataflowStrictMode
config_dataflow -strict_mode warning
# v++ -g
config_debug -enable
# v++ --advanced.param compiler.deadlockDetection
config_export -deadlock_detection none
# v++ --advanced.param compiler.axiDeadLockFree
config_interface -m_axi_conservative_mode=1
config_interface -m_axi_addr64=0
# v++ --hls.max_memory_ports
config_interface -m_axi_auto_max_ports=1
# v++ --hls.memory_port_data_width
config_interface -m_axi_min_bitwidth 128
# v++ --hls.memory_port_data_width
config_interface -m_axi_max_bitwidth 128
config_export -format xo -ipname matmul
csynth_design
export_design
close_project
puts "HLS completed successfully"
exit
