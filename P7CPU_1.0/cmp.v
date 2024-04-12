`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:54 11/17/2019 
// Design Name: 
// Module Name:    cmp 
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
module cmp(
    input [31:0] RF_RD1,
    input [31:0] RF_RD2,
    output reg equal,
	 output reg greater,
	 output reg less
    );
	 always @(*) begin
		if(RF_RD1==RF_RD2) equal = 1;
		else equal = 0;
		
		if($signed(RF_RD1)>0) greater = 1;
		else greater = 0;
		
		if($signed(RF_RD1)<0) less = 1;
		else less = 0;
		
	 end


endmodule
