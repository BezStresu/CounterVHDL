// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Dec 12 17:40:09 2023
// Host        : Lab401-00 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Debouncer
   (CLK,
    \DELAY_reg[2]_0 ,
    AR,
    D,
    E);
  input CLK;
  output \DELAY_reg[2]_0 ;
  input [0:0]AR;
  input [0:0]D;
  input [0:0]E;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire \DELAY_reg[2]_0 ;
  wire [0:0]E;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT3 #(
    .INIT(8'h40)) 
    \Q_INT[3]_i_3 
       (.I0(DELAY[2]),
        .I1(DELAY[0]),
        .I2(DELAY[1]),
        .O(\DELAY_reg[2]_0 ));
endmodule

module Prescaler
   (CE_IBUF,
    CLK,
    Q_INT_reg,
    AR,
    \DELAY_reg[2] ,
    E);
  input CE_IBUF;
  input CLK;
  input [3:3]Q_INT_reg;
  input [0:0]AR;
  output [0:0]\DELAY_reg[2] ;
  output [0:0]E;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire \DELAY[2]_i_2_n_0 ;
  wire \DELAY[2]_i_3_n_0 ;
  wire \DELAY[2]_i_4_n_0 ;
  wire \DELAY[2]_i_5_n_0 ;
  wire \DELAY[2]_i_6_n_0 ;
  wire \DELAY[2]_i_7_n_0 ;
  wire \DELAY[2]_i_8_n_0 ;
  wire \DELAY[2]_i_9_n_0 ;
  wire [0:0]\DELAY_reg[2] ;
  wire \DIVIDER[0]_i_2_n_0 ;
  wire \DIVIDER[0]_i_3_n_0 ;
  wire \DIVIDER[0]_i_4_n_0 ;
  wire \DIVIDER[0]_i_5_n_0 ;
  wire \DIVIDER[0]_i_6_n_0 ;
  wire \DIVIDER[12]_i_2_n_0 ;
  wire \DIVIDER[12]_i_3_n_0 ;
  wire \DIVIDER[12]_i_4_n_0 ;
  wire \DIVIDER[12]_i_5_n_0 ;
  wire \DIVIDER[16]_i_2_n_0 ;
  wire \DIVIDER[16]_i_3_n_0 ;
  wire \DIVIDER[16]_i_4_n_0 ;
  wire \DIVIDER[16]_i_5_n_0 ;
  wire \DIVIDER[20]_i_2_n_0 ;
  wire \DIVIDER[20]_i_3_n_0 ;
  wire \DIVIDER[20]_i_4_n_0 ;
  wire \DIVIDER[20]_i_5_n_0 ;
  wire \DIVIDER[24]_i_2_n_0 ;
  wire \DIVIDER[24]_i_3_n_0 ;
  wire \DIVIDER[24]_i_4_n_0 ;
  wire \DIVIDER[24]_i_5_n_0 ;
  wire \DIVIDER[28]_i_2_n_0 ;
  wire \DIVIDER[28]_i_3_n_0 ;
  wire \DIVIDER[28]_i_4_n_0 ;
  wire \DIVIDER[28]_i_5_n_0 ;
  wire \DIVIDER[32]_i_2_n_0 ;
  wire \DIVIDER[4]_i_2_n_0 ;
  wire \DIVIDER[4]_i_3_n_0 ;
  wire \DIVIDER[4]_i_4_n_0 ;
  wire \DIVIDER[4]_i_5_n_0 ;
  wire \DIVIDER[8]_i_2_n_0 ;
  wire \DIVIDER[8]_i_3_n_0 ;
  wire \DIVIDER[8]_i_4_n_0 ;
  wire \DIVIDER[8]_i_5_n_0 ;
  wire [32:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1_n_0 ;
  wire \DIVIDER_reg[0]_i_1_n_4 ;
  wire \DIVIDER_reg[0]_i_1_n_5 ;
  wire \DIVIDER_reg[0]_i_1_n_6 ;
  wire \DIVIDER_reg[0]_i_1_n_7 ;
  wire \DIVIDER_reg[12]_i_1_n_0 ;
  wire \DIVIDER_reg[12]_i_1_n_4 ;
  wire \DIVIDER_reg[12]_i_1_n_5 ;
  wire \DIVIDER_reg[12]_i_1_n_6 ;
  wire \DIVIDER_reg[12]_i_1_n_7 ;
  wire \DIVIDER_reg[16]_i_1_n_0 ;
  wire \DIVIDER_reg[16]_i_1_n_4 ;
  wire \DIVIDER_reg[16]_i_1_n_5 ;
  wire \DIVIDER_reg[16]_i_1_n_6 ;
  wire \DIVIDER_reg[16]_i_1_n_7 ;
  wire \DIVIDER_reg[20]_i_1_n_0 ;
  wire \DIVIDER_reg[20]_i_1_n_4 ;
  wire \DIVIDER_reg[20]_i_1_n_5 ;
  wire \DIVIDER_reg[20]_i_1_n_6 ;
  wire \DIVIDER_reg[20]_i_1_n_7 ;
  wire \DIVIDER_reg[24]_i_1_n_0 ;
  wire \DIVIDER_reg[24]_i_1_n_4 ;
  wire \DIVIDER_reg[24]_i_1_n_5 ;
  wire \DIVIDER_reg[24]_i_1_n_6 ;
  wire \DIVIDER_reg[24]_i_1_n_7 ;
  wire \DIVIDER_reg[28]_i_1_n_0 ;
  wire \DIVIDER_reg[28]_i_1_n_4 ;
  wire \DIVIDER_reg[28]_i_1_n_5 ;
  wire \DIVIDER_reg[28]_i_1_n_6 ;
  wire \DIVIDER_reg[28]_i_1_n_7 ;
  wire \DIVIDER_reg[32]_i_1_n_7 ;
  wire \DIVIDER_reg[4]_i_1_n_0 ;
  wire \DIVIDER_reg[4]_i_1_n_4 ;
  wire \DIVIDER_reg[4]_i_1_n_5 ;
  wire \DIVIDER_reg[4]_i_1_n_6 ;
  wire \DIVIDER_reg[4]_i_1_n_7 ;
  wire \DIVIDER_reg[8]_i_1_n_0 ;
  wire \DIVIDER_reg[8]_i_1_n_4 ;
  wire \DIVIDER_reg[8]_i_1_n_5 ;
  wire \DIVIDER_reg[8]_i_1_n_6 ;
  wire \DIVIDER_reg[8]_i_1_n_7 ;
  wire [0:0]E;
  wire [3:3]Q_INT_reg;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[32]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_DIVIDER_reg[32]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00800000)) 
    \DELAY[2]_i_1 
       (.I0(\DELAY[2]_i_2_n_0 ),
        .I1(\DELAY[2]_i_3_n_0 ),
        .I2(\DELAY[2]_i_4_n_0 ),
        .I3(\DELAY[2]_i_5_n_0 ),
        .I4(CE_IBUF),
        .O(E));
  LUT5 #(
    .INIT(32'h00000001)) 
    \DELAY[2]_i_2 
       (.I0(DIVIDER_reg[21]),
        .I1(DIVIDER_reg[22]),
        .I2(DIVIDER_reg[23]),
        .I3(DIVIDER_reg[24]),
        .I4(\DELAY[2]_i_6_n_0 ),
        .O(\DELAY[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \DELAY[2]_i_3 
       (.I0(DIVIDER_reg[29]),
        .I1(DIVIDER_reg[30]),
        .I2(DIVIDER_reg[32]),
        .I3(DIVIDER_reg[31]),
        .I4(\DELAY[2]_i_7_n_0 ),
        .O(\DELAY[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \DELAY[2]_i_4 
       (.I0(DIVIDER_reg[7]),
        .I1(DIVIDER_reg[8]),
        .I2(DIVIDER_reg[10]),
        .I3(DIVIDER_reg[11]),
        .I4(\DELAY[2]_i_8_n_0 ),
        .O(\DELAY[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \DELAY[2]_i_5 
       (.I0(\DELAY[2]_i_9_n_0 ),
        .I1(DIVIDER_reg[14]),
        .I2(DIVIDER_reg[16]),
        .I3(DIVIDER_reg[5]),
        .I4(DIVIDER_reg[9]),
        .O(\DELAY[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DELAY[2]_i_6 
       (.I0(DIVIDER_reg[13]),
        .I1(DIVIDER_reg[12]),
        .I2(DIVIDER_reg[20]),
        .I3(DIVIDER_reg[15]),
        .O(\DELAY[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DELAY[2]_i_7 
       (.I0(DIVIDER_reg[26]),
        .I1(DIVIDER_reg[25]),
        .I2(DIVIDER_reg[28]),
        .I3(DIVIDER_reg[27]),
        .O(\DELAY[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \DELAY[2]_i_8 
       (.I0(DIVIDER_reg[18]),
        .I1(DIVIDER_reg[17]),
        .I2(DIVIDER_reg[6]),
        .I3(DIVIDER_reg[19]),
        .O(\DELAY[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \DELAY[2]_i_9 
       (.I0(DIVIDER_reg[0]),
        .I1(DIVIDER_reg[1]),
        .I2(DIVIDER_reg[2]),
        .I3(DIVIDER_reg[4]),
        .I4(DIVIDER_reg[3]),
        .O(\DELAY[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_2 
       (.I0(DIVIDER_reg[0]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_3 
       (.I0(DIVIDER_reg[3]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_4 
       (.I0(DIVIDER_reg[2]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[0]_i_5 
       (.I0(DIVIDER_reg[1]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \DIVIDER[0]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_2 
       (.I0(DIVIDER_reg[15]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_3 
       (.I0(DIVIDER_reg[14]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_4 
       (.I0(DIVIDER_reg[13]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[12]_i_5 
       (.I0(DIVIDER_reg[12]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_2 
       (.I0(DIVIDER_reg[19]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_3 
       (.I0(DIVIDER_reg[18]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_4 
       (.I0(DIVIDER_reg[17]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[16]_i_5 
       (.I0(DIVIDER_reg[16]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_2 
       (.I0(DIVIDER_reg[23]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_3 
       (.I0(DIVIDER_reg[22]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_4 
       (.I0(DIVIDER_reg[21]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[20]_i_5 
       (.I0(DIVIDER_reg[20]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[24]_i_2 
       (.I0(DIVIDER_reg[27]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[24]_i_3 
       (.I0(DIVIDER_reg[26]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[24]_i_4 
       (.I0(DIVIDER_reg[25]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[24]_i_5 
       (.I0(DIVIDER_reg[24]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[28]_i_2 
       (.I0(DIVIDER_reg[31]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[28]_i_3 
       (.I0(DIVIDER_reg[30]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[28]_i_4 
       (.I0(DIVIDER_reg[29]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[28]_i_5 
       (.I0(DIVIDER_reg[28]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[32]_i_2 
       (.I0(DIVIDER_reg[32]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[32]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_2 
       (.I0(DIVIDER_reg[7]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_4 
       (.I0(DIVIDER_reg[5]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[4]_i_5 
       (.I0(DIVIDER_reg[4]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_2 
       (.I0(DIVIDER_reg[11]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_3 
       (.I0(DIVIDER_reg[10]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_4 
       (.I0(DIVIDER_reg[9]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \DIVIDER[8]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(\DELAY[2]_i_2_n_0 ),
        .I2(\DELAY[2]_i_3_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_5_n_0 ),
        .O(\DIVIDER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_7 ),
        .Q(DIVIDER_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1_n_0 ,\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2_n_0 }),
        .O({\DIVIDER_reg[0]_i_1_n_4 ,\DIVIDER_reg[0]_i_1_n_5 ,\DIVIDER_reg[0]_i_1_n_6 ,\DIVIDER_reg[0]_i_1_n_7 }),
        .S({\DIVIDER[0]_i_3_n_0 ,\DIVIDER[0]_i_4_n_0 ,\DIVIDER[0]_i_5_n_0 ,\DIVIDER[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_7 ),
        .Q(DIVIDER_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[12]_i_1 
       (.CI(\DIVIDER_reg[8]_i_1_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1_n_0 ,\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1_n_4 ,\DIVIDER_reg[12]_i_1_n_5 ,\DIVIDER_reg[12]_i_1_n_6 ,\DIVIDER_reg[12]_i_1_n_7 }),
        .S({\DIVIDER[12]_i_2_n_0 ,\DIVIDER[12]_i_3_n_0 ,\DIVIDER[12]_i_4_n_0 ,\DIVIDER[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_7 ),
        .Q(DIVIDER_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[16]_i_1 
       (.CI(\DIVIDER_reg[12]_i_1_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1_n_0 ,\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1_n_4 ,\DIVIDER_reg[16]_i_1_n_5 ,\DIVIDER_reg[16]_i_1_n_6 ,\DIVIDER_reg[16]_i_1_n_7 }),
        .S({\DIVIDER[16]_i_2_n_0 ,\DIVIDER[16]_i_3_n_0 ,\DIVIDER[16]_i_4_n_0 ,\DIVIDER[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_7 ),
        .Q(DIVIDER_reg[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[20]_i_1 
       (.CI(\DIVIDER_reg[16]_i_1_n_0 ),
        .CO({\DIVIDER_reg[20]_i_1_n_0 ,\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[20]_i_1_n_4 ,\DIVIDER_reg[20]_i_1_n_5 ,\DIVIDER_reg[20]_i_1_n_6 ,\DIVIDER_reg[20]_i_1_n_7 }),
        .S({\DIVIDER[20]_i_2_n_0 ,\DIVIDER[20]_i_3_n_0 ,\DIVIDER[20]_i_4_n_0 ,\DIVIDER[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[23] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_4 ),
        .Q(DIVIDER_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[24] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_7 ),
        .Q(DIVIDER_reg[24]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[24]_i_1 
       (.CI(\DIVIDER_reg[20]_i_1_n_0 ),
        .CO({\DIVIDER_reg[24]_i_1_n_0 ,\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[24]_i_1_n_4 ,\DIVIDER_reg[24]_i_1_n_5 ,\DIVIDER_reg[24]_i_1_n_6 ,\DIVIDER_reg[24]_i_1_n_7 }),
        .S({\DIVIDER[24]_i_2_n_0 ,\DIVIDER[24]_i_3_n_0 ,\DIVIDER[24]_i_4_n_0 ,\DIVIDER[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[25] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_6 ),
        .Q(DIVIDER_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[26] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_5 ),
        .Q(DIVIDER_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[27] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_4 ),
        .Q(DIVIDER_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[28] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[28]_i_1_n_7 ),
        .Q(DIVIDER_reg[28]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[28]_i_1 
       (.CI(\DIVIDER_reg[24]_i_1_n_0 ),
        .CO({\DIVIDER_reg[28]_i_1_n_0 ,\NLW_DIVIDER_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[28]_i_1_n_4 ,\DIVIDER_reg[28]_i_1_n_5 ,\DIVIDER_reg[28]_i_1_n_6 ,\DIVIDER_reg[28]_i_1_n_7 }),
        .S({\DIVIDER[28]_i_2_n_0 ,\DIVIDER[28]_i_3_n_0 ,\DIVIDER[28]_i_4_n_0 ,\DIVIDER[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[29] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[28]_i_1_n_6 ),
        .Q(DIVIDER_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[30] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[28]_i_1_n_5 ),
        .Q(DIVIDER_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[31] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[28]_i_1_n_4 ),
        .Q(DIVIDER_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[32] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[32]_i_1_n_7 ),
        .Q(DIVIDER_reg[32]));
  CARRY4 \DIVIDER_reg[32]_i_1 
       (.CI(\DIVIDER_reg[28]_i_1_n_0 ),
        .CO(\NLW_DIVIDER_reg[32]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DIVIDER_reg[32]_i_1_O_UNCONNECTED [3:1],\DIVIDER_reg[32]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\DIVIDER[32]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_7 ),
        .Q(DIVIDER_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[4]_i_1 
       (.CI(\DIVIDER_reg[0]_i_1_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1_n_0 ,\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1_n_4 ,\DIVIDER_reg[4]_i_1_n_5 ,\DIVIDER_reg[4]_i_1_n_6 ,\DIVIDER_reg[4]_i_1_n_7 }),
        .S({\DIVIDER[4]_i_2_n_0 ,\DIVIDER[4]_i_3_n_0 ,\DIVIDER[4]_i_4_n_0 ,\DIVIDER[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_7 ),
        .Q(DIVIDER_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[8]_i_1 
       (.CI(\DIVIDER_reg[4]_i_1_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1_n_0 ,\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1_n_4 ,\DIVIDER_reg[8]_i_1_n_5 ,\DIVIDER_reg[8]_i_1_n_6 ,\DIVIDER_reg[8]_i_1_n_7 }),
        .S({\DIVIDER[8]_i_2_n_0 ,\DIVIDER[8]_i_3_n_0 ,\DIVIDER[8]_i_4_n_0 ,\DIVIDER[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \Q_INT[3]_i_1 
       (.I0(Q_INT_reg),
        .I1(CE_IBUF),
        .I2(\DELAY[2]_i_5_n_0 ),
        .I3(\DELAY[2]_i_4_n_0 ),
        .I4(\DELAY[2]_i_3_n_0 ),
        .I5(\DELAY[2]_i_2_n_0 ),
        .O(\DELAY_reg[2] ));
endmodule

(* ECO_CHECKSUM = "ee3897c2" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Top
   (CE,
    CLK,
    CLR,
    DIR,
    LE,
    LOAD,
    OE,
    PUSH,
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
  input PUSH;
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
  wire NET280;
  wire NET304;
  wire OE;
  wire OE_IBUF;
  wire PUSH;
  wire PUSH_IBUF;
  wire [3:0]Q;
  wire [3:0]Q_OBUF;
  wire [0:0]Q_TRI;
  wire SEL;
  wire SEL_IBUF;
  wire U4_n_0;

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
  IBUF OE_IBUF_inst
       (.I(OE),
        .O(OE_IBUF));
  IBUF PUSH_IBUF_inst
       (.I(PUSH),
        .O(PUSH_IBUF));
  OBUFT \Q_OBUFT[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]),
        .T(Q_TRI));
  OBUFT \Q_OBUFT[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]),
        .T(Q_TRI));
  OBUFT \Q_OBUFT[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]),
        .T(Q_TRI));
  OBUFT \Q_OBUFT[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]),
        .T(Q_TRI));
  LUT1 #(
    .INIT(2'h1)) 
    \Q_OBUFT[3]_inst_i_2 
       (.I0(OE_IBUF),
        .O(Q_TRI));
  IBUF SEL_IBUF_inst
       (.I(SEL),
        .O(SEL_IBUF));
  TutorVHDL U2
       (.AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(DATA_IBUF),
        .DIR_IBUF(DIR_IBUF),
        .E(LE_IBUF_BUFG),
        .LOAD_IBUF(LOAD_IBUF),
        .\Q_INT_reg[3]_0 (NET280),
        .Q_OBUF(Q_OBUF),
        .SEL_IBUF(SEL_IBUF));
  Prescaler U3
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .\DELAY_reg[2] (NET280),
        .E(NET304),
        .Q_INT_reg(U4_n_0));
  Debouncer U4
       (.AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(PUSH_IBUF),
        .\DELAY_reg[2]_0 (U4_n_0),
        .E(NET304));
endmodule

module TutorVHDL
   (CLK,
    DIR_IBUF,
    LOAD_IBUF,
    SEL_IBUF,
    AR,
    D,
    E,
    \Q_INT_reg[3]_0 ,
    Q_OBUF);
  input CLK;
  input DIR_IBUF;
  input LOAD_IBUF;
  input SEL_IBUF;
  input [0:0]AR;
  input [3:0]D;
  input [0:0]E;
  input [0:0]\Q_INT_reg[3]_0 ;
  output [3:0]Q_OBUF;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire DIR_IBUF;
  wire [0:0]E;
  wire LOAD_IBUF;
  wire [3:0]L_DATA;
  wire \Q_INT[3]_i_4_n_0 ;
  wire [3:0]Q_INT_reg;
  wire [0:0]\Q_INT_reg[3]_0 ;
  wire [3:0]Q_OBUF;
  wire SEL_IBUF;
  wire [3:0]p_0_in;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[0] 
       (.CLR(AR),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(L_DATA[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[1] 
       (.CLR(AR),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(L_DATA[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[2] 
       (.CLR(AR),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(L_DATA[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \L_DATA_reg[3] 
       (.CLR(AR),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(L_DATA[3]));
  LUT3 #(
    .INIT(8'h8B)) 
    \Q_INT[0]_i_1 
       (.I0(D[0]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h8BB8B88B)) 
    \Q_INT[1]_i_1 
       (.I0(D[1]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg[0]),
        .I3(DIR_IBUF),
        .I4(Q_INT_reg[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \Q_INT[2]_i_1 
       (.I0(D[2]),
        .I1(LOAD_IBUF),
        .I2(Q_INT_reg[0]),
        .I3(DIR_IBUF),
        .I4(Q_INT_reg[2]),
        .I5(Q_INT_reg[1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \Q_INT[3]_i_2 
       (.I0(D[3]),
        .I1(LOAD_IBUF),
        .I2(\Q_INT[3]_i_4_n_0 ),
        .I3(Q_INT_reg[1]),
        .I4(Q_INT_reg[3]),
        .I5(Q_INT_reg[2]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hD4)) 
    \Q_INT[3]_i_4 
       (.I0(Q_INT_reg[1]),
        .I1(DIR_IBUF),
        .I2(Q_INT_reg[0]),
        .O(\Q_INT[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[0] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(Q_INT_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[1] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(Q_INT_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[2] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(Q_INT_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT_reg[3] 
       (.C(CLK),
        .CE(\Q_INT_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(Q_INT_reg[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[0]_inst_i_1 
       (.I0(L_DATA[0]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg[0]),
        .O(Q_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[1]_inst_i_1 
       (.I0(L_DATA[1]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg[1]),
        .O(Q_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[2]_inst_i_1 
       (.I0(L_DATA[2]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg[2]),
        .O(Q_OBUF[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q_OBUFT[3]_inst_i_1 
       (.I0(L_DATA[3]),
        .I1(SEL_IBUF),
        .I2(Q_INT_reg[3]),
        .O(Q_OBUF[3]));
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
