// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/unisims/GT_ETHERNET_2.v,v 1.7 2006/03/14 01:45:22 sranade Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 10.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  Gigabit Transceiver for ETHERNET I/O Standard 2 Byte Data
// /___/   /\     Filename : GT_ETHERNET_2.v
// \   \  /  \    Timestamp : Thu Mar 25 16:42:22 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    04/22/05 - Tied open inputs CHBONDI and ENCHANSYNC to GND.
//    02/22/06 - CR#226003 - Added integer, real parameter type
// End Revision

`timescale 1 ps / 1 ps 

module GT_ETHERNET_2 (
	CONFIGOUT,
	RXBUFSTATUS,
	RXCHARISCOMMA,
	RXCHARISK,
	RXCHECKINGCRC,
	RXCLKCORCNT,
	RXCOMMADET,
	RXCRCERR,
	RXDATA,
	RXDISPERR,
	RXLOSSOFSYNC,
	RXNOTINTABLE,
	RXREALIGN,
	RXRECCLK,
	RXRUNDISP,
	TXBUFERR,
	TXKERR,
	TXN,
	TXP,
	TXRUNDISP,

	BREFCLK,
	BREFCLK2,
	CONFIGENABLE,
	CONFIGIN,
	ENMCOMMAALIGN,
	ENPCOMMAALIGN,
	LOOPBACK,
	POWERDOWN,
	REFCLK,
	REFCLK2,
	REFCLKSEL,
	RXN,
	RXP,
	RXPOLARITY,
	RXRESET,
	RXUSRCLK,
	RXUSRCLK2,
	TXBYPASS8B10B,
	TXCHARDISPMODE,
	TXCHARDISPVAL,
	TXCHARISK,
	TXDATA,
	TXFORCECRCERR,
	TXINHIBIT,
	TXPOLARITY,
	TXRESET,
	TXUSRCLK,
	TXUSRCLK2
);

parameter CLK_COR_INSERT_IDLE_FLAG = "FALSE";
parameter CLK_COR_KEEP_IDLE = "FALSE";
parameter integer CLK_COR_REPEAT_WAIT = 1;
parameter integer REF_CLK_V_SEL = 0;
parameter RX_CRC_USE = "FALSE";
parameter integer RX_LOS_INVALID_INCR = 1;
parameter integer RX_LOS_THRESHOLD = 4;
parameter RX_LOSS_OF_SYNC_FSM = "TRUE";
parameter SERDES_10B = "FALSE";
parameter integer TERMINATION_IMP = 50;
parameter TX_CRC_FORCE_VALUE = 8'b11010110;
parameter TX_CRC_USE = "FALSE";
parameter integer TX_DIFF_CTRL = 500;
parameter integer TX_PREEMPHASIS = 0;

output CONFIGOUT;
output [1:0] RXBUFSTATUS;
output [1:0] RXCHARISCOMMA;
output [1:0] RXCHARISK;
output RXCHECKINGCRC;
output [2:0] RXCLKCORCNT;
output RXCOMMADET;
output RXCRCERR;
output [15:0] RXDATA;
output [1:0] RXDISPERR;
output [1:0] RXLOSSOFSYNC;
output [1:0] RXNOTINTABLE;
output RXREALIGN;
output RXRECCLK;
output [1:0] RXRUNDISP;
output TXBUFERR;
output [1:0] TXKERR;
output TXN;
output TXP;
output [1:0] TXRUNDISP;

input BREFCLK;
input BREFCLK2;
input CONFIGENABLE;
input CONFIGIN;
input ENMCOMMAALIGN;
input ENPCOMMAALIGN;
input [1:0] LOOPBACK;
input POWERDOWN;
input REFCLK;
input REFCLK2;
input REFCLKSEL;
input RXN;
input RXP;
input RXPOLARITY;
input RXRESET;
input RXUSRCLK;
input RXUSRCLK2;
input [1:0] TXBYPASS8B10B;
input [1:0] TXCHARDISPMODE;
input [1:0] TXCHARDISPVAL;
input [1:0] TXCHARISK;
input [15:0] TXDATA;
input TXFORCECRCERR;
input TXINHIBIT;
input TXPOLARITY;
input TXRESET;
input TXUSRCLK;
input TXUSRCLK2;

wire OPEN_CHBONDDONE;
wire [3:0] OPEN_CHBONDO;
wire [1:0] OPEN_RXCHARISCOMMA;
wire [1:0] OPEN_RXCHARISK;
wire [15:0] OPEN_RXDATA;
wire [1:0] OPEN_RXDISPERR;
wire [1:0] OPEN_RXNOTINTABLE;
wire [1:0] OPEN_RXRUNDISP;
wire [1:0] OPEN_TXKERR;
wire [1:0] OPEN_TXRUNDISP;

GT gt_1 (
	.CHBONDDONE (OPEN_CHBONDDONE),
	.CHBONDO (OPEN_CHBONDO),
	.CONFIGOUT (CONFIGOUT),
	.RXBUFSTATUS (RXBUFSTATUS),
	.RXCHARISCOMMA ({OPEN_RXCHARISCOMMA, RXCHARISCOMMA}),
	.RXCHARISK ({OPEN_RXCHARISK, RXCHARISK}),
	.RXCHECKINGCRC (RXCHECKINGCRC),
	.RXCLKCORCNT (RXCLKCORCNT),
	.RXCOMMADET (RXCOMMADET),
	.RXCRCERR (RXCRCERR),
	.RXDATA ({OPEN_RXDATA, RXDATA}),
	.RXDISPERR ({OPEN_RXDISPERR, RXDISPERR}),
	.RXLOSSOFSYNC (RXLOSSOFSYNC),
	.RXNOTINTABLE ({OPEN_RXNOTINTABLE, RXNOTINTABLE}),
	.RXREALIGN (RXREALIGN),
	.RXRECCLK (RXRECCLK),
	.RXRUNDISP ({OPEN_RXRUNDISP, RXRUNDISP}),
	.TXBUFERR (TXBUFERR),
	.TXKERR ({OPEN_TXKERR, TXKERR}),
	.TXN (TXN),
	.TXP (TXP),
	.TXRUNDISP ({OPEN_TXRUNDISP, TXRUNDISP}),
	.BREFCLK (BREFCLK),
	.BREFCLK2 (BREFCLK2),
        .CHBONDI (4'b0), 
	.CONFIGENABLE (CONFIGENABLE),
	.CONFIGIN (CONFIGIN),
        .ENCHANSYNC (1'b0),     
	.ENMCOMMAALIGN (ENMCOMMAALIGN),
	.ENPCOMMAALIGN (ENPCOMMAALIGN),
	.LOOPBACK (LOOPBACK),
	.POWERDOWN (POWERDOWN),
	.REFCLK (REFCLK),
	.REFCLK2 (REFCLK2),
	.REFCLKSEL (REFCLKSEL),
	.RXN (RXN),
	.RXP (RXP),
	.RXPOLARITY (RXPOLARITY),
	.RXRESET (RXRESET),
	.RXUSRCLK (RXUSRCLK),
	.RXUSRCLK2 (RXUSRCLK2),
	.TXBYPASS8B10B ({2'b0, TXBYPASS8B10B}),
	.TXCHARDISPMODE ({2'b0, TXCHARDISPMODE}),
	.TXCHARDISPVAL ({2'b0, TXCHARDISPVAL}),
	.TXCHARISK ({2'b0, TXCHARISK}),
	.TXDATA ({16'b0, TXDATA}),
	.TXFORCECRCERR (TXFORCECRCERR),
	.TXINHIBIT (TXINHIBIT),
	.TXPOLARITY (TXPOLARITY),
	.TXRESET (TXRESET),
	.TXUSRCLK (TXUSRCLK),
	.TXUSRCLK2 (TXUSRCLK2)
);

defparam gt_1.ALIGN_COMMA_MSB = "FALSE";
defparam gt_1.CHAN_BOND_LIMIT = 1;
defparam gt_1.CHAN_BOND_MODE = "OFF";
defparam gt_1.CHAN_BOND_OFFSET = 0;
defparam gt_1.CHAN_BOND_ONE_SHOT = "TRUE";
defparam gt_1.CHAN_BOND_SEQ_1_1 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_1_2 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_1_3 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_1_4 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_2_1 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_2_2 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_2_3 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_2_4 = 11'b00000000000;
defparam gt_1.CHAN_BOND_SEQ_2_USE = "FALSE";
defparam gt_1.CHAN_BOND_SEQ_LEN = 1;
defparam gt_1.CHAN_BOND_WAIT = 7;
defparam gt_1.CLK_COR_INSERT_IDLE_FLAG = CLK_COR_INSERT_IDLE_FLAG;
defparam gt_1.CLK_COR_KEEP_IDLE = CLK_COR_KEEP_IDLE;
defparam gt_1.CLK_COR_REPEAT_WAIT = CLK_COR_REPEAT_WAIT;
defparam gt_1.CLK_COR_SEQ_1_1 = 11'b00110111100;
defparam gt_1.CLK_COR_SEQ_1_2 = 11'b00001010000;
defparam gt_1.CLK_COR_SEQ_1_3 = 11'b00000000000;
defparam gt_1.CLK_COR_SEQ_1_4 = 11'b00000000000;
defparam gt_1.CLK_COR_SEQ_2_1 = 11'b00000000000;
defparam gt_1.CLK_COR_SEQ_2_2 = 11'b00000000000;
defparam gt_1.CLK_COR_SEQ_2_3 = 11'b00000000000;
defparam gt_1.CLK_COR_SEQ_2_4 = 11'b00000000000;
defparam gt_1.CLK_COR_SEQ_2_USE = "FALSE";
defparam gt_1.CLK_COR_SEQ_LEN = 2;
defparam gt_1.CLK_CORRECT_USE = "TRUE";
defparam gt_1.COMMA_10B_MASK = 10'b1111111000;
defparam gt_1.CRC_END_OF_PKT = "K29_7";
defparam gt_1.CRC_FORMAT = "ETHERNET";
defparam gt_1.CRC_START_OF_PKT = "K27_7";
defparam gt_1.DEC_MCOMMA_DETECT = "TRUE";
defparam gt_1.DEC_PCOMMA_DETECT = "TRUE";
defparam gt_1.DEC_VALID_COMMA_ONLY = "TRUE";
defparam gt_1.MCOMMA_10B_VALUE = 10'b1100000000;
defparam gt_1.MCOMMA_DETECT = "TRUE";
defparam gt_1.PCOMMA_10B_VALUE = 10'b0011111000;
defparam gt_1.PCOMMA_DETECT = "TRUE";
defparam gt_1.REF_CLK_V_SEL = REF_CLK_V_SEL;
defparam gt_1.RX_BUFFER_USE = "TRUE";
defparam gt_1.RX_CRC_USE = RX_CRC_USE;
defparam gt_1.RX_DATA_WIDTH = 2;
defparam gt_1.RX_DECODE_USE = "TRUE";
defparam gt_1.RX_LOS_INVALID_INCR = RX_LOS_INVALID_INCR;
defparam gt_1.RX_LOS_THRESHOLD = RX_LOS_THRESHOLD;
defparam gt_1.RX_LOSS_OF_SYNC_FSM = RX_LOSS_OF_SYNC_FSM;
defparam gt_1.SERDES_10B = SERDES_10B;
defparam gt_1.TERMINATION_IMP = TERMINATION_IMP;
defparam gt_1.TX_BUFFER_USE = "TRUE";
defparam gt_1.TX_CRC_FORCE_VALUE = TX_CRC_FORCE_VALUE;
defparam gt_1.TX_CRC_USE = TX_CRC_USE;
defparam gt_1.TX_DATA_WIDTH = 2;
defparam gt_1.TX_DIFF_CTRL = TX_DIFF_CTRL;
defparam gt_1.TX_PREEMPHASIS = TX_PREEMPHASIS;

endmodule
