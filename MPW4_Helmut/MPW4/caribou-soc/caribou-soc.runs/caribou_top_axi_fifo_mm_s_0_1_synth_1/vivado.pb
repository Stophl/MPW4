
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:052

00:00:072

1569.2152
35.8282
438892
60236Z17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen2A
?/home/pct/Caribou/MPW4_Helmut/MPW3/ip_repo/control_register_1.02 
Can't find the specified path.Z19-2248h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen2,
*/home/pct/Caribou/MPW4_Helmut/MPW3/ip-repo2 
Can't find the specified path.Z19-2248h px� 
y
"Loaded Vivado IP repository '%s'.
1332*coregen20
./home/pct/Caribou/vivado/Vivado/2023.2/data/ipZ19-2313h px� 
s
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
caribou_top_axi_fifo_mm_s_0_1Z19-6924h px� 
�
Command: %s
53*	vivadotcl2r
psynth_design -top caribou_top_axi_fifo_mm_s_0_1 -part xc7z045ffg900-2 -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z045Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z045Z17-349h px� 
D
Loading part %s157*device2
xc7z045ffg900-2Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
P
#Helper process launched with PID %s4824*oasys2	
3086585Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:07 . Memory (MB): peak = 2411.168 ; gain = 404.684 ; free physical = 38636 ; free virtual = 54985
h px� 
�
synthesizing module '%s'638*oasys2
caribou_top_axi_fifo_mm_s_0_12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_fifo_mm_s_0_1/synth/caribou_top_axi_fifo_mm_s_0_1.vhd2
898@Z8-638h px� 
M
%s
*synth25
3	Parameter C_FAMILY bound to: zynq - type: string 
h p
x
� 
S
%s
*synth2;
9	Parameter C_S_AXI_ID_WIDTH bound to: 4 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_S_AXI_ADDR_WIDTH bound to: 32 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_S_AXI4_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_TX_FIFO_DEPTH bound to: 512 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_RX_FIFO_DEPTH bound to: 32768 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_TX_CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_RX_CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_TX_FIFO_PF_THRESHOLD bound to: 507 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_TX_FIFO_PE_THRESHOLD bound to: 5 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_RX_FIFO_PF_THRESHOLD bound to: 32000 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_RX_FIFO_PE_THRESHOLD bound to: 5 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_USE_TX_CUT_THROUGH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_DATA_INTERFACE_TYPE bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_TX_ENABLE_ECC bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_RX_ENABLE_ECC bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_TX_HAS_ECC_ERR_INJECT bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_RX_HAS_ECC_ERR_INJECT bound to: 0 - type: integer 
h p
x
� 
`
%s
*synth2H
F	Parameter C_BASEADDR bound to: 32'b01000011110001100000000000000000 
h p
x
� 
`
%s
*synth2H
F	Parameter C_HIGHADDR bound to: 32'b01000011110001101111111111111111 
h p
x
� 
e
%s
*synth2M
K	Parameter C_AXI4_BASEADDR bound to: 32'b10000000000000000001000000000000 
h p
x
� 
e
%s
*synth2M
K	Parameter C_AXI4_HIGHADDR bound to: 32'b10000000000000000010111111111111 
h p
x
� 
Q
%s
*synth29
7	Parameter C_HAS_AXIS_TID bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TDEST bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TUSER bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TSTRB bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TKEEP bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_AXIS_TID_WIDTH bound to: 4 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TDEST_WIDTH bound to: 4 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TUSER_WIDTH bound to: 4 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_USE_RX_CUT_THROUGH bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_TX_DATA bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_TX_CTRL bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_RX_DATA bound to: 1 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axi_fifo_mm_s2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
47142
U02
axi_fifo_mm_s2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_fifo_mm_s_0_1/synth/caribou_top_axi_fifo_mm_s_0_1.vhd2
2608@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
axi_fifo_mm_s2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
48788@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_lite_ipif2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
slave_attachment2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
address_decoder2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
	pselect_f2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	pselect_f2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized02�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized02
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized12
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized22�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized22
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized32�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized32
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized42�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized42
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized52�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized52
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized62�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized62
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized72�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized72
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized82�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized82
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized92�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized92
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized102�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized102
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized112�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized112
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized122�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized122
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized132�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized132
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized142�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized142
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized152�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized152
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized162�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized162
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized172�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized172
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized182�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized182
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized192�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized192
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
address_decoder2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-256h px� 
�
default block is never used226*oasys2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
25508@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
slave_attachment2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_lite_ipif2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-256h px� 
�
synthesizing module '%s'638*oasys2

ipic2axi_s2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
34928@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
fifo2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
30338@Z8-638h px� 
�
synthesizing module '%s'638*oasys2	
axis_fg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
27398@Z8-638h px� 
T
%s
*synth2<
:	Parameter CLOCKING_MODE bound to: COMMON - type: string 
h p
x
� 
U
%s
*synth2=
;	Parameter FIFO_MEMORY_TYPE bound to: BRAM - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter PACKET_FIFO bound to: false - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter FIFO_DEPTH bound to: 32768 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter TDATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter TID_WIDTH bound to: 4 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter TDEST_WIDTH bound to: 4 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter TUSER_WIDTH bound to: 4 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ECC_MODE bound to: NO_ECC - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter USE_ADV_FEATURES bound to: 1606 - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter WR_DATA_COUNT_WIDTH bound to: 16 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter RD_DATA_COUNT_WIDTH bound to: 16 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter PROG_FULL_THRESH bound to: 32000 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter PROG_EMPTY_THRESH bound to: 5 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter CDC_SYNC_STAGES bound to: 2 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xpm_fifo_axis2M
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23562
	COMP_FIFO2
xpm_fifo_axis2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
28068@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_axis2
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_sync_rst2
 2M
I/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_sync_rst2
 2
02
12M
I/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base2
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_memory_base2
 2S
O/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_memory_base2
 2
02
12S
O/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
default block is never used226*oasys2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12148@Z8-226h px� 
�
default block is never used226*oasys2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12818@Z8-226h px� 
�
default block is never used226*oasys2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13038@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_reg_bit2
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19148@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_reg_bit2
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19148@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_counter_updn2
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_counter_updn2
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_rst2
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_rst2
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized02
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized02
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized12
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized12
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized22
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized22
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base2
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_axis2
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
axis_fg2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
27398@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
fifo2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
30338@Z8-256h px� 
\
%s
*synth2D
B	Parameter FIFO_MEMORY_TYPE bound to: distributed - type: string 
h p
x
� 
V
%s
*synth2>
<	Parameter FIFO_WRITE_DEPTH bound to: 8192 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter WRITE_DATA_WIDTH bound to: 22 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter READ_MODE bound to: fwft - type: string 
h p
x
� 
T
%s
*synth2<
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter FULL_RESET_VALUE bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter USE_ADV_FEATURES bound to: 0 - type: string 
h p
x
� 
S
%s
*synth2;
9	Parameter READ_DATA_WIDTH bound to: 22 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter WR_DATA_COUNT_WIDTH bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter PROG_FULL_THRESH bound to: 10 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter RD_DATA_COUNT_WIDTH bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter PROG_EMPTY_THRESH bound to: 10 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
h p
x
� 
O
%s
*synth27
5	Parameter ECC_MODE bound to: no_ecc - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xpm_fifo_sync2M
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19622
COMP_rx_len_fifo2
xpm_fifo_sync2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
45478@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_sync2
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19628@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base__parameterized02
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
xpm_memory_base__parameterized02
 2S
O/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_memory_base__parameterized02
 2
02
12S
O/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
default block is never used226*oasys2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12148@Z8-226h px� 
�
default block is never used226*oasys2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12818@Z8-226h px� 
�
default block is never used226*oasys2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13038@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized32
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized32
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized42
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized42
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized52
 2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized52
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base__parameterized02
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_sync2
 2
02
12O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19628@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

ipic2axi_s2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
34928@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_fifo_mm_s2
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
48788@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
caribou_top_axi_fifo_mm_s_0_12
02
12�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_fifo_mm_s_0_1/synth/caribou_top_axi_fifo_mm_s_0_1.vhd2
898@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
is_read_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
24478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
is_write_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
24488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
'gen_rd_b.gen_doutb_pipe.enb_pipe_reg[0]2S
O/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
30698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gdvld.data_valid_std_reg2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
5448@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gen_fwft.empty_fwft_fb_reg2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13988@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
'gen_rd_b.gen_doutb_pipe.enb_pipe_reg[0]2S
O/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
30698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gen_fwft.empty_fwft_fb_reg2O
K/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13988@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_channel_reset_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39538@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_wr_data_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_sb_wr_en_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39568@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_wr_en_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39578@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_ip2bus_data_mux_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39628@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rd_decode_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39658@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_dest_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39688@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_ecc_ec_reset_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_injsbiterr_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39708@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_injdbiterr_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39718@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rx_ecc_ec_reset_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39728@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.rx_ecc1_cntr_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
44618@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.rx_ecc2_cntr_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
44768@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.rx_partial_pkt_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
44928@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.sig_rxd_dbiterr_d1_reg2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
43218@Z8-6014h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
rd_clk2
xpm_fifo_rstZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sleep2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rsta2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
regcea2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterra2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterra2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
clkb2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
web[0]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[21]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[20]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[19]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[18]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[17]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[16]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[15]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[14]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[13]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[12]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[11]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[10]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[9]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[8]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[7]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[6]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[5]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[4]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[3]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[2]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[1]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[0]2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterrb2!
xpm_memory_base__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterrb2!
xpm_memory_base__parameterized0Z8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
sleep2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
rsta2
xpm_memory_baseZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
regcea2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterra2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterra2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
clkb2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[52]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[51]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[50]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[49]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[48]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[47]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[46]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[45]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[44]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[43]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[42]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[41]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[40]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[39]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[38]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[37]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[36]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[35]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[34]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[33]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[32]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[31]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[30]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[29]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[28]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[27]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[26]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[25]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[24]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[23]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[22]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[21]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[20]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[19]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[18]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[17]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[16]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[15]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[14]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[13]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[12]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[11]2
xpm_memory_baseZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

dinb[10]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[9]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[8]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[7]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[6]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[5]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[4]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[3]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[2]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[1]2
xpm_memory_baseZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2	
dinb[0]2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectsbiterrb2
xpm_memory_baseZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
injectdbiterrb2
xpm_memory_baseZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_aclk2
xpm_fifo_axisZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
rd_en2
fifoZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
mm2s_tstrb[3]2
fifoZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
mm2s_tstrb[2]2
fifoZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
mm2s_tstrb[1]2
fifoZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
mm2s_tstrb[0]2
fifoZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
mm2s_tdest[3]2
fifoZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:14 . Memory (MB): peak = 2643.793 ; gain = 637.309 ; free physical = 36218 ; free virtual = 52571
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:14 . Memory (MB): peak = 2646.762 ; gain = 640.277 ; free physical = 36216 ; free virtual = 52569
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:14 . Memory (MB): peak = 2646.762 ; gain = 640.277 ; free physical = 36216 ; free virtual = 52569
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.022

2646.7622
0.0002
362142
52567Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_fifo_mm_s_0_1/caribou_top_axi_fifo_mm_s_0_1_ooc.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_fifo_mm_s_0_1/caribou_top_axi_fifo_mm_s_0_1_ooc.xdc2
U0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2x
t/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/caribou_top_axi_fifo_mm_s_0_1_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2x
t/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/caribou_top_axi_fifo_mm_s_0_1_synth_1/dont_touch.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2W
U/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst_axis.tcl21
/.Xil/caribou_top_axi_fifo_mm_s_0_1_propImpl.xdcZ1-236h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2R
P/home/pct/Caribou/vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl21
/.Xil/caribou_top_axi_fifo_mm_s_0_1_propImpl.xdcZ1-236h px� 
Z
2%s XPM XDC files have been applied to the design.
665*project2
3Z1-1714h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2760.2382
0.0002
360112
52365Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.022
00:00:00.392

2760.2732
0.0002
360012
52356Z17-722h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:22 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 35956 ; free virtual = 52312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z045ffg900-2
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:22 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 35956 ; free virtual = 52312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:22 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 35956 ; free virtual = 52312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
slave_attachmentZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_fwft.curr_fwft_state_reg2
xpm_fifo_baseZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_fwft.curr_fwft_state_reg2
xpm_fifo_base__parameterized0Z8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 sm_idle |                             0010 |                               00
h p
x
� 
y
%s
*synth2a
_                 sm_read |                             1000 |                               01
h p
x
� 
y
%s
*synth2a
_                sm_write |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                 sm_resp |                             0001 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
slave_attachmentZ8-3354h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 invalid |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            stage1_valid |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_       both_stages_valid |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_            stage2_valid |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_fwft.curr_fwft_state_reg2

sequential2
xpm_fifo_baseZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 invalid |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            stage1_valid |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_       both_stages_valid |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_            stage2_valid |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_fwft.curr_fwft_state_reg2

sequential2
xpm_fifo_base__parameterized0Z8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:23 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 35952 ; free virtual = 52310
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   15 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   15 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   14 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   13 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit       Adders := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               53 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               22 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               17 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	               15 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	               14 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               13 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 68    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
Z
%s
*synth2B
@	            1696K Bit	(32768 X 53 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	  12 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input   22 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	  12 Input   17 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  11 Input   17 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 64    
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 14    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 68    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	  11 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	  12 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	  17 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
t
%s
*synth2\
ZPart Resources:
DSPs: 900 (col length:140)
BRAMs: 1090 (col length: RAMB18 140 RAMB36 70)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:28 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 36823 ; free virtual = 53183
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
R
%s*synth2:
8
Block RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|Module Name                                                                                                                       | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|U0/\COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 32 K x 53(NO_CHANGE)   | W |   | 32 K x 53(NO_CHANGE)   |   | R | Port A and B     | 0      | 53     | 
h px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+----------------+
h px� 
�
%s*synth2�
�|Module Name                                                                                     | RTL Object                       | Inference      | Size (Depth x Width) | Primitives     | 
h px� 
�
%s*synth2�
�+------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+----------------+
h px� 
�
%s*synth2�
�|U0/\COMP_IPIC2AXI_S/grxd.COMP_rx_len_fifo /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 8 K x 22             | RAM64M x 1024  | 
h px� 
�
%s*synth2�
�+------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+----------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:32 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 36690 ; free virtual = 53048
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:33 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37095 ; free virtual = 53454
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!
Block RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|Module Name                                                                                                                       | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|U0/\COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 32 K x 53(NO_CHANGE)   | W |   | 32 K x 53(NO_CHANGE)   |   | R | Port A and B     | 0      | 53     | 
h p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+----------------+
h p
x
� 
�
%s
*synth2�
�|Module Name                                                                                     | RTL Object                       | Inference      | Size (Depth x Width) | Primitives     | 
h p
x
� 
�
%s
*synth2�
�+------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+----------------+
h p
x
� 
�
%s
*synth2�
�|U0/\COMP_IPIC2AXI_S/grxd.COMP_rx_len_fifo /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 8 K x 22             | RAM64M x 1024  | 
h p
x
� 
�
%s
*synth2�
�+------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+----------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_322
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_332
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_342
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_352
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_362
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_372
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_382
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_392
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_402
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_412
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_422
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_432
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_442
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_452
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_462
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_472
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_482
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_492
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_502
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_512
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:35 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 36975 ; free virtual = 53334
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37084 ; free virtual = 53444
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37084 ; free virtual = 53444
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37085 ; free virtual = 53444
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37085 ; free virtual = 53444
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37085 ; free virtual = 53444
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37085 ; free virtual = 53444
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |CARRY4   |    67|
h px� 
4
%s*synth2
|2     |LUT1     |     4|
h px� 
4
%s*synth2
|3     |LUT2     |    99|
h px� 
4
%s*synth2
|4     |LUT3     |    51|
h px� 
4
%s*synth2
|5     |LUT4     |    86|
h px� 
4
%s*synth2
|6     |LUT5     |    84|
h px� 
4
%s*synth2
|7     |LUT6     |   940|
h px� 
4
%s*synth2
|8     |MUXF7    |   340|
h px� 
4
%s*synth2
|9     |MUXF8    |   160|
h px� 
4
%s*synth2
|10    |RAM64M   |   896|
h px� 
4
%s*synth2
|11    |RAMB36E1 |    53|
h px� 
4
%s*synth2
|13    |FDRE     |  2974|
h px� 
4
%s*synth2
|14    |FDSE     |    20|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:38 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37085 ; free virtual = 53444
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 324 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:36 . Memory (MB): peak = 2760.273 ; gain = 640.277 ; free physical = 37084 ; free virtual = 53444
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:27 ; elapsed = 00:00:39 . Memory (MB): peak = 2760.273 ; gain = 753.789 ; free physical = 37084 ; free virtual = 53444
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.072
00:00:00.072

2760.2732
0.0002
373762
53735Z17-722h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1516Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
caribou_top_axi_fifo_mm_s_0_12!
xpm_memory_base__parameterized0Z29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

2760.2732
0.0002
416782
58037Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2_
]  A total of 896 instances were transformed.
  RAM64M => RAM64M (RAMD64E(x4)): 896 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

97755bd0Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1572
1262
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:342

00:00:442

2760.2732

1172.2462
416472
58006Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1916.260; main = 1648.842; forked = 321.209Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 4381.852; main = 2760.242; forked = 1653.625Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.022
00:00:00.012

2784.2502
0.0002
419322
58295Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/caribou_top_axi_fifo_mm_s_0_1_synth_1/caribou_top_axi_fifo_mm_s_0_1.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
caribou_top_axi_fifo_mm_s_0_12
70c81ffab0729573Z2-1648h px� 
?
Renamed %s cell refs.
330*coretcl2
47Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.032
00:00:00.022

2784.2502
0.0002
407502
57127Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/caribou_top_axi_fifo_mm_s_0_1_synth_1/caribou_top_axi_fifo_mm_s_0_1.dcpZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file caribou_top_axi_fifo_mm_s_0_1_utilization_synth.rpt -pb caribou_top_axi_fifo_mm_s_0_1_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Mar 24 09:28:37 2025Z17-206h px� 


End Record