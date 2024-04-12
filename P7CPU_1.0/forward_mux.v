`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:24 11/17/2019 
// Design Name: 
// Module Name:    forward_mux 
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
module forward_mux(
    input [31:0] RS_E,
    input [31:0] RT_E,
    input [31:0] RT_M,
    input [31:0] RF_WD,
    input [31:0] AO_M,
	 input [31:0] MDO_M,
	 input [31:0] MD_out,
    input [31:0] PC8_E,
    input [31:0] PC8_M,
    input [31:0] PC8_W,
    input [31:0] RF_RD1,
    input [31:0] RF_RD2,
    input [2:0] forwardRSD,
    input [2:0] forwardRTD,
    input [2:0] forwardRSE,
    input [2:0] forwardRTE,
    input [2:0] forwardRTM,
    output reg [31:0] MFRSD,
    output reg [31:0] MFRTD,
    output reg [31:0] MFRSE,
    output reg [31:0] MFRTE,
    output reg [31:0] MFRTM
    );
	 
	 always @(*) begin
		case(forwardRSD)
			3'b000: MFRSD = RF_RD1;
			3'b001: MFRSD = AO_M;
			3'b010: MFRSD = RF_WD;
			3'b011: MFRSD = PC8_E;
			3'b100: MFRSD = PC8_M;
			3'b101: MFRSD = PC8_W;
			3'b110: MFRSD = MD_out;
			3'b111: MFRSD = MDO_M;
		endcase
	 end
	 
	 always @(*) begin
		case(forwardRTD)
			3'b000: MFRTD = RF_RD2;
			3'b001: MFRTD = AO_M;
			3'b010: MFRTD = RF_WD;
			3'b011: MFRTD = PC8_E;
			3'b100: MFRTD = PC8_M;
			3'b101: MFRTD = PC8_W;
			3'b110: MFRTD = MD_out;
			3'b111: MFRTD = MDO_M;
		endcase
	 end
	 
	 always @(*) begin
		case(forwardRSE)
			3'b000: MFRSE = RS_E;
			3'b001: MFRSE = AO_M;
			3'b010: MFRSE = RF_WD;
			3'b100: MFRSE = PC8_M;
			3'b101: MFRSE = PC8_W;
			3'b111: MFRSE = MDO_M;
		endcase
	 end
	 
	 always @(*) begin
		case(forwardRTE)
			3'b000: MFRTE = RT_E;
			3'b001: MFRTE = AO_M;
			3'b010: MFRTE = RF_WD;
			3'b100: MFRTE = PC8_M;
			3'b101: MFRTE = PC8_W;
			3'b111: MFRTE = MDO_M;
		endcase
	 end
	 
	 always @(*) begin
		case(forwardRTM)
			3'b000: MFRTM = RT_M;
			3'b010: MFRTM = RF_WD;
			3'b101: MFRTM = PC8_W;
		endcase
	 end


endmodule
