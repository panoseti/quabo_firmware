`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 02:57:23 PM
// Design Name: 
// Module Name: ext_trig
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


module ext_trig(
    input pixel_trig_maroc,
    output ext_trig_maroc,
    inout ext_trig_io
    );

wire ext_trig;

IOBUF #(
   .DRIVE(16), // Specify the output drive strength
   .IBUF_LOW_PWR("FALSE"),  // Low Power - "TRUE", High Performance = "FALSE"
   .IOSTANDARD("LVCMOS33"), // Specify the I/O standard
   .SLEW("FAST") // Specify the output slew rateIOBUF_PPS(
)IOBUF_EXT_TRIG(
.I(1'b1),
.O(ext_trig),
.T(~pixel_trig_maroc), //high-input; low-output
.IO(ext_trig_io)
);

/*
IOBUF_INTERMDISABLE #(
    .DRIVE(16), // Specify the output drive strength
    .IBUF_LOW_PWR("FALSE"),  // Low Power - "TRUE", High Performance = "FALSE" 
    .IOSTANDARD("LVCMOS33"), // Specify the I/O standard
    .SLEW("FAST"),          // Specify the output slew rate
    .USE_IBUFDISABLE("TRUE") // Use IBUFDISABLE function, "TRUE" or "FALSE" 
 ) IOBUF_INTERMDISABLE_inst (
      .O(ext_trig),     // Buffer output
      .IO(ext_trig_io),   // Buffer inout port (connect directly to top-level port)
      .I(1'b1),     // Buffer input
      .IBUFDISABLE(1'b1), // Input disable input, high=disable
      .INTERMDISABLE(1'b1), // Input termination disable input
      .T(~pixel_trig_maroc)      // 3-state enable input, high=input, low=output
   );
*/   
assign ext_trig_maroc = ext_trig;    

endmodule
