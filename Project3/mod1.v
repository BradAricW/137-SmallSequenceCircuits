`include "nextStateGen.v"
`include "outputGen.v"
`include "ff.v"
`timescale 1ns/100ps
module mod1(clock, reset, x, z);
	input clock, reset, x;
	output z;
	
	wire [1:0] q, d;
	
	nextStateGen n(x, q, d);
	outputGen o(x, q, z);
	ff ff0(clock, reset, d[0], q[0]);
	ff ff1(clock, reset, d[1], q[1]);
endmodule