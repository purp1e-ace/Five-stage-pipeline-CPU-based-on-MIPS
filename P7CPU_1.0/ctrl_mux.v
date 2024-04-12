`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:12 11/17/2019 
// Design Name: 
// Module Name:    mux 
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
module ctrl_mux(
    input [31:0] EXT_E,
    input [31:0] IR_E,
    input [31:0] IR_W,
    input [31:0] DR_W,
    input [31:0] AO_W,
	 input [31:0] MDO_W,
    input [31:0] PC8_W,
    input [31:0] MFRSE,
    input [31:0] MFRTE,
	 input [31:0] Hi,
	 input [31:0] Lo,
    input [1:0] ALUASrc,
    input [1:0] ALUBSrc,
	 input [3:0] mul_div_op,
    input [2:0] RegDst,
    input [2:0] MemtoReg,
    output reg [31:0] ALU_A,
    output reg [31:0] ALU_B,
    output reg [4:0] RF_A3,
    output reg [31:0] RF_WD,
	 output reg [31:0] MD_out
    );
	 
	 always @(*) begin
		case(ALUASrc)
			2'b00: ALU_A = MFRSE;
			2'b01: ALU_A = {27'b0 ,IR_E[10:6]};
		endcase
	 end
	 
	 always @(*) begin
		case(ALUBSrc)
			2'b00: ALU_B = MFRTE;
			2'b01: ALU_B = EXT_E;
		endcase
	 end
	 
	 always @(*) begin
		case(RegDst)
			3'b000: RF_A3 = IR_W[20:16];
			3'b001: RF_A3 = IR_W[15:11];
			3'b010: RF_A3 = 5'd31;
		endcase
	 end
	 
	 always @(*) begin
		case(MemtoReg)
			3'b000: RF_WD = AO_W;
			3'b001: RF_WD = DR_W;
			3'b010: RF_WD = PC8_W;
			3'b011: RF_WD = MDO_W;
		endcase
	 end
	 
	 always @(*) begin
		case(mul_div_op)
			4'b0110: MD_out = Hi;
			4'b0111: MD_out = Lo;
			default: MD_out = 0;
		endcase
	 end


endmodule
