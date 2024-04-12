`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:21:59 11/23/2019 
// Design Name: 
// Module Name:    mul_div 
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
module mul_div(
    input clk,
    input reset,
    input [31:0] A,
    input [31:0] B,
    input [3:0] mul_div_op,
    input Start,
    output reg Busy,
    output reg [31:0] Hi,
    output reg [31:0] Lo
    );
	 integer cycle;
	 reg [63:0] temp;
	 
	 initial begin
		Hi = 0;
		Lo = 0;
		Busy = 0;
		cycle = 0;
		temp = 0;
	 end
	 always @(negedge Start) Busy <= 1;
	 always @(posedge clk) begin
		if(reset) begin
			Hi <= 0;
			Lo <= 0;
			Busy <= 0;
			cycle <= 0;
			temp <= 0;
		end
		else begin
			if(Busy==0) begin
				if(Start) begin
					case(mul_div_op)
						//mult
						4'b0000: begin
							temp <= $signed($signed(A) * $signed(B));
							cycle <= 4;
						end
						//multu
						4'b0001: begin
							temp <= A * B;
							cycle <= 4;
						end
						//div
						4'b0010: begin
							temp <= {$signed($signed(A) % $signed(B)), $signed($signed(A) / $signed(B))};
							cycle <= 9;
						end
						//divu
						4'b0011: begin
							temp <= {(A % B), (A / B)};
							cycle <= 9;
						end
					endcase
				end
				if(mul_div_op==4'b0100/*mthi*/) begin
					Hi <= A;
				end
				if(mul_div_op==4'b0101/*mtlo*/) begin
					Lo <= A;
				end
			end 
			else if(Busy) begin
				if(cycle>0) begin
					cycle <= cycle - 1;
				end
				if(cycle==0) begin
					{Hi, Lo} <= temp;
					Busy <= 0;
				end
			end
		end
	 end


endmodule
