`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:07 11/18/2019 
// Design Name: 
// Module Name:    stall 
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
module stall(
	 input [31:0] IR_D,
    input [31:0] IR_E,
    input [31:0] IR_M,
    input [31:0] IR_W,
	 input Busy,
	 input Start,
    output IF_ID_en,
    output ID_EX_clr,
    output PC_en
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
	 
	 
	 `define cal_r_D (IR_D[`op]==`R&&IR_D[`func]!=`jalr&&IR_D[`func]!=`jr&&IR_D[`func]!=`mfhi&&IR_D[`func]!=`mflo&&IR_D!=0)
	 `define cal_r_E (IR_E[`op]==`R&&IR_E[`func]!=`jalr&&IR_E[`func]!=`jr&&IR_E[`func]!=`mfhi&&IR_E[`func]!=`mflo&&IR_E!=0)
	 `define cal_i_D (IR_D[`op]==`lui||IR_D[`op]==`ori||IR_D[`op]==`addi||IR_D[`op]==`addiu||IR_D[`op]==`andi||IR_D[`op]==`xori||IR_D[`op]==`slti||IR_D[`op]==`sltiu)
	 `define cal_i_E (IR_E[`op]==`lui||IR_E[`op]==`ori||IR_E[`op]==`addi||IR_E[`op]==`addiu||IR_E[`op]==`andi||IR_E[`op]==`xori||IR_E[`op]==`slti||IR_E[`op]==`sltiu)
	 `define load_D (IR_D[`op]==`lw||IR_D[`op]==`lh||IR_D[`op]==`lhu||IR_D[`op]==`lb||IR_D[`op]==`lbu)
	 `define load_E (IR_E[`op]==`lw||IR_E[`op]==`lh||IR_E[`op]==`lhu||IR_E[`op]==`lb||IR_E[`op]==`lbu)
	 `define load_M (IR_M[`op]==`lw||IR_M[`op]==`lh||IR_M[`op]==`lhu||IR_M[`op]==`lb||IR_M[`op]==`lbu)
	 `define store_D (IR_D[`op]==`sw||IR_D[`op]==`sh||IR_D[`op]==`sb)
	 `define beq_D (IR_D[`op]==`beq||IR_D[`op]==`bne||IR_D[`op]==`bgtz||IR_D[`op]==`blez||(IR_D[`op]==6'b000001&&(IR_D[`rt]==5'b00000||IR_D[`rt]==5'b00001)))
	 `define jr_D (IR_D[`op]==`R&&IR_D[`func]==`jr)
	 `define jalr_D (IR_D[`op]==`R&&IR_D[`func]==`jalr)
	 `define muldiv_D (IR_D[`op]==`R&&(IR_D[`func]==`mult||IR_D[`func]==`multu||IR_D[`func]==`div||IR_D[`func]==`divu||IR_D[`func]==`mflo||IR_D[`func]==`mfhi||IR_D[`func]==`mthi||IR_D[`func]==`mtlo))
	 
	 wire stall, stall_busy, stall_b, stall_cal_r, stall_cal_i, stall_load, stall_store, stall_jr, stall_jalr;
	  
	 assign stall_b = (`beq_D & `cal_r_E &(IR_D[`rs]==IR_E[`rd]||IR_D[`rt]==IR_E[`rd]))||
						   (`beq_D & `cal_i_E &(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt]))||
						   (`beq_D & `load_E &(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt]))||
						   (`beq_D & `load_M &(IR_D[`rs]==IR_M[`rt]||IR_D[`rt]==IR_M[`rt]));
	 assign stall_cal_r = (`cal_r_D) && (`load_E) && (IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt]);
	 assign stall_cal_i = (`cal_i_D) & (`load_E) & (IR_D[`rs]==IR_E[`rt]);
	 assign stall_load = (`load_D) & (`load_E) & (IR_D[`rs]==IR_E[`rt]);
	 assign stall_store = (`store_D) & (`load_E) & (IR_D[`rs]==IR_E[`rt]);
	 assign stall_jr = (`jr_D & (`cal_r_E) & (IR_D[`rs]==IR_E[`rd]&IR_E[`rd]!=0))||
							 (`jr_D & (`cal_i_E) & (IR_D[`rs]==IR_E[`rt]&IR_E[`rt]!=0))||
							 (`jr_D & (`load_E)  & (IR_D[`rs]==IR_E[`rt]&IR_E[`rt]!=0))||
							 (`jr_D & (`load_M)  & (IR_D[`rs]==IR_M[`rt]&IR_M[`rt]!=0));
	 assign stall_jalr =  (`jalr_D & (`cal_r_E) & (IR_D[`rs]==IR_E[`rd]&IR_E[`rd]!=0))||
								 (`jalr_D & (`cal_i_E) & (IR_D[`rs]==IR_E[`rt]&IR_E[`rt]!=0))||
								 (`jalr_D & (`load_E)  & (IR_D[`rs]==IR_E[`rt]&IR_E[`rt]!=0))||
								 (`jalr_D & (`load_M)  & (IR_D[`rs]==IR_M[`rt]&IR_M[`rt]!=0));
								 
	 assign stall_busy = (`muldiv_D & (Busy||Start));					 
	 assign stall = stall_busy||stall_b||stall_cal_r||stall_cal_i||stall_load||stall_store||stall_jr||stall_jalr;
	 
	 assign IF_ID_en = !stall;
	 assign ID_EX_clr = stall;
	 assign PC_en = !stall;


endmodule
