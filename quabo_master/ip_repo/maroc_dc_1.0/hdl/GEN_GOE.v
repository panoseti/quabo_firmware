`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2022 06:14:11 PM
// Design Name: 
// Module Name: GEN_GOE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module GEN_GOE(
    input [255:0] trigger,
    output [1:0] goe 
    );

/***********************************stage0****************************/
wire [31:0] stage0_1;
GEN_GOE_STAGE0 goe_stage0_0 (
  .a(trigger[15:0]),      // input wire [15 : 0] a
  .spo(stage0_1[1:0])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_1 (
  .a(trigger[31:16]),      // input wire [15 : 0] a
  .spo(stage0_1[3:2])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_2 (
  .a(trigger[47:32]),      // input wire [15 : 0] a
  .spo(stage0_1[5:4])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_3 (
  .a(trigger[63:48]),      // input wire [15 : 0] a
  .spo(stage0_1[7:6])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_4 (
  .a(trigger[79:64]),      // input wire [15 : 0] a
  .spo(stage0_1[9:8])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_5 (
  .a(trigger[95:80]),      // input wire [15 : 0] a
  .spo(stage0_1[11:10])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_6 (
  .a(trigger[111:96]),      // input wire [15 : 0] a
  .spo(stage0_1[13:12])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_7 (
  .a(trigger[127:112]),      // input wire [15 : 0] a
  .spo(stage0_1[15:14])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_8 (
  .a(trigger[143:128]),      // input wire [15 : 0] a
  .spo(stage0_1[17:16])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_9 (
  .a(trigger[159:144]),      // input wire [15 : 0] a
  .spo(stage0_1[19:18])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_10 (
  .a(trigger[175:160]),      // input wire [15 : 0] a
  .spo(stage0_1[21:20])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_11 (
  .a(trigger[191:176]),      // input wire [15 : 0] a
  .spo(stage0_1[23:22])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_12 (
  .a(trigger[207:192]),      // input wire [15 : 0] a
  .spo(stage0_1[25:24])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_13 (
  .a(trigger[223:208]),      // input wire [15 : 0] a
  .spo(stage0_1[27:26])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_14 (
  .a(trigger[239:224]),      // input wire [15 : 0] a
  .spo(stage0_1[29:28])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE0 goe_stage0_15 (
  .a(trigger[255:240]),      // input wire [15 : 0] a
  .spo(stage0_1[31:30])  // output wire [1 : 0] spo
);

/***********************************stage1****************************/
wire [3:0] stage1_2;

GEN_GOE_STAGE1 goe_stage1_0 (
  .a(stage0_1[15:0]),      // input wire [15 : 0] a
  .spo(stage1_2[1:0])  // output wire [1 : 0] spo
);

GEN_GOE_STAGE1 goe_stage1_1 (
  .a(stage0_1[31:16]),      // input wire [15 : 0] a
  .spo(stage1_2[3:2])  // output wire [1 : 0] spo
);

/***********************************stage2****************************/

GEN_GOE_STAGE2 goe_stage2_0 (
  .a(stage1_2),      // input wire [15 : 0] a
  .spo(goe)  // output wire [1 : 0] spo
);
endmodule
