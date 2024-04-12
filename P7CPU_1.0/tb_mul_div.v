`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:05:16 11/23/2019
// Design Name:   mul_div
// Module Name:   C:/Users/Don_Zhou/Desktop/study/CO/P6/P6CPU 1.0/tb_mul_div.v
// Project Name:  P6CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mul_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mul_div;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] mul_div_op;
	reg Start;

	// Outputs
	wire Busy;
	wire [31:0] Hi;
	wire [31:0] Lo;

	// Instantiate the Unit Under Test (UUT)
	mul_div uut (
		.clk(clk), 
		.reset(reset), 
		.A(A), 
		.B(B), 
		.mul_div_op(mul_div_op), 
		.Start(Start), 
		.Busy(Busy), 
		.Hi(Hi), 
		.Lo(Lo)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		A = 0;
		B = 0;
		mul_div_op = 0;
		Start = 0;

		// Wait 100 ns for global reset to finish
		#35;
		Start = 1;
		A = 17;
		B = 21;
		mul_div_op = 2;
		#10;
		Start = 0;
		A = 0;
		B = 0;
		mul_div_op = 0;
        
		// Add stimulus here

	end
	
	always #5 clk = ~clk;
      
endmodule

