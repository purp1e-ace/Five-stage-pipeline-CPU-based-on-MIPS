`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:49 11/18/2019 
// Design Name: 
// Module Name:    forward 
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
module forward(
	 input [31:0] IR_D,
    input [31:0] IR_E,
    input [31:0] IR_M,
    input [31:0] IR_W,
    output reg [2:0] forwardRSD,
    output reg [2:0] forwardRTD,
    output reg [2:0] forwardRSE,
    output reg [2:0] forwardRTE,
    output reg [2:0] forwardRTM
    );
	 `define op 31:26
	 `define func 5:0
	 `define rs 25:21
	 `define rt 20:16
	 `define rd 15:11
	 `define R 6'b000000
	 `define lw 6'b100011
	 `define lb 6'b100000
	 `define lbu 6'b100100
	 `define lh 6'b100001
	 `define lhu 6'b100101
	 `define sw 6'b101011
	 `define sb 6'b101000
	 `define sh 6'b101001
	 `define lui 6'b001111
	 `define ori 6'b001101
	 `define andi 6'b001100
	 `define xori 6'b001110
	 `define addi 6'b001000
	 `define addiu 6'b001001
	 `define slti 6'b001010
	 `define sltiu 6'b001011
	 `define beq 6'b000100
	 `define bne 6'b000101
	 `define bgtz 6'b000111
	 `define blez 6'b000110
	 `define jal 6'b000011
	 `define jr 6'b001000
	 `define jalr 6'b001001
	 `define mult 6'b011000
	 `define multu 6'b011001
	 `define div 6'b011010
	 `define divu 6'b011011 
	 `define mfhi 6'b010000
	 `define mflo 6'b010010
	 `define mthi 6'b010001
	 `define mtlo 6'b010011
	 
	 `define cal_r_M (IR_M[`op]==`R&&IR_M[`func]!=`jalr&&IR_M[`func]!=`jr&&IR_M[`func]!=`mfhi&&IR_M[`func]!=`mflo&&IR_M!=0)
	 `define cal_r_W (IR_W[`op]==`R&&IR_W[`func]!=`jalr&&IR_W[`func]!=`jr&&IR_W[`func]!=`mfhi&&IR_W[`func]!=`mflo&&IR_W!=0)
	 `define cal_i_M (IR_M[`op]==`lui||IR_M[`op]==`ori||IR_M[`op]==`addi||IR_M[`op]==`addiu||IR_M[`op]==`andi||IR_M[`op]==`xori||IR_M[`op]==`slti||IR_M[`op]==`sltiu)
	 `define cal_i_W (IR_W[`op]==`lui||IR_W[`op]==`ori||IR_W[`op]==`addi||IR_W[`op]==`addiu||IR_W[`op]==`andi||IR_W[`op]==`xori||IR_W[`op]==`slti||IR_W[`op]==`sltiu)
	 `define load_W (IR_W[`op]==`lw||IR_W[`op]==`lh||IR_W[`op]==`lhu||IR_W[`op]==`lb||IR_W[`op]==`lbu)
	 `define jalr_E (IR_E[`op]==`R&&IR_E[`func]==`jalr)
	 `define jalr_M (IR_M[`op]==`R&&IR_M[`func]==`jalr)
	 `define jalr_W (IR_W[`op]==`R&&IR_W[`func]==`jalr)
	 `define jal_E (IR_E[`op]==`jal)
	 `define jal_M (IR_M[`op]==`jal)
	 `define jal_W (IR_W[`op]==`jal)
	 `define mf_E (IR_E[`op]==`R&&(IR_E[`func]==`mfhi||IR_E[`func]==`mflo))
	 `define mf_M (IR_M[`op]==`R&&(IR_M[`func]==`mfhi||IR_M[`func]==`mflo))
	 `define mf_W (IR_W[`op]==`R&&(IR_W[`func]==`mfhi||IR_W[`func]==`mflo))
	 
	 initial begin
		forwardRSD = 0;
		forwardRTD = 0;
		forwardRSE = 0;
		forwardRTE = 0;
		forwardRTM = 0;
	 end
	 //MFRSD
	 always @(*) begin
	 if(IR_D[`rs]!=0) begin
		if((`jal_E&&IR_D[`rs]==31)||(`jalr_E&&IR_D[`rs]==IR_E[`rd])) begin
			forwardRSD = 3;
		end
		else if(`mf_E&&IR_D[`rs]==IR_E[`rd]) begin
			forwardRSD = 6;
		end
		else if((`cal_r_M&&IR_D[`rs]==IR_M[`rd])||(`cal_i_M&&IR_D[`rs]==IR_M[`rt])) begin
			forwardRSD = 1;
		end
		else if((`jal_M&&IR_D[`rs]==31)||(`jalr_M&&IR_D[`rs]==IR_M[`rd])) begin
			forwardRSD = 4;
		end
		else if(`mf_M&&IR_D[`rs]==IR_M[`rd]) begin
			forwardRSD = 7;
		end
		else if((`cal_r_W&&IR_D[`rs]==IR_W[`rd])||(`cal_i_W&&IR_D[`rs]==IR_W[`rt])||(`load_W&&IR_D[`rs]==IR_W[`rt])||(`mf_W&&IR_D[`rs]==IR_W[`rd])) begin
			forwardRSD = 2;
		end
		else if((`jal_W&&IR_D[`rs]==31)||(`jalr_W&&IR_D[`rs]==IR_W[`rd])) begin
			forwardRSD = 5;
		end
		else begin
			forwardRSD = 0;
		end
	 end
	 else begin
			forwardRSD = 0;
	 end
	 end
	 
	 //MFRTD
	 always @(*) begin
	 if(IR_D[`rt]!=0) begin
		if((`jal_E&&IR_D[`rt]==31)||(`jalr_E&&IR_D[`rt]==IR_E[`rd])) begin
			forwardRTD = 3;
		end
		else if(`mf_E&&IR_D[`rt]==IR_E[`rd]) begin
			forwardRTD = 6;
		end
		else if((`cal_r_M&&IR_D[`rt]==IR_M[`rd])||(`cal_i_M&&IR_D[`rt]==IR_M[`rt])) begin
			forwardRTD = 1;
		end
		else if((`jal_M&&IR_D[`rt]==31)||(`jalr_M&&IR_D[`rt]==IR_M[`rd])) begin
			forwardRTD = 4;
		end
		else if(`mf_M&&IR_D[`rt]==IR_M[`rd]) begin
			forwardRTD = 7;
		end
		else if((`cal_r_W&&IR_D[`rt]==IR_W[`rd])||(`cal_i_W&&IR_D[`rt]==IR_W[`rt])||(`load_W&&IR_D[`rt]==IR_W[`rt])||(`mf_W&&IR_D[`rt]==IR_W[`rd])) begin
			forwardRTD = 2;
		end
		else if((`jal_W&&IR_D[`rt]==31)||(`jalr_W&&IR_D[`rt]==IR_W[`rd])) begin
			forwardRTD = 5;
		end
		else begin
			forwardRTD = 0;
		end
	 end
	 else begin
			forwardRTD = 0;
	 end
	 end
	 
	 //MFRSE
	 always @(*) begin
	 if(IR_E[`rs]!=0) begin
		if((`cal_r_M&&IR_E[`rs]==IR_M[`rd])||(`cal_i_M&&IR_E[`rs]==IR_M[`rt])) begin
			forwardRSE = 1;
		end
		else if((`jal_M&&IR_E[`rs]==31)||(`jalr_M&&IR_E[`rs]==IR_M[`rd])) begin
			forwardRSE = 4;
		end
		else if(`mf_M&&IR_E[`rs]==IR_M[`rd]) begin
			forwardRSE = 7;
		end
		else if((`cal_r_W&&IR_E[`rs]==IR_W[`rd])||(`cal_i_W&&IR_E[`rs]==IR_W[`rt])||(`load_W&&IR_E[`rs]==IR_W[`rt])||(`mf_W&&IR_E[`rs]==IR_W[`rd])) begin
			forwardRSE = 2;
		end
		else if((`jal_W&&IR_E[`rs]==31)||(`jalr_W&&IR_E[`rs]==IR_W[`rd])) begin
			forwardRSE = 5;
		end
		else begin
			forwardRSE = 0;
		end
	 end
	 else begin
			forwardRSE = 0;
	 end
	 end
	 
	 //MFRTE
	 always @(*) begin
	 if(IR_E[`rt]!=0) begin
		if((`cal_r_M&&IR_E[`rt]==IR_M[`rd])||(`cal_i_M&&IR_E[`rt]==IR_M[`rt])) begin
			forwardRTE = 1;
		end
		else if((`jal_M&&IR_E[`rt]==31)||(`jalr_M&&IR_E[`rt]==IR_M[`rd])) begin
			forwardRTE = 4;
		end
		else if(`mf_M&&IR_E[`rt]==IR_M[`rd]) begin
			forwardRTE = 7;
		end
		else if((`cal_r_W&&IR_E[`rt]==IR_W[`rd])||(`cal_i_W&&IR_E[`rt]==IR_W[`rt])||(`load_W&&IR_E[`rt]==IR_W[`rt])||(`mf_W&&IR_E[`rt]==IR_W[`rd])) begin
			forwardRTE = 2;
		end
		else if((`jal_W&&IR_E[`rt]==31)||(`jalr_W&&IR_E[`rt]==IR_W[`rd])) begin
			forwardRTE = 5;
		end
		else begin
			forwardRTE = 0;
		end
	 end
	 else begin
			forwardRTE = 0;
	 end
	 end
	 
	 //MFRTM
	 always @(*) begin
	 if(IR_M[`rt]!=0) begin
		if((`cal_r_W&&IR_M[`rt]==IR_W[`rd])||(`cal_i_W&&IR_M[`rt]==IR_W[`rt])||(`load_W&&IR_M[`rt]==IR_W[`rt])||(`mf_W&&IR_M[`rt]==IR_W[`rd])) begin
			forwardRTM = 2;
		end
		else if((`jal_W&&IR_M[`rt]==31)||(`jalr_W&&IR_M[`rt]==IR_W[`rd])) begin
			forwardRTM = 5;
		end
		else begin
			forwardRTM = 0;
		end
	 end
	 else begin
			forwardRTM = 0;
	 end
	 end

endmodule

