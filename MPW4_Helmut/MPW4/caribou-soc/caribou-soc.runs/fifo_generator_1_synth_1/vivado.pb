
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:052

00:00:102

1570.2772
18.8592
396492
56066Z17-722h px� 
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
f
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
fifo_generator_1Z19-6924h px� 
�
Command: %s
53*	vivadotcl2e
csynth_design -top fifo_generator_1 -part xc7z045ffg900-2 -incremental_mode off -mode out_of_contextZ4-113h px� 
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
3096621Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 2408.262 ; gain = 402.746 ; free physical = 36347 ; free virtual = 52764
h px� 
�
synthesizing module '%s'638*oasys2
fifo_generator_12|
x/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/synth/fifo_generator_1.vhd2
748@Z8-638h px� 
Q
%s
*synth29
7	Parameter C_COMMON_CLOCK bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_SELECT_XPM bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_COUNT_TYPE bound to: 0 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_DATA_COUNT_WIDTH bound to: 12 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_DEFAULT_VALUE bound to: BlankString - type: string 
h p
x
� 
O
%s
*synth27
5	Parameter C_DIN_WIDTH bound to: 32 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_DOUT_RST_VAL bound to: 0 - type: string 
h p
x
� 
P
%s
*synth28
6	Parameter C_DOUT_WIDTH bound to: 32 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_ENABLE_RLOCS bound to: 0 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter C_FAMILY bound to: zynq - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter C_FULL_FLAGS_RST_VAL bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_HAS_ALMOST_EMPTY bound to: 0 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_HAS_ALMOST_FULL bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_HAS_BACKUP bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_DATA_COUNT bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_HAS_INT_CLK bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_HAS_MEMINIT_FILE bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_HAS_OVERFLOW bound to: 0 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_HAS_RD_DATA_COUNT bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_HAS_RD_RST bound to: 0 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter C_HAS_RST bound to: 1 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter C_HAS_SRST bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_HAS_UNDERFLOW bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_HAS_VALID bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_HAS_WR_ACK bound to: 0 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_HAS_WR_DATA_COUNT bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_HAS_WR_RST bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_IMPLEMENTATION_TYPE bound to: 6 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_INIT_WR_PNTR_VAL bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_MEMORY_TYPE bound to: 4 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_MIF_FILE_NAME bound to: BlankString - type: string 
h p
x
� 
V
%s
*synth2>
<	Parameter C_OPTIMIZATION_MODE bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_OVERFLOW_LOW bound to: 0 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_PRELOAD_LATENCY bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_PRELOAD_REGS bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_PRIM_FIFO_TYPE bound to: 4kx9 - type: string 
h p
x
� 
a
%s
*synth2I
G	Parameter C_PROG_EMPTY_THRESH_ASSERT_VAL bound to: 6 - type: integer 
h p
x
� 
a
%s
*synth2I
G	Parameter C_PROG_EMPTY_THRESH_NEGATE_VAL bound to: 7 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_PROG_EMPTY_TYPE bound to: 0 - type: integer 
h p
x
� 
c
%s
*synth2K
I	Parameter C_PROG_FULL_THRESH_ASSERT_VAL bound to: 2048 - type: integer 
h p
x
� 
c
%s
*synth2K
I	Parameter C_PROG_FULL_THRESH_NEGATE_VAL bound to: 2047 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_PROG_FULL_TYPE bound to: 1 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_RD_DATA_COUNT_WIDTH bound to: 12 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_RD_DEPTH bound to: 4096 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_RD_FREQ bound to: 125 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_RD_PNTR_WIDTH bound to: 12 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_UNDERFLOW_LOW bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_USE_DOUT_RST bound to: 0 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter C_USE_ECC bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_USE_EMBEDDED_REG bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_USE_PIPELINE_REG bound to: 0 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_POWER_SAVING_MODE bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_USE_FIFO16_FLAGS bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_USE_FWFT_DATA_COUNT bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_VALID_LOW bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_WR_ACK_LOW bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_WR_DATA_COUNT_WIDTH bound to: 12 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_WR_DEPTH bound to: 4096 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter C_WR_FREQ bound to: 32 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_WR_PNTR_WIDTH bound to: 12 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_WR_RESPONSE_LATENCY bound to: 1 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_MSGON_VAL bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_ENABLE_RST_SYNC bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_EN_SAFETY_CKT bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_ERROR_INJECTION_TYPE bound to: 0 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_SYNCHRONIZER_STAGE bound to: 2 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_INTERFACE_TYPE bound to: 0 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter C_AXI_TYPE bound to: 1 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_HAS_AXI_WR_CHANNEL bound to: 1 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_HAS_AXI_RD_CHANNEL bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_HAS_SLAVE_CE bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_HAS_MASTER_CE bound to: 0 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_ADD_NGC_CONSTRAINT bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_USE_COMMON_OVERFLOW bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_USE_COMMON_UNDERFLOW bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_USE_DEFAULT_SETTINGS bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_AXI_ADDR_WIDTH bound to: 32 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_AXI_DATA_WIDTH bound to: 64 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_AXI_LEN_WIDTH bound to: 8 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_AXI_LOCK_WIDTH bound to: 1 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_HAS_AXI_ID bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXI_AWUSER bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_HAS_AXI_WUSER bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_HAS_AXI_BUSER bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXI_ARUSER bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_HAS_AXI_RUSER bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TDATA bound to: 1 - type: integer 
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
9	Parameter C_HAS_AXIS_TUSER bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_HAS_AXIS_TREADY bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TLAST bound to: 0 - type: integer 
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
U
%s
*synth2=
;	Parameter C_AXIS_TDATA_WIDTH bound to: 8 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_AXIS_TID_WIDTH bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TDEST_WIDTH bound to: 1 - type: integer 
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
U
%s
*synth2=
;	Parameter C_AXIS_TSTRB_WIDTH bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TKEEP_WIDTH bound to: 1 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_WACH_TYPE bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_WDCH_TYPE bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_WRCH_TYPE bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_RACH_TYPE bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_RDCH_TYPE bound to: 0 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_AXIS_TYPE bound to: 0 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_IMPLEMENTATION_TYPE_WACH bound to: 1 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_IMPLEMENTATION_TYPE_WDCH bound to: 1 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_IMPLEMENTATION_TYPE_WRCH bound to: 1 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_IMPLEMENTATION_TYPE_RACH bound to: 1 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_IMPLEMENTATION_TYPE_RDCH bound to: 1 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_IMPLEMENTATION_TYPE_AXIS bound to: 1 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_APPLICATION_TYPE_WACH bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_APPLICATION_TYPE_WDCH bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_APPLICATION_TYPE_WRCH bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_APPLICATION_TYPE_RACH bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_APPLICATION_TYPE_RDCH bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_APPLICATION_TYPE_AXIS bound to: 0 - type: integer 
h p
x
� 
\
%s
*synth2D
B	Parameter C_PRIM_FIFO_TYPE_WACH bound to: 512x36 - type: string 
h p
x
� 
[
%s
*synth2C
A	Parameter C_PRIM_FIFO_TYPE_WDCH bound to: 1kx36 - type: string 
h p
x
� 
\
%s
*synth2D
B	Parameter C_PRIM_FIFO_TYPE_WRCH bound to: 512x36 - type: string 
h p
x
� 
\
%s
*synth2D
B	Parameter C_PRIM_FIFO_TYPE_RACH bound to: 512x36 - type: string 
h p
x
� 
[
%s
*synth2C
A	Parameter C_PRIM_FIFO_TYPE_RDCH bound to: 1kx36 - type: string 
h p
x
� 
[
%s
*synth2C
A	Parameter C_PRIM_FIFO_TYPE_AXIS bound to: 1kx18 - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter C_USE_ECC_WACH bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_USE_ECC_WDCH bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_USE_ECC_WRCH bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_USE_ECC_RACH bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_USE_ECC_RDCH bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_USE_ECC_AXIS bound to: 0 - type: integer 
h p
x
� 
^
%s
*synth2F
D	Parameter C_ERROR_INJECTION_TYPE_WACH bound to: 0 - type: integer 
h p
x
� 
^
%s
*synth2F
D	Parameter C_ERROR_INJECTION_TYPE_WDCH bound to: 0 - type: integer 
h p
x
� 
^
%s
*synth2F
D	Parameter C_ERROR_INJECTION_TYPE_WRCH bound to: 0 - type: integer 
h p
x
� 
^
%s
*synth2F
D	Parameter C_ERROR_INJECTION_TYPE_RACH bound to: 0 - type: integer 
h p
x
� 
^
%s
*synth2F
D	Parameter C_ERROR_INJECTION_TYPE_RDCH bound to: 0 - type: integer 
h p
x
� 
^
%s
*synth2F
D	Parameter C_ERROR_INJECTION_TYPE_AXIS bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_DIN_WIDTH_WACH bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_DIN_WIDTH_WDCH bound to: 64 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_DIN_WIDTH_WRCH bound to: 2 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_DIN_WIDTH_RACH bound to: 32 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_DIN_WIDTH_RDCH bound to: 64 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_DIN_WIDTH_AXIS bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_WR_DEPTH_WACH bound to: 16 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_WR_DEPTH_WDCH bound to: 1024 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_WR_DEPTH_WRCH bound to: 16 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_WR_DEPTH_RACH bound to: 16 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_WR_DEPTH_RDCH bound to: 1024 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_WR_DEPTH_AXIS bound to: 1024 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_WR_PNTR_WIDTH_WACH bound to: 4 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_WR_PNTR_WIDTH_WDCH bound to: 10 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_WR_PNTR_WIDTH_WRCH bound to: 4 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_WR_PNTR_WIDTH_RACH bound to: 4 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_WR_PNTR_WIDTH_RDCH bound to: 10 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_WR_PNTR_WIDTH_AXIS bound to: 10 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_HAS_DATA_COUNTS_WACH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_HAS_DATA_COUNTS_WDCH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_HAS_DATA_COUNTS_WRCH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_HAS_DATA_COUNTS_RACH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_HAS_DATA_COUNTS_RDCH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_HAS_DATA_COUNTS_AXIS bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_HAS_PROG_FLAGS_WACH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_HAS_PROG_FLAGS_WDCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_HAS_PROG_FLAGS_WRCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_HAS_PROG_FLAGS_RACH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_HAS_PROG_FLAGS_RDCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_HAS_PROG_FLAGS_AXIS bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_PROG_FULL_TYPE_WACH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_PROG_FULL_TYPE_WDCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_PROG_FULL_TYPE_WRCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_PROG_FULL_TYPE_RACH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_PROG_FULL_TYPE_RDCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_PROG_FULL_TYPE_AXIS bound to: 0 - type: integer 
h p
x
� 
h
%s
*synth2P
N	Parameter C_PROG_FULL_THRESH_ASSERT_VAL_WACH bound to: 1023 - type: integer 
h p
x
� 
h
%s
*synth2P
N	Parameter C_PROG_FULL_THRESH_ASSERT_VAL_WDCH bound to: 1023 - type: integer 
h p
x
� 
h
%s
*synth2P
N	Parameter C_PROG_FULL_THRESH_ASSERT_VAL_WRCH bound to: 1023 - type: integer 
h p
x
� 
h
%s
*synth2P
N	Parameter C_PROG_FULL_THRESH_ASSERT_VAL_RACH bound to: 1023 - type: integer 
h p
x
� 
h
%s
*synth2P
N	Parameter C_PROG_FULL_THRESH_ASSERT_VAL_RDCH bound to: 1023 - type: integer 
h p
x
� 
h
%s
*synth2P
N	Parameter C_PROG_FULL_THRESH_ASSERT_VAL_AXIS bound to: 1023 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_PROG_EMPTY_TYPE_WACH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_PROG_EMPTY_TYPE_WDCH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_PROG_EMPTY_TYPE_WRCH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_PROG_EMPTY_TYPE_RACH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_PROG_EMPTY_TYPE_RDCH bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_PROG_EMPTY_TYPE_AXIS bound to: 0 - type: integer 
h p
x
� 
i
%s
*synth2Q
O	Parameter C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH bound to: 1022 - type: integer 
h p
x
� 
i
%s
*synth2Q
O	Parameter C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH bound to: 1022 - type: integer 
h p
x
� 
i
%s
*synth2Q
O	Parameter C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH bound to: 1022 - type: integer 
h p
x
� 
i
%s
*synth2Q
O	Parameter C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH bound to: 1022 - type: integer 
h p
x
� 
i
%s
*synth2Q
O	Parameter C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH bound to: 1022 - type: integer 
h p
x
� 
i
%s
*synth2Q
O	Parameter C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS bound to: 1022 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_REG_SLICE_MODE_WACH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_REG_SLICE_MODE_WDCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_REG_SLICE_MODE_WRCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_REG_SLICE_MODE_RACH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_REG_SLICE_MODE_RDCH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_REG_SLICE_MODE_AXIS bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
fifo_generator_v13_2_92�
�/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/hdl/fifo_generator_v13_2_vhsyn_rfs.vhd2
383052
U02
fifo_generator_v13_2_92|
x/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/synth/fifo_generator_1.vhd2
5448@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
fifo_generator_12
02
12|
x/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/synth/fifo_generator_1.vhd2
748@Z8-256h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALMOST_FULL_I2

output_blkZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALMOST_EMPTY_I2

output_blkZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_I2

output_blkZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2

WR_ACK_I2

output_blkZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2	
VALID_I2

output_blkZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2

OVERFLOW_I2

output_blkZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
UNDERFLOW_I2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[8]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[7]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[6]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[5]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[4]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[3]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[2]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[1]2

output_blkZ8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
DATA_COUNT_I[0]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[8]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[7]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[6]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[5]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[4]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[3]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[2]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[1]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
WR_DATA_COUNT_I[0]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[8]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[7]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[6]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[5]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[4]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[3]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[2]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[1]2

output_blkZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
RD_DATA_COUNT_I[0]2

output_blkZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
	SBITERR_I2

output_blkZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
	DBITERR_I2

output_blkZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2	
INT_CLK2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[11]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[10]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[9]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[8]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[7]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[6]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[5]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[4]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[3]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[2]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[1]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH[0]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[11]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[10]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[9]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[8]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[7]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[6]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[5]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[4]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[3]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[2]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[1]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_ASSERT[0]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[11]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[10]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[9]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[8]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[7]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[6]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[5]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[4]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[3]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[2]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[1]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_FULL_THRESH_NEGATE[0]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[11]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[10]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[9]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[8]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[7]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[6]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[5]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[4]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[3]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[2]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[1]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH[0]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[11]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[10]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[9]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[8]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[7]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[6]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[5]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[4]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[3]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[2]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[1]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_ASSERT[0]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_NEGATE[11]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_NEGATE[10]2
builtin_extdepth_v6Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
PROG_EMPTY_THRESH_NEGATE[9]2
builtin_extdepth_v6Z8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 2599.199 ; gain = 593.684 ; free physical = 36157 ; free virtual = 52576
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 2599.199 ; gain = 593.684 ; free physical = 36157 ; free virtual = 52576
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 2599.199 ; gain = 593.684 ; free physical = 36157 ; free virtual = 52576
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

00:00:002
00:00:00.012

2599.1992
0.0002
361422
52561Z17-722h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
4Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
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
848*designutils2z
v/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1_ooc.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2z
v/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1_ooc.xdc2
U0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2v
r/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2v
r/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1.xdc2
U0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2k
g/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/fifo_generator_1_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2k
g/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/fifo_generator_1_synth_1/dont_touch.xdc8Z20-178h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2}
y/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1_clocks.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2}
y/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1_clocks.xdc2
U0	8Z20-847h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2663.2302
0.0002
361512
52573Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.012
00:00:00.012

2663.2662
0.0002
361502
52572Z17-722h px� 
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
�Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37687 ; free virtual = 54110
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37687 ; free virtual = 54110
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37687 ; free virtual = 54110
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37672 ; free virtual = 54097
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
.	                6 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 9     
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37675 ; free virtual = 54101
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37210 ; free virtual = 53633
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37204 ; free virtual = 53627
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37199 ; free virtual = 53622
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
�Finished IO Insertion : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+-----------------------+--------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name            | RTL Name                                                                       | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+-----------------------+--------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|fifo_generator_v13_2_9 | inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.ric.wr_rst_fb_reg[0] | 5      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+-----------------------+--------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

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
|1     |FIFO36E1 |     4|
h px� 
4
%s*synth2
|2     |LUT1     |    16|
h px� 
4
%s*synth2
|3     |LUT2     |     2|
h px� 
4
%s*synth2
|4     |LUT4     |     3|
h px� 
4
%s*synth2
|5     |LUT5     |     2|
h px� 
4
%s*synth2
|6     |SRL16E   |     1|
h px� 
4
%s*synth2
|7     |FDPE     |     5|
h px� 
4
%s*synth2
|8     |FDRE     |    13|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
HSynthesis finished with 0 errors, 0 critical warnings and 499 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 2663.266 ; gain = 593.684 ; free physical = 37202 ; free virtual = 53625
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 2663.266 ; gain = 657.750 ; free physical = 37202 ; free virtual = 53625
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
00:00:00.012

00:00:002

2663.2662
0.0002
374972
53921Z17-722h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
4Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
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

00:00:002

2663.2662
0.0002
377922
54216Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

cd19be4eZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
242
1032
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

00:00:252

00:00:272

2663.2662

1073.1762
377922
54216Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1849.942; main = 1533.579; forked = 322.831Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 4285.789; main = 2631.219; forked = 1654.570Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2663.2662
0.0002
377922
54216Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2o
m/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/fifo_generator_1_synth_1/fifo_generator_1.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
fifo_generator_12
2348c2bb94314a55Z2-1648h px� 
?
Renamed %s cell refs.
330*coretcl2
14Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2687.2422
0.0002
377902
54214Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2o
m/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.runs/fifo_generator_1_synth_1/fifo_generator_1.dcpZ17-1381h px� 
�
%s4*runtcl2x
vExecuting : report_utilization -file fifo_generator_1_utilization_synth.rpt -pb fifo_generator_1_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Mar 24 09:31:19 2025Z17-206h px� 


End Record