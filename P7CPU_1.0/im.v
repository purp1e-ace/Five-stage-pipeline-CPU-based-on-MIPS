`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:28 11/17/2019 
// Design Name: 
// Module Name:    im 
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
module im(
    input [31:0] pc,
    output [31:0] instr
    );
	 integer i;
	 reg [31:0] im[0:4095];
	 initial begin
		for(i=0;i<4096;i=i+1) begin
			im[i] = 0;
		end
		$readmemh("code.txt", im);
		$readmemh("code_handler.txt", im, 1120, 2047);
	 end
	 wire [31:0] PC = pc - 32'h00003000;
	 assign instr = im[PC[13:2]];

endmodule
