`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:28 11/17/2019 
// Design Name: 
// Module Name:    ID 
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
module IF_ID(
    input clk,
    input reset,
    input en,
    input [31:0] instr,
    input [31:0] pc,
    output reg [31:0] IR_D,
    output reg [31:0] PC_D,
    output reg [31:0] PC4_D,
    output reg [31:0] PC8_D
    );
	 initial begin
		IR_D = 32'h00000000;
	 end
	 
	 always @(posedge clk) begin
		if(reset) begin
			IR_D <= 32'h00000000;
		end
		else begin
			if(en) begin
				IR_D <= instr;
				PC_D <= pc;
				PC4_D <= pc + 4;
				PC8_D <= pc +8;
			end
		end
	 end
	 
	 


endmodule
