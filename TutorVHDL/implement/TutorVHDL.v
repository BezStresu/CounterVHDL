// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Dec  5 17:21:38 2023
// Host        : Lab401-00 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force TutorVHDL.v
// Design      : TutorVHDL
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "9fb8f767" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module TutorVHDL
   (CE,
    CLK,
    CLR,
    DIR,
    LE,
    LOAD,
    OE,
    SEL,
    DATA,
    Q);
  input CE;
  input CLK;
  input CLR;
  input DIR;
  input LE;
  input LOAD;
  input OE;
  input SEL;
  input [3:0]DATA;
  output [3:0]Q;

  wire CE;
  wire CE_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire [3:0]DATA;
  wire [3:0]DATA_IBUF;
  wire DIR;
  wire DIR_IBUF;
  wire LE;
  wire LE_IBUF;
  wire LE_IBUF_BUFG;
  wire LOAD;
  wire LOAD_IBUF;
  wire [3:0]L_DATA;
  wire OE;
  wire OE_IBUF;
  wire [3:0]Q;
  wire \Q_INT[3]_i_2_n_0 ;
  wire [3:0]Q_INT_reg;
  wire [3:0]Q_OBUF;
  wire [0:0]Q_TRI;
  wire SEL;
  wire SEL_IBUF;
  wire [3:0]p_0_in;

  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  IBUF \DATA_IBUF[0]_inst 
       (.I(DATA[0]),
        .O(DATA_IBUF[0]));
  IBUF \DATA_IBUF[1]_inst 
       (.I(DATA[1]),
        .O(DATA_IBUF[1]));
  IBUF \DATA_IBUF[2]_inst 
       (.I(DATA[2]),
        .O(DATA_IBUF[2]));
  IBUF \DATA_IBUF[3]_inst 
       (.I(DATA[3]),
        .O(DATA_IBUF[3]));
  IBUF DIR_IBUF_inst
       (.I(DIR),
        .O(DIR_IBUF));
  BUFG LE_IBUF_BUFG_inst
       (.I(LE_IBUF),
        .O(LE_IBUF_BUFG));
  IBUF LE_IBUF_inst
       (.I(LE),
        .O(LE_IBUF));
  IBUF LOAD_IBUF_inst
       (.I(LOAD),
        .O(LOAD_IBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[0] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[0]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DATA[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[1] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[1]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DATA[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[2] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[2]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DATA[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[3] 
       (.CLR(CLR_IBUF),
        .D(DATA_IBUF[3]),
        .G(LE_IBUF_BUFG),
        .GE(1'b1),
        .Q(L_DATA[3]));
  IBUF OE_IBUF_inst
       (.I(OE),
        .O(OE_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \Q_INT[0]_i_1 
       (.I0(DATA_IBUF[0]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8BB8B88B)) 
    \Q_INT[1]_i_1 
       (.I0(DATA_IBUF[1]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg[0]),
        .I3(DIR_IBUF),
        .I4(Q_INT_reg[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \Q_INT[2]_i_1 
       (.I0(DATA_IBUF[2]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg[0]),
        .I3(DIR_IBUF),
        .I4(Q_INT_reg[2]),
        .I5(Q_INT_reg[1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \Q_INT[3]_i_1 
       (.I0(DATA_IBUF[3]),
        .I1(LOAD_IBUF),
        .I2(\Q_INT[3]_i_2_n_0 ),
        .I3(Q_INT_reg[1]),
        .I4(Q_INT_reg[3]),
        .I5(Q_INT_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \Q_INT[3]_i_2 
       (.I0(Q_INT_reg[1]),
        .I1(DIR_IBUF),
        .I2(Q_INT_reg[0]),
        .O(\Q_INT[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[0]),
        .Q(Q_INT_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[1]),
        .Q(Q_INT_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[2]),
        .Q(Q_INT_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(p_0_in[3]),
        .Q(Q_INT_reg[3]));
  OBUFT \Q_OBUFT[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]),
        .T(Q_TRI));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUFT[0]_inst_i_1 
       (.I0(L_DATA[0]),
        .I1(Q_INT_reg[0]),
        .I2(SEL_IBUF),
        .O(Q_OBUF[0]));
  OBUFT \Q_OBUFT[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]),
        .T(Q_TRI));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUFT[1]_inst_i_1 
       (.I0(L_DATA[1]),
        .I1(Q_INT_reg[1]),
        .I2(SEL_IBUF),
        .O(Q_OBUF[1]));
  OBUFT \Q_OBUFT[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]),
        .T(Q_TRI));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUFT[2]_inst_i_1 
       (.I0(L_DATA[2]),
        .I1(Q_INT_reg[2]),
        .I2(SEL_IBUF),
        .O(Q_OBUF[2]));
  OBUFT \Q_OBUFT[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]),
        .T(Q_TRI));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q_OBUFT[3]_inst_i_1 
       (.I0(L_DATA[3]),
        .I1(Q_INT_reg[3]),
        .I2(SEL_IBUF),
        .O(Q_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q_OBUFT[3]_inst_i_2 
       (.I0(OE_IBUF),
        .O(Q_TRI));
  IBUF SEL_IBUF_inst
       (.I(SEL),
        .O(SEL_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
