`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:25 11/17/2019 
// Design Name: 
// Module Name:    hazard_unit 
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
module hazard_unit(
    input [31:0] IR_D,
    input [31:0] IR_E,
    input [31:0] IR_M,
    input [31:0] IR_W,
    output reg IF_ID_en,
    output reg ID_EX_clr,
    output reg PC_en,
    output [2:0] forwardRSD,
    output [2:0] forwardRTD,
    output [2:0] forwardRSE,
    output [2:0] forwardRTE,
    output [2:0] forwardRTM
    );
	 `define op 31:26
	 `define func 5:0
	 `define rs 25:21
	 `define rt 20:16
	 `define rd 15:11
	 `define R 6'b000000
	 `define jr 6'b001000
	 `define jalr 6'b001001
	 `define beq 6'b000100
	 `define lui 6'b001111
	 `define ori 6'b001101
	 `define lw 6'b100011
	 `define sw 6'b101011
	 
	 //beq_stall
	 always @(*) begin
		if(IR_D[`op]==`beq) begin
		
			if(IR_E[`op]==`R && IR_E[`func]!=`jr && IR_E[`func]!=`jalr && IR_E[`func]!=0) begin
				if(IR_D[`rs]==IR_E[`rd]||IR_D[`rt]==IR_E[`rd]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_E[`op]==`lui||IR_E[`op]==`ori) begin
				if(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_E[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_M[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
		end
	 end
	 
	 //cal_r_stall
	 always @(*) begin
		if(IR_D[`op]==`R && IR_D[`func]!=`jr && IR_D[`func]!=`jalr && IR_D[`func]!=0) begin
		
			if(IR_E[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]||IR_D[`rt]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
		end
	 end
	 
	 //cal_i_stall
	 always @(*) begin
		if(IR_D[`op]==`lui||IR_D[`op]==`ori) begin
		
			if(IR_E[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
		end
	 end
	 
	 //load_stall
	 always @(*) begin
		if(IR_D[`op]==`lw) begin
		
			if(IR_E[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
		end
	 end
	 
	 //store_stall
	 always @(*) begin
		if(IR_D[`op]==`sw) begin
		
			if(IR_E[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
		end
	 end
	 
	 //jr_stall
	 always @(*) begin
		if(IR_D[`op]==`R && IR_D[`func]==`jr) begin
		
			if(IR_E[`op]==`R && IR_E[`func]!=`jr && IR_E[`func]!=`jalr && IR_E[`func]!=0) begin
				if(IR_D[`rs]==IR_E[`rd]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_E[`op]==`lui||IR_E[`op]==`ori) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_E[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_M[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
		end
	 end
	 
	 //jalr_stall
	 always @(*) begin
		if(IR_D[`op]==`R && IR_D[`func]==`jalr) begin
		
			if(IR_E[`op]==`R && IR_E[`func]!=`jr && IR_E[`func]!=`jalr && IR_E[`func]!=0) begin
				if(IR_D[`rs]==IR_E[`rd]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_E[`op]==`lui||IR_E[`op]==`ori) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_E[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
			if(IR_M[`op]==`lw) begin
				if(IR_D[`rs]==IR_E[`rt]) begin
					IF_ID_en = 0;
					ID_EX_clr = 1;
					PC_en = 0;
				end
			end
			
		end
	 end


endmodule
