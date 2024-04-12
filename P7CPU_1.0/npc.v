`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:17 11/17/2019 
// Design Name: 
// Module Name:    npc 
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
module npc(
    input [31:0] PC4,
    input [31:0] PC4D,
    input [25:0] I26,
    input [31:0] MFRSD,
    input equal,
	 input greater,
	 input less,
    input [2:0]b, //1:beq 2:bne 3:bgtz 4:blez 5:bgez 6:bltz
    input if_j,//j or jal
    input [2:0] PC_sel,
    output reg [31:0] next_pc
    );
	 reg [31:0] npc;
	 wire branch;
	 assign branch = (equal&b==1)|(!equal&b==2)|(greater&b==3)|(!greater&b==4)|(!less&b==5)|(less&b==6);
	 always @(*) begin
		if(branch) npc = PC4D + {{14{I26[15]}}, I26[15:0], 2'b00};
		else if(if_j) npc = {PC4D[31:28], I26, 2'b00};
		else npc = PC4D + 4;
	 end
	 
	 always @(*) begin
		case(PC_sel)
			3'b000: next_pc = PC4;
			3'b001: next_pc = MFRSD;
			3'b010: next_pc = npc;
		endcase
	 end


endmodule
