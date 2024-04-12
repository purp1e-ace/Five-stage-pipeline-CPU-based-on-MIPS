`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:42 11/17/2019 
// Design Name: 
// Module Name:    grf 
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
module grf(
    input clk,
    input reset,
    input RegWrite,
    input [4:0] RA1,
    input [4:0] RA2,
    input [4:0] WA,
    input [31:0] WD,
    input [31:0] PC,
    output [31:0] RD1,
    output [31:0] RD2
    );
	 integer i;
	 reg [31:0]grf[31:0];
	 initial begin
		for(i=0;i<32;i=i+1) begin
			grf[i] = 32'h00000000;
		end
	 end
	 assign RD1 = (RegWrite&&RA1==WA&&WA!=0)?WD:grf[RA1];
	 assign RD2 = (RegWrite&&RA2==WA&&WA!=0)?WD:grf[RA2];
	 always @(posedge clk) begin
		if(reset) begin
			for(i=0;i<32;i=i+1) begin
				grf[i] <= 32'h00000000;
			end
		end
		else begin
			if(RegWrite && WA != 5'b00000) begin
				grf[WA] <= WD;
				$display("%d@%h: $%d <= %h", $time, PC, WA, WD);
			end
		end
	 end
		

endmodule
