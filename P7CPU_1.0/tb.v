`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:16:06 11/19/2019
// Design Name:   mips
// Module Name:   C:/Users/Don_Zhou/Desktop/study/CO/P5/P5CPU 1.2/tb.v
// Project Name:  P5CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;
	// Inputs
	reg clk;
	reg reset;
	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);
	initial begin
		clk = 0;
		reset = 1;
		#12 reset = 0;
	end
	always #10 clk = ~clk; 
      
endmodule

