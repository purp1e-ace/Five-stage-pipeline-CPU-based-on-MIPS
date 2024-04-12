`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:01:53 11/23/2019 
// Design Name: 
// Module Name:    dm_ext 
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
module dm_ext(
    input [31:0] in,
    input [2:0] D_Sel,
    input [1:0] MemAddr,
    output reg [31:0] out
    );
	 always @(*) begin
		case(D_Sel)
			//lw
			3'b000: out = in;
			//lh
			3'b001: begin
				case(MemAddr[1])
					1'b0: out<={{16{in[15]}},in[15:0]};
					1'b1: out<={{16{in[31]}},in[31:16]};
				endcase
			end
			//lhu
			3'b010: begin
				case(MemAddr[1])
					1'b0: out<={16'b0,in[15:0]};
					1'b1: out<={16'b0,in[31:16]};
				endcase
			end
			//lb
			3'b011: begin
				case(MemAddr)
					2'b00: out<={{24{in[7]}},in[7:0]};
					2'b01: out<={{24{in[15]}},in[15:8]};
					2'b10: out<={{24{in[23]}},in[23:16]};
					2'b11: out<={{24{in[31]}},in[31:24]};
				endcase
			end
			//lbu
			3'b100: begin
				case(MemAddr)
					2'b00: out<={24'b0,in[7:0]};
					2'b01: out<={24'b0,in[15:8]};
					2'b10: out<={24'b0,in[23:16]};
					2'b11: out<={24'b0,in[31:24]};
				endcase
			end
		endcase
	 end


endmodule
