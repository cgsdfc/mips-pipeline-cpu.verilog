`timescale 1ns / 1ps
module mips_t;

// Inputs
reg clk;
reg reset;
parameter tick = 0.25;
always #tick clk=~clk;
parameter en = 0;

	// Instantiate the Unit Under Test (UUT)
	mips mips (
		.clk(clk),
		.reset(reset),
		.en(en)
	);
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	end

	endmodule

