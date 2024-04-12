`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:09 11/17/2019 
// Design Name: 
// Module Name:    ex 
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
module ID_EX(
    input clk,
    input reset,
    input [31:0] IR_D,
    input [31:0] PC_D,
    input [31:0] PC4_D,
    input [31:0] PC8_D,
    input [31:0] MFRSD,
    input [31:0] MFRTD,
    input [31:0] EXT,
    output reg [31:0] IR_E,
    output reg [31:0] PC_E,
    output reg [31:0] PC4_E,
    output reg [31:0] PC8_E,
    output reg [31:0] RS_E,
    output reg [31:0] RT_E,
    output reg [31:0] EXT_E
    );
	 initial begin
		IR_E = 32'h00000000;
	 end
	 always @(posedge clk) begin
		if(reset) begin
			IR_E <= 32'h00000000;
		end
		else begin
			IR_E <= IR_D;
			PC_E <= PC_D;
			PC4_E <= PC4_D;
			PC8_E <= PC8_D;
			RS_E <= MFRSD;
			RT_E <= MFRTD;
			EXT_E <= EXT;	
		end
	 end


endmodule
