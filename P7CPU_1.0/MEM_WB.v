`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:28 11/17/2019 
// Design Name: 
// Module Name:    WB 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MEM_WB(
    input clk,
    input reset,
    input [31:0] IR_M,
    input [31:0] PC_M,
    input [31:0] PC4_M,
    input [31:0] PC8_M,
    input [31:0] AO_M,
	 input [31:0] MDO_M,
    input [31:0] DM,
    output reg [31:0] IR_W,
    output reg [31:0] PC_W,
    output reg [31:0] PC4_W,
    output reg [31:0] PC8_W,
    output reg [31:0] AO_W,
	 output reg [31:0] MDO_W,
    output reg [31:0] DR_W
    );
	 initial begin
		IR_W = 32'h00000000;
	 end
	 always @(posedge clk) begin
		if(reset) begin
			IR_W = 32'h00000000;
		end
		else begin
			IR_W = IR_M;
			PC_W = PC_M;
			PC4_W = PC4_M;
			PC8_W = PC8_M;
			AO_W = AO_M;
			MDO_W = MDO_M;
			DR_W = DM;
		end
	 end


endmodule
