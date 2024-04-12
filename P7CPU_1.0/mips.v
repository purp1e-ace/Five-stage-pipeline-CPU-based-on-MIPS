`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:25 11/17/2019 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
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
	 `define jal 6'b000011
	 wire PC_en;
	 wire [31:0] next_pc;
	 wire [31:0] pc;
	 wire [31:0] instr;
	 wire IF_ID_en;
	 wire [31:0] IR_D; 
	 wire [31:0] PC_D;
	 wire [31:0] PC4_D;
	 wire [31:0] PC8_D;
	 wire [1:0] EXTOp;
	 wire [2:0]B_Sel;
	 wire if_j;
	 wire [2:0] PCSrc;
	 wire RegWrite;
	 wire [4:0] RF_A3;
	 wire [31:0] RF_WD;
	 wire [31:0] RF_RD1;
	 wire [31:0] RF_RD2;
	 wire [31:0] MFRSD;
	 wire [31:0] MFRTD;
	 wire equal;
	 wire [31:0] EXT_out;
	 wire [31:0] PC4;
	 assign PC4 = pc + 4; 
	 wire ID_EX_clr;
	 wire [31:0] IR_E;
	 wire [31:0] PC_E;
	 wire [31:0] PC4_E;
	 wire [31:0] PC8_E;
	 wire [31:0] RS_E;
	 wire [31:0] RT_E;
	 wire [31:0] EXT_E;
	 wire [3:0] ALUCtrl;
	 wire [1:0] ALUASrc;
	 wire [1:0] ALUBSrc;
	 wire [31:0] ALU_A;
	 wire [31:0] ALU_B;
	 wire [31:0] ALU_out;
	 wire [31:0] MFRSE;
	 wire [31:0] MFRTE;
	 wire [31:0] IR_M;
	 wire [31:0] PC_M;
	 wire [31:0] PC4_M;
	 wire [31:0] PC8_M;
	 wire [31:0] RT_M;
	 wire [31:0] AO_M;
	 wire [31:0] MFRTM;
	 wire MemRead;
	 wire MemWrite;
	 wire [31:0] DM_out;
	 wire [31:0] IR_W;
	 wire [31:0] PC_W;
	 wire [31:0] PC4_W;
	 wire [31:0] PC8_W;
	 wire [31:0] AO_W;
	 wire [31:0] DR_W;
	 wire [2:0] RegDst;
	 wire [2:0] MemtoReg;
	 wire [2:0] forwardRSD;
	 wire [2:0] forwardRTD;
	 wire [2:0] forwardRSE;
	 wire [2:0] forwardRTE;
	 wire [2:0] forwardRTM;
	 wire greater;
	 wire less;
	 wire [3:0] mul_div_op;
	 wire Start;
	 wire Busy;
	 wire [31:0] Lo;
	 wire [31:0] Hi;
	 wire [31:0] MDO_M;
	 wire [31:0] MD_out;
	 wire [2:0] S_Sel;
	 wire [31:0] MDO_W;
	 wire [31:0] DR_W_update;
	 wire [2:0] D_Sel;
	 wire [4:0] EXC_F;
	 //F
	 pc my_pc(.clk(clk), .reset(reset), .en(PC_en), .next_pc(next_pc), .pc(pc), .EXC_F(EXC_F));
	 im my_im(.pc(pc), .instr(instr));
	 //F
	 IF_ID my_IF_ID(.clk(clk), .reset(reset), .en(IF_ID_en), .instr(instr), .pc(pc), .IR_D(IR_D), .PC_D(PC_D), .PC4_D(PC4_D), .PC8_D(PC8_D));
	 //D
	 controller my_controller_D(.Op(IR_D[`op]), .Func(IR_D[`func]), .rt(IR_D[`rt]), .EXTOp(EXTOp), .B_Sel(B_Sel), .if_j(if_j), .PCSrc(PCSrc));
	 grf my_grf(.clk(clk), .reset(reset), .RegWrite(RegWrite), .RA1(IR_D[`rs]), .RA2(IR_D[`rt]), .WA(RF_A3), .WD(RF_WD), .PC(PC_W), .RD1(RF_RD1), .RD2(RF_RD2));
	 cmp my_cmp(.RF_RD1(MFRSD), .RF_RD2(MFRTD), .equal(equal), .greater(greater), .less(less));
	 ext my_ext(.in(IR_D[15:0]), .EXTOp(EXTOp), .out(EXT_out));
	 npc my_npc(.PC4(PC4), .PC4D(PC4_D), .I26(IR_D[25:0]), .MFRSD(MFRSD), .equal(equal), .greater(greater), .less(less), .b(B_Sel), .if_j(if_j), .PC_sel(PCSrc), .next_pc(next_pc));
	 //D
	 ID_EX my_ID_EX(.clk(clk), .reset(reset||ID_EX_clr), .IR_D(IR_D), .PC_D(PC_D), .PC4_D(PC4_D), .PC8_D(PC8_D), .MFRSD(MFRSD), .MFRTD(MFRTD), .EXT(EXT_out), .IR_E(IR_E), .PC_E(PC_E), .PC4_E(PC4_E), .PC8_E(PC8_E), .RS_E(RS_E), .RT_E(RT_E), .EXT_E(EXT_E));
	 //E
	 controller my_controller_E(.Op(IR_E[`op]), .Func(IR_E[`func]), .ALUCtrl(ALUCtrl), .ALUASrc(ALUASrc), .ALUBSrc(ALUBSrc), .mul_div_op(mul_div_op), .Start(Start));
	 alu my_alu(.A(ALU_A), .B(ALU_B), .ALUCtrl(ALUCtrl), .Result(ALU_out));
	 mul_div my_mul_div(.clk(clk), .reset(reset), .A(MFRSE), .B(MFRTE), .mul_div_op(mul_div_op), .Start(Start), .Busy(Busy), .Lo(Lo), .Hi(Hi));
	 //E
	 EX_MEM my_EX_MEM(.clk(clk), .reset(reset), .IR_E(IR_E), .PC_E(PC_E), .PC4_E(PC4_E), .PC8_E(PC8_E), .ALU(ALU_out), .MUL_DIV(MD_out), .RT_E(MFRTE), .IR_M(IR_M), .PC_M(PC_M), .PC4_M(PC4_M), .PC8_M(PC8_M), .AO_M(AO_M), .MDO_M(MDO_M), .RT_M(RT_M));
	 //M
	 controller my_controller_M(.Op(IR_M[`op]), .Func(IR_M[`func]), .MemRead(MemRead), .MemWrite(MemWrite), .S_Sel(S_Sel));
	 dm my_dm(.clk(clk), .reset(reset), .MemRead(MemRead), .MemWrite(MemWrite), .S_Sel(S_Sel), .MemAddr(AO_M), .WD(MFRTM), .PC(PC_M), .RD(DM_out));
	 //M
	 MEM_WB my_MEM_WB(.clk(clk), .reset(reset), .IR_M(IR_M), .PC_M(PC_M), .PC4_M(PC4_M), .PC8_M(PC8_M), .AO_M(AO_M), .MDO_M(MDO_M), .DM(DM_out), .IR_W(IR_W), .PC_W(PC_W), .PC4_W(PC4_W), .PC8_W(PC8_W), .AO_W(AO_W), .MDO_W(MDO_W), .DR_W(DR_W));
	 //W
	 controller my_controller_W(.Op(IR_W[`op]), .Func(IR_W[`func]), .RegDst(RegDst), .RegWrite(RegWrite), .MemtoReg(MemtoReg), .D_Sel(D_Sel));
	 dm_ext my_dm_ext(.in(DR_W), .MemAddr(AO_W[1:0]), .D_Sel(D_Sel), .out(DR_W_update));
	 //W
	 ctrl_mux my_ctrl_mux(.EXT_E(EXT_E), .IR_E(IR_E), .IR_W(IR_W), .DR_W(DR_W_update), .AO_W(AO_W), .MDO_W(MDO_W), .PC8_W(PC8_W), .MFRSE(MFRSE), .MFRTE(MFRTE), .Lo(Lo), .Hi(Hi), .ALUASrc(ALUASrc), .ALUBSrc(ALUBSrc), .RegDst(RegDst), .MemtoReg(MemtoReg), .mul_div_op(mul_div_op), .ALU_A(ALU_A), .ALU_B(ALU_B), .RF_A3(RF_A3), .RF_WD(RF_WD), .MD_out(MD_out));
	 forward_mux my_forward_mux(.RS_E(RS_E), .RT_E(RT_E), .RT_M(RT_M), .RF_WD(RF_WD), .AO_M(AO_M), .MDO_M(MDO_M), .MD_out(MD_out), .PC8_E(PC8_E), .PC8_M(PC8_M), .PC8_W(PC8_W), .RF_RD1(RF_RD1), .RF_RD2(RF_RD2), .forwardRSD(forwardRSD), .forwardRTD(forwardRTD), .forwardRSE(forwardRSE), .forwardRTE(forwardRTE), .forwardRTM(forwardRTM), .MFRSD(MFRSD), .MFRTD(MFRTD), .MFRSE(MFRSE), .MFRTE(MFRTE), .MFRTM(MFRTM));
	 stall my_stall(.IR_D(IR_D), .IR_E(IR_E), .IR_M(IR_M), .IR_W(IR_W), .Busy(Busy), .Start(Start), .IF_ID_en(IF_ID_en), .ID_EX_clr(ID_EX_clr), .PC_en(PC_en));
	 forward my_forward(.IR_D(IR_D), .IR_E(IR_E), .IR_M(IR_M), .IR_W(IR_W), .forwardRSD(forwardRSD), .forwardRTD(forwardRTD), .forwardRSE(forwardRSE), .forwardRTE(forwardRTE), .forwardRTM(forwardRTM));


endmodule
