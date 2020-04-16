// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:SPI_MUX:1.0
// IP Revision: 1

(* X_CORE_INFO = "SPI_MUX,Vivado 2018.3_AR71948" *)
(* CHECK_LICENSE_TYPE = "base_mb_SPI_MUX_1_0,SPI_MUX,{}" *)
(* CORE_GENERATION_INFO = "base_mb_SPI_MUX_1_0,SPI_MUX,{x_ipProduct=Vivado 2018.3_AR71948,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_MUX,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module base_mb_SPI_MUX_1_0 (
  sel,
  spi_ck0,
  spi_ck1,
  spi_mosi0,
  spi_mosi1,
  spi_ck,
  spi_mosi
);

input wire sel;
input wire spi_ck0;
input wire spi_ck1;
input wire spi_mosi0;
input wire spi_mosi1;
output wire spi_ck;
output wire spi_mosi;

  SPI_MUX inst (
    .sel(sel),
    .spi_ck0(spi_ck0),
    .spi_ck1(spi_ck1),
    .spi_mosi0(spi_mosi0),
    .spi_mosi1(spi_mosi1),
    .spi_ck(spi_ck),
    .spi_mosi(spi_mosi)
  );
endmodule
