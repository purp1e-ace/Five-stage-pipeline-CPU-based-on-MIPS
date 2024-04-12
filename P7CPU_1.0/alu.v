`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:38:16 11/17/2019 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUCtrl,
    output reg [31:0] Result
    );
	 

	 always @(*) begin
		case(ALUCtrl)
			4'b0000: Result = A + B;
			4'b0001: Result = A - B;
			4'b0010: Result = A & B;
			4'b0011: Result = A | B;
			4'b0100: Result = ~(A | B); //NOR
			4'b0101: Result = A ^ B;  //XOR
			4'b0110: Result = B << A;  //sll
			4'b0111: Result = B >> A;  //srl
			4'b1000: Result = $signed($signed(B) >>> A);  //sra
			4'b1001: Result = (A < B) ? 1 : 0;  //SLTU
			4'b1010: Result = ($signed(A) < $signed(B)) ? 1 : 0;  //SLT
		endcase
	 end


endmodule
