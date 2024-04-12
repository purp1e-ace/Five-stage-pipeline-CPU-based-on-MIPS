`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:33 11/09/2019 
// Design Name: 
// Module Name:    controller 
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
module controller(
    input [5:0] Op,
    input [5:0] Func,
	 input [4:0] rt,
    output reg [2:0] RegDst,
    output reg [1:0]ALUASrc,
	 output reg [1:0]ALUBSrc,
    output reg RegWrite,
    output reg MemRead,
    output reg MemWrite,
    output reg [2:0] MemtoReg,
    output reg [1:0]EXTOp, 
	 output reg [2:0]B_Sel,
	 output reg if_j,
    output reg [2:0] PCSrc,
	 output reg [2:0] S_Sel,
	 output reg [2:0] D_Sel,
	 output reg [3:0] mul_div_op,
	 output reg Start,
    output reg [3:0] ALUCtrl
    );
	 
	 always @(*) begin
		case(Op)
			//R
			6'b000000: begin
				case(Func)
					//addu
					6'b100001: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//add
					6'b100000: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//subu
					6'b100011: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0001;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//sub
					6'b100010: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0001;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//and
					6'b100100: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0010;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//or
					6'b100101: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0011;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//nor
					6'b100111: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0100;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//xor
					6'b100110: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0101;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//jr
					6'b001000: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b001;
						RegWrite <= 0;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//jalr
					6'b001001: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b010;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b001;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//nop sll
					6'b000000: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b01;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0110;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//sllv
					6'b000100: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0110;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//srl
					6'b000010: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b01;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0111;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//srlv
					6'b000110: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0111;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//sra
					6'b000011: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b01;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b1000;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//srav
					6'b000111: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b1000;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//sltu
					6'b101011: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b1001;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//slt
					6'b101010: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b1010;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0000;
						Start <= 0;
					end
					//mult
					6'b011000: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 0;
						mul_div_op <= 4'b0000;
						Start <= 1;
					end
					//multu
					6'b011001: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 0;
						mul_div_op <= 4'b0001;
						Start <= 1;
					end
					//div
					6'b011010: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 0;
						mul_div_op <= 4'b0010;
						Start <= 1;
					end
					//divu
					6'b011011: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 0;
						mul_div_op <= 4'b0011;
						Start <= 1;
					end
					//mthi
					6'b010001: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 0;
						mul_div_op <= 4'b0100;
						Start <= 0;
					end
					//mtlo
					6'b010011: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b000;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 0;
						mul_div_op <= 4'b0101;
						Start <= 0;
					end
					//mfhi
					6'b010000: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b011;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0110;
						Start <= 0;
					end
					//mflo
					6'b010010: begin
						RegDst <= 3'b001;
						ALUBSrc <= 2'b00;
						EXTOp <= 2'b00;
						MemRead <= 0;
						MemWrite <= 0;
						B_Sel <= 0;
						S_Sel <= 3'b000;
						if_j <= 0;
						D_Sel <= 3'b000;
						ALUASrc <= 2'b00;
						MemtoReg <= 3'b011;
						ALUCtrl <= 4'b0000;
						PCSrc <= 3'b000;
						RegWrite <= 1;
						mul_div_op <= 4'b0111;
						Start <= 0;
					end
				endcase
			end
			//sw
			6'b101011: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 1;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//sh
			6'b101001: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 1;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b001;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//sb
			6'b101000: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 1;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b010;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//lw
			6'b100011: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 1;
				MemWrite <= 0;
				MemtoReg <= 3'b001;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//lh
			6'b100001: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 1;
				MemWrite <= 0;
				MemtoReg <= 3'b001;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b001;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//lhu
			6'b100101: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 1;
				MemWrite <= 0;
				MemtoReg <= 3'b001;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b010;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//lb
			6'b100000: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 1;
				MemWrite <= 0;
				MemtoReg <= 3'b001;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b011;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//lbu
			6'b100100: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 1;
				MemWrite <= 0;
				MemtoReg <= 3'b001;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b100;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//ori
			6'b001101: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b00;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0011;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//slti
			6'b001010: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b1010;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//sltiu
			6'b001011: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b1001;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//andi
			6'b001100: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b00;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0010;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//xori
			6'b001110: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b00;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0101;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//addiu
			6'b001001: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//addi
			6'b001110: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//lui
			6'b001111: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b01;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b10;
				B_Sel <= 0;
				if_j <= 0;
				PCSrc <= 3'b000;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//beq
			6'b000100: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b00;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 1;
				if_j <= 0;
				PCSrc <= 3'b010;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//bne
			6'b000101: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b00;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 2;
				if_j <= 0;
				PCSrc <= 3'b010;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//bgtz
			6'b000111: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b00;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 3;
				if_j <= 0;
				PCSrc <= 3'b010;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//blez
			6'b000110: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b00;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				B_Sel <= 4;
				if_j <= 0;
				PCSrc <= 3'b010;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//bgez bltz
			6'b000001: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b00;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b01;
				if(rt==1) B_Sel <= 5;
				else if(rt==0) B_Sel <= 6;
				if_j <= 0;
				PCSrc <= 3'b010;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//jal
			6'b000011: begin
				RegDst <= 3'b010;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b00;
				RegWrite <= 1;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b010;
				EXTOp <= 2'b00;
				B_Sel <= 0;
				if_j <= 1;
				PCSrc <= 3'b010;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
			//j
			6'b000010: begin
				RegDst <= 3'b000;
				ALUASrc <= 2'b00;
				ALUBSrc <= 2'b00;
				RegWrite <= 0;
				MemRead <= 0;
				MemWrite <= 0;
				MemtoReg <= 3'b000;
				EXTOp <= 2'b00;
				B_Sel <= 0;
				if_j <= 1;
				PCSrc <= 3'b010;
				ALUCtrl <= 4'b0000;
				S_Sel <= 3'b000;
				D_Sel <= 3'b000;
				mul_div_op <= 4'b0000;
				Start <= 0;
			end
		endcase
	 end


endmodule
