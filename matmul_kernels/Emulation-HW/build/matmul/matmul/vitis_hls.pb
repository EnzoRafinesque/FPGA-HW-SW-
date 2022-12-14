
c
IRunning '/tools/Xilinx/Vitis_HLS/2021.2/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px 

wFor user 'mdu' on host 'mdu-virtual-machine' (Linux_x86_64 version 5.4.0-120-generic) on Fri Jul 01 15:57:16 CEST 2022
*HLSZ200-10h px 
3
On os Ubuntu 18.04.3 LTS
*HLSZ200-10h px 
~
dIn directory '/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul'
*HLSZ200-10h px 
<
!Sourcing Tcl script 'matmul.tcl'
*HLSZ200-150h px 
[
Running: %s
2001510*hls2(
open_project matmul 2default:defaultZ200-1510h px 

|Creating and opening project '/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul'.
*HLSZ200-10h px 
V
Running: %s
2001510*hls2#
set_top matmul 2default:defaultZ200-1510h px 
æ
Running: %s
2001510*hls2²
add_files /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp -cflags  -g -I /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src  2default:defaultZ200-1510h px 

oAdding design file '/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp' to the project
*HLSZ200-10h px 
q
Running: %s
2001510*hls2>
*open_solution -flow_target vitis solution 2default:defaultZ200-1510h px 
¡
Creating and opening solution '/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution'.
*HLSZ200-10h px 
×
Using %sflow_target '%s'
2001505*hls2
 2default:default2
vitis2default:defaultZ200-1505h pxeFor help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-1505.html 
°
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default26
"config_interface -m_axi_latency=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_alignment_byte_size=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_max_widen_bitwidth=5122default:defaultZ200-435h px 
®
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default24
 config_rtl -register_reset_num=32default:defaultZ200-435h px 
`
Running: %s
2001510*hls2-
set_part xc7z045ffg900-2 2default:defaultZ200-1510h px 
h
Setting target device to '%s'2001611*hls2$
xc7z045-ffg900-22default:defaultZ200-1611h px 
x
Running: %s
2001510*hls2E
1create_clock -period 100.000000MHz -name default 2default:defaultZ200-1510h px 
M
2Setting up clock 'default' with a period of 10ns.
*SYNZ201-201h px 
b
Running: %s
2001510*hls2/
config_rtl -kernel_profile 2default:defaultZ200-1510h px 
l
Running: %s
2001510*hls29
%config_dataflow -strict_mode warning 2default:defaultZ200-1510h px 
\
Running: %s
2001510*hls2)
config_debug -enable 2default:defaultZ200-1510h px 
n
Running: %s
2001510*hls2;
'config_export -deadlock_detection none 2default:defaultZ200-1510h px 
s
Running: %s
2001510*hls2@
,config_interface -m_axi_conservative_mode=1 2default:defaultZ200-1510h px 
h
Running: %s
2001510*hls25
!config_interface -m_axi_addr64=0 2default:defaultZ200-1510h px 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_auto_max_ports=1 2default:defaultZ200-1510h px 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_min_bitwidth 512 2default:defaultZ200-1510h px 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_max_bitwidth 512 2default:defaultZ200-1510h px 
o
Running: %s
2001510*hls2<
(config_export -format xo -ipname matmul 2default:defaultZ200-1510h px 
U
Running: %s
2001510*hls2"
csynth_design 2default:defaultZ200-1510h px 
Å
©Finished File checks and directory preparation: CPU user time: 0.01 seconds. CPU system time: 0 seconds. Elapsed time: 0.01 seconds; current allocated memory: 1.120 GB.
*HLSZ200-111h px 

hAnalyzing design file '/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp' ... 
*HLSZ200-10h px 
Ë
¯Finished Source Code Analysis and Preprocessing: CPU user time: 6.41 seconds. CPU system time: 0.66 seconds. Elapsed time: 5.92 seconds; current allocated memory: 211.215 MB.
*HLSZ200-111h px 
m
/Using interface defaults for '%s' flow target.
200777*hls2
Vitis2default:defaultZ200-777h px 
J
/Auto array partition mode is set into default.
*HLSZ214-284h px 
²
Aggregating maxi variable 'out_r' with compact=none mode in 16-bits (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:16:0)
*HLSZ214-241h px 
°
Aggregating maxi variable 'in2' with compact=none mode in 16-bits (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:16:0)
*HLSZ214-241h px 
°
Aggregating maxi variable 'in1' with compact=none mode in 16-bits (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:16:0)
*HLSZ214-241h px 
J
/Starting automatic array partition analysis...
*HLSZ214-270h px 
ë
ÏMultiple burst reads of length 128 and bit width 512 has been inferred on bundle 'gmem0'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:34:9)
*HLSZ214-115h px 
ë
ÏMultiple burst reads of length 128 and bit width 512 has been inferred on bundle 'gmem1'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:45:9)
*HLSZ214-115h px 
ì
ÐMultiple burst writes of length 128 and bit width 512 has been inferred on bundle 'gmem0'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:90:9)
*HLSZ214-115h px 
¿
£Inlining function '_llvm.fpga.pack.none.i16.s_struct.ap_int<16>s' into 'matmul' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:96:24)
*HLSZ214-131h px 
É
­Finished Compiling Optimization and Transform: CPU user time: 5.62 seconds. CPU system time: 0.49 seconds. Elapsed time: 6.38 seconds; current allocated memory: 220.223 MB.
*HLSZ200-111h px 
¬
Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0 seconds; current allocated memory: 220.223 MB.
*HLSZ200-111h px 
<
"Starting code transformations ...
*HLSZ200-10h px 
¸
Finished Standard Transforms: CPU user time: 0.21 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.24 seconds; current allocated memory: 225.641 MB.
*HLSZ200-111h px 
8
Checking synthesizability ...
*HLSZ200-10h px 
¾
¢Finished Checking Synthesizability: CPU user time: 0.24 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.28 seconds; current allocated memory: 228.664 MB.
*HLSZ200-111h px 
ª
Pipelining loop 'readA' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:34) in function 'matmul' automatically.
*XFORMZ203-510h px 
ª
Pipelining loop 'readB' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:45) in function 'matmul' automatically.
*XFORMZ203-510h px 
¬
Pipelining loop 'nopart2' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:72) in function 'matmul' automatically.
*XFORMZ203-510h px 
«
Pipelining loop 'writeC' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:90) in function 'matmul' automatically.
*XFORMZ203-510h px 
Á
£Unrolling all sub-loops inside loop 'nopart2' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:72) in function 'matmul' for pipelining.
*XFORMZ203-502h px 
ñ
1Unrolling loop %s completely with a factor of %s.200489*hls2
n'nopart3' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:76) in function 'matmul'2default:default2
642default:defaultZ200-489h px 

Partitioning array 'temp_sum.V' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:29) automatically.
*XFORMZ203-102h px 
Ë
¯Finished Loop, function and other optimizations: CPU user time: 0.94 seconds. CPU system time: 0.02 seconds. Elapsed time: 1.01 seconds; current allocated memory: 257.867 MB.
*HLSZ200-111h px 
¨
Flattening a loop nest 'nopart1' (/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:68:22) in function 'matmul'.
*XFORMZ203-541h px 
Ñ
-Inferring partial write operation for '%s' %s200472*hls2
C.V2default:default2f
R(/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:82:57)2default:defaultZ200-472h px 
Ñ
-Inferring partial write operation for '%s' %s200472*hls2
B.V2default:default2f
R(/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:51:21)2default:defaultZ200-472h px 
Ñ
-Inferring partial write operation for '%s' %s200472*hls2
A.V2default:default2f
R(/home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:40:21)2default:defaultZ200-472h px 
»
Finished Architecture Synthesis: CPU user time: 1.46 seconds. CPU system time: 0.03 seconds. Elapsed time: 1.59 seconds; current allocated memory: 294.898 MB.
*HLSZ200-111h px 
:
 Starting hardware synthesis ...
*HLSZ200-10h px 
4
Synthesizing 'matmul' ...
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
J
0-- Implementing module 'matmul_Pipeline_readA' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
5
Pipelining loop 'readA'.
*SCHEDZ204-61h px 
Ï
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
32default:default2 
loop 'readA'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
®
Finished Scheduling: CPU user time: 0.2 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.25 seconds; current allocated memory: 297.605 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¬
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 297.605 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
J
0-- Implementing module 'matmul_Pipeline_readB' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
ª
lAutomatically inferring RAM_1WNR storage type for array '%s'. Use bind_storage pragma to override this type.2001457*hls2
B_V2default:defaultZ200-1457h px 
5
Pipelining loop 'readB'.
*SCHEDZ204-61h px 
Ï
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
32default:default2 
loop 'readB'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
®
Finished Scheduling: CPU user time: 0.09 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.1 seconds; current allocated memory: 298.027 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 298.027 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
T
:-- Implementing module 'matmul_Pipeline_nopart1_nopart2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
 
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
	mul_ln8852default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_12default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_22default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_32default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_42default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_52default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_62default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_72default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_82default:default2
32default:defaultZ200-486h px 
¢
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2
mul_ln885_92default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_102default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_112default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_122default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_132default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_142default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_152default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_162default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_172default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_182default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_192default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_202default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_212default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_222default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_232default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_242default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_252default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_262default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_272default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_282default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_292default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_302default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_312default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_322default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_332default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_342default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_352default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_362default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_372default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_382default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_392default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_402default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_412default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_422default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_432default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_442default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_452default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_462default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_472default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_482default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_492default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_502default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_512default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_522default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_532default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_542default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_552default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_562default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_572default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_582default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_592default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_602default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_612default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_622default:default2
32default:defaultZ200-486h px 
£
GThe DSP48 latency (root=%s) is changed to %s to set all DSP registers.
200486*hls2 
mul_ln885_632default:default2
32default:defaultZ200-486h px 
ª
lAutomatically inferring RAM_1WNR storage type for array '%s'. Use bind_storage pragma to override this type.2001457*hls2
B_V2default:defaultZ200-1457h px 
?
#Pipelining loop 'nopart1_nopart2'.
*SCHEDZ204-61h px 
ÿ
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls23
matmul_Pipeline_nopart1_nopart22default:default2*
loop 'nopart1_nopart2'2default:default2C
/'load' operation ('B_V_load_16') on array 'B_V'2default:default2
ydue to limited memory ports (II = 1). Please consider using a memory core with more ports or partitioning the array 'B_V'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-885.html 
ÿ
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls23
matmul_Pipeline_nopart1_nopart22default:default2*
loop 'nopart1_nopart2'2default:default2C
/'load' operation ('B_V_load_33') on array 'B_V'2default:default2
ydue to limited memory ports (II = 2). Please consider using a memory core with more ports or partitioning the array 'B_V'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-885.html 
ÿ
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls23
matmul_Pipeline_nopart1_nopart22default:default2*
loop 'nopart1_nopart2'2default:default2C
/'load' operation ('B_V_load_50') on array 'B_V'2default:default2
ydue to limited memory ports (II = 3). Please consider using a memory core with more ports or partitioning the array 'B_V'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-885.html 
÷
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls23
matmul_Pipeline_nopart1_nopart22default:default2*
loop 'nopart1_nopart2'2default:default2º
¥'store' operation ('C_V_addr_7_write_ln82', /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:82) of variable 'temp_sum.V[7]' on array 'C_V'2default:default2
ydue to limited memory ports (II = 4). Please consider using a memory core with more ports or partitioning the array 'C_V'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-885.html 
ú
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls23
matmul_Pipeline_nopart1_nopart22default:default2*
loop 'nopart1_nopart2'2default:default2¼
§'store' operation ('C_V_addr_37_write_ln82', /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:82) of variable 'temp_sum.V[37]' on array 'C_V'2default:default2
zdue to limited memory ports (II = 19). Please consider using a memory core with more ports or partitioning the array 'C_V'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-885.html 
ú
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls23
matmul_Pipeline_nopart1_nopart22default:default2*
loop 'nopart1_nopart2'2default:default2¼
§'store' operation ('C_V_addr_53_write_ln82', /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:82) of variable 'temp_sum.V[53]' on array 'C_V'2default:default2
zdue to limited memory ports (II = 27). Please consider using a memory core with more ports or partitioning the array 'C_V'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-885.html 
ú
@The II Violation in module '%s' (%s): Unable to schedule %s %s.
200885*hls23
matmul_Pipeline_nopart1_nopart22default:default2*
loop 'nopart1_nopart2'2default:default2¼
§'store' operation ('C_V_addr_61_write_ln82', /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp:82) of variable 'temp_sum.V[61]' on array 'C_V'2default:default2
zdue to limited memory ports (II = 31). Please consider using a memory core with more ports or partitioning the array 'C_V'2default:defaultZ200-885h pxcFor help on HLS 200-885 see www.xilinx.com/cgi-bin/docs/rdoc?v=2021.2;t=hls+guidance;d=200-885.html 
Û
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
322default:default2
362default:default2*
loop 'nopart1_nopart2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 5.94 seconds. CPU system time: 0.16 seconds. Elapsed time: 6.66 seconds; current allocated memory: 309.129 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 1 seconds. CPU system time: 0.12 seconds. Elapsed time: 2.13 seconds; current allocated memory: 309.129 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
K
1-- Implementing module 'matmul_Pipeline_writeC' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
6
Pipelining loop 'writeC'.
*SCHEDZ204-61h px 
Ð
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
42default:default2!
loop 'writeC'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¯
Finished Scheduling: CPU user time: 0.87 seconds. CPU system time: 0.12 seconds. Elapsed time: 1.09 seconds; current allocated memory: 309.129 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¨
Finished Binding: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.1 seconds; current allocated memory: 309.129 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
;
!-- Implementing module 'matmul' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
«
Finished Scheduling: CPU user time: 0.4 seconds. CPU system time: 0 seconds. Elapsed time: 0.42 seconds; current allocated memory: 309.129 MB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.95 seconds. CPU system time: 0.01 seconds. Elapsed time: 1 seconds; current allocated memory: 309.129 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
6-- Generating RTL for module 'matmul_Pipeline_readA' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Ü
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2)
matmul_Pipeline_readA2default:default2
readA2default:default2!
loop pipeline2default:defaultZ200-1030h px 
i
LSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARVALID' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARADDR' to 0.
*RTGENZ206-101h px 
f
ISetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARID' to 0.
*RTGENZ206-101h px 
g
JSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARLEN' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARSIZE' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARBURST' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARLOCK' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARCACHE' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARPROT' to 0.
*RTGENZ206-101h px 
g
JSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARQOS' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARREGION' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readA/m_axi_gmem0_ARUSER' to 0.
*RTGENZ206-101h px 
V
9Finished creating RTL model for 'matmul_Pipeline_readA'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.51 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.51 seconds; current allocated memory: 309.129 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
6-- Generating RTL for module 'matmul_Pipeline_readB' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Ü
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2)
matmul_Pipeline_readB2default:default2
readB2default:default2!
loop pipeline2default:defaultZ200-1030h px 
i
LSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARVALID' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARADDR' to 0.
*RTGENZ206-101h px 
f
ISetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARID' to 0.
*RTGENZ206-101h px 
g
JSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARLEN' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARSIZE' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARBURST' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARLOCK' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARCACHE' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARPROT' to 0.
*RTGENZ206-101h px 
g
JSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARQOS' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARREGION' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_readB/m_axi_gmem1_ARUSER' to 0.
*RTGENZ206-101h px 
V
9Finished creating RTL model for 'matmul_Pipeline_readB'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.25 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.32 seconds; current allocated memory: 309.176 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Z
@-- Generating RTL for module 'matmul_Pipeline_nopart1_nopart2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ð
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls23
matmul_Pipeline_nopart1_nopart22default:default2#
nopart1_nopart22default:default2!
loop pipeline2default:defaultZ200-1030h px 
f
IGenerating core module 'mac_muladd_16s_16s_16ns_16_4_1': 64 instance(s).
*RTGENZ206-100h px 
`
CFinished creating RTL model for 'matmul_Pipeline_nopart1_nopart2'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.44 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.63 seconds; current allocated memory: 317.355 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Q
7-- Generating RTL for module 'matmul_Pipeline_writeC' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Þ
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2*
matmul_Pipeline_writeC2default:default2
writeC2default:default2!
loop pipeline2default:defaultZ200-1030h px 
j
MSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWVALID' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWADDR' to 0.
*RTGENZ206-101h px 
g
JSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWID' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWLEN' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWSIZE' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWBURST' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWLOCK' to 0.
*RTGENZ206-101h px 
j
MSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWCACHE' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWPROT' to 0.
*RTGENZ206-101h px 
h
KSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWQOS' to 0.
*RTGENZ206-101h px 
k
NSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWREGION' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_AWUSER' to 0.
*RTGENZ206-101h px 
i
LSetting dangling out port 'matmul_Pipeline_writeC/m_axi_gmem0_BREADY' to 0.
*RTGENZ206-101h px 
W
:Finished creating RTL model for 'matmul_Pipeline_writeC'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 2.37 seconds. CPU system time: 0.15 seconds. Elapsed time: 2.88 seconds; current allocated memory: 336.445 MB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
A
'-- Generating RTL for module 'matmul' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
f
IDesign contains AXI ports. Reset is fixed to synchronous and active low.
*RTGENZ206-101h px 
W
:Setting interface mode on port 'matmul/gmem0' to 'm_axi'.
*RTGENZ206-500h px 
W
:Setting interface mode on port 'matmul/gmem1' to 'm_axi'.
*RTGENZ206-500h px 
c
FSetting interface mode on port 'matmul/in1' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
c
FSetting interface mode on port 'matmul/in2' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
e
HSetting interface mode on port 'matmul/out_r' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
i
LSetting interface mode on function 'matmul' to 's_axilite & ap_ctrl_chain'.
*RTGENZ206-500h px 
}
`Bundling port 'in1', 'in2', 'out_r', 'return' and 'ap_local_deadlock' to AXI-Lite port control.
*RTGENZ206-100h px 
G
*Finished creating RTL model for 'matmul'.
*RTGENZ206-100h px 
·
Finished Creating RTL model: CPU user time: 0.25 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.26 seconds; current allocated memory: 337.699 MB.
*HLSZ200-111h px 
f
JImplementing memory 'matmul_A_V_RAM_AUTO_1R1W_ram (RAM)' using auto RAMs.
*RTMGZ210-278h px 
p
TImplementing memory 'matmul_B_V_RAM_1WNR_AUTO_1R1W_ram (RAM_1WnR)' using auto RAMs.
*RTMGZ210-278h px 
f
JImplementing memory 'matmul_C_V_RAM_AUTO_1R1W_ram (RAM)' using auto RAMs.
*RTMGZ210-278h px 
¾
¢Finished Generating all RTL models: CPU user time: 2.04 seconds. CPU system time: 0.04 seconds. Elapsed time: 2.18 seconds; current allocated memory: 343.672 MB.
*HLSZ200-111h px 
£
hDesign has inferred MAXI bursts%s, see Vitis HLS GUI synthesis summary report for detailed information.
2001603*hls2
 2default:defaultZ200-1603h px 
º
Finished Updating report files: CPU user time: 1.35 seconds. CPU system time: 0.03 seconds. Elapsed time: 1.44 seconds; current allocated memory: 353.289 MB.
*HLSZ200-111h px 
<
 Generating VHDL RTL for matmul.
*VHDLZ208-304h px 
?
#Generating Verilog RTL for matmul.
*VLOGZ209-307h px 

**** Loop Constraint Status: %s200790*hls2<
(All loop constraints were NOT satisfied.2default:defaultZ200-790h px 
Z
**** Estimated Fmax: %s MHz200789*hls2
136.992default:defaultZ200-789h px 
¼
 Finished Command csynth_design CPU user time: 31.81 seconds. CPU system time: 1.99 seconds. Elapsed time: 35.61 seconds; current allocated memory: -793.672 MB.
*HLSZ200-111h px 
U
Running: %s
2001510*hls2"
export_design 2default:defaultZ200-1510h px 
8
Exporting RTL as a Vivado IP.
*IMPLZ213-8h px 

í
****** Vivado v2021.2 (64-bit)
  **** SW Build 3367213 on Tue Oct 19 02:47:39 MDT 2021
  **** IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
    ** Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

source run_ippack.tcl -notrace
*commonh px 
²
ipx::create_core: Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 2771.328 ; gain = 4.984 ; free physical = 7305 ; free virtual = 23384
*commonh px 
G
2INFO: [IP_Flow 19-234] Refreshing IP repositories
*commonh px 
O
:INFO: [IP_Flow 19-1704] No user IP repositories specified
*commonh px 
p
[INFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/tools/Xilinx/Vivado/2021.2/data/ip'.
*commonh px 
¼
¦Running package_xo -xo_path /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution/impl/export.xo -kernel_name matmul -kernel_xml /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution/impl/ip/../kernel/kernel.xml -kernel_files /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/src/krnl_matrixmul.cpp -ip_directory /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution/impl/ip/ip_unzip_dir -design_xml /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution/.autopilot/db/matmul.design.xml -debug_directory /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution/.debug -hls_directory /home/mdu/Desktop/work_repo/work_prj/matmul_kernels/Emulation-HW/build/matmul/matmul/matmul/solution/impl/ip/hls_files*commonh px 


*commonh px 
Y
DINFO: [Common 17-206] Exiting Vivado at Fri Jul  1 15:58:20 2022...
*commonh px 
p
Generated output file %s
200802*hls22
matmul/solution/impl/export.xo2default:defaultZ200-802h px 
¹
Finished Command export_design CPU user time: 27.47 seconds. CPU system time: 1.69 seconds. Elapsed time: 28.92 seconds; current allocated memory: 5.531 MB.
*HLSZ200-111h px 
6
HLS completed successfully
*HLSZ200-150h px 
¨
Total CPU user time: 62.57 seconds. Total CPU system time: 4.44 seconds. Total elapsed time: 67.4 seconds; peak allocated memory: 1.120 GB.
*HLSZ200-112h px 

Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Fri Jul  1 15:58:23 20222default:defaultZ17-206h px 


End Record