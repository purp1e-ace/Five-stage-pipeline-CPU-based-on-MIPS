`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:53 11/17/2019 
// Design Name: 
// Module Name:    dm 
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
module dm(
    input clk,
    input reset,
    input MemWrite,
    input MemRead,
	 input [2:0] S_Sel,
    input [31:0] MemAddr,
    input [31:0] WD,
    input [31:0] PC,
    output [31:0] RD
    );
	 reg [31:0]dm [0:4095];
	 integer i;
	 
	 initial begin
		for(i=0;i<4096;i=i+1) begin
			dm[i] = 32'h00000000;
		end
	 end
	 
	 assign RD = (MemRead) ? dm[MemAddr[13:2]] : 0;
	 
	 always @(posedge clk) begin
		if(reset) begin
			for(i=0;i<4096;i=i+1) begin
				dm[i] <= 32'h00000000;
			end
		end
		else begin
			if(MemWrite) begin
				case(S_Sel)
					//sw
					3'b000: begin
						dm[MemAddr[13:2]] <= WD;
						$display("%d@%h: *%h <= %h", $time, PC, MemAddr, WD);
					end
					//sh
					3'b001: begin
						if(MemAddr[1]==1'b1) begin
							dm[MemAddr[13:2]][31:16] <= WD[15:0];
							$display("%d@%h: *%h <= %h",$time,PC,{MemAddr[31:2],2'b00},{WD[15:0],dm[MemAddr[13:2]][15:0]});
						end
						else if(MemAddr[1]==1'b0) begin
							dm[MemAddr[13:2]][15:0] <= WD[15:0];
							$display("%d@%h: *%h <= %h",$time,PC,{MemAddr[31:2],2'b00},{dm[MemAddr[13:2]][31:16],WD[15:0]});
						end
					end
					//sb
					3'b010: begin
						case(MemAddr[1:0])
							2'b00: begin
								dm[MemAddr[13:2]][7:0] <= WD[7:0];
								$display("%d@%h: *%h <= %h",$time,PC,{MemAddr[31:2],2'b00},{dm[MemAddr[13:2]][31:8],WD[7:0]});
							end
							2'b01: begin
								dm[MemAddr[13:2]][15:8] <= WD[7:0];
								$display("%d@%h: *%h <= %h",$time,PC,{MemAddr[31:2],2'b00},{dm[MemAddr[13:2]][31:16],WD[7:0],dm[MemAddr[13:2]][7:0]});
							end
							2'b10: begin
								dm[MemAddr[13:2]][23:16] <= WD[7:0];
								$display("%d@%h: *%h <= %h",$time,PC,{MemAddr[31:2],2'b00},{dm[MemAddr[13:2]][31:24],WD[7:0],dm[MemAddr[13:2]][15:0]});
							end
							2'b11: begin
								dm[MemAddr[13:2]][31:24] <= WD[7:0];
								$display("%d@%h: *%h <= %h",$time,PC,{MemAddr[31:2],2'b00},{WD[7:0],dm[MemAddr[13:2]][23:0]});
							end
						endcase
					end
				endcase
			end
		end
	 end


endmodule
