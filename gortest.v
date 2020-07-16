`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:24 07/04/2020
// Design Name:   gor
// Module Name:   D:/gor.v/gortest.v
// Project Name:  gor.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gortest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	gor uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
	   $monitor("a=%b b=%b y=%b",a,b,y);
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=1;
		#10 b=1;
		#15 a=0;
		#20 b=0;
		#15 a=1;
		#10 b=1;
        
		// Add stimulus here

	end
      
endmodule

