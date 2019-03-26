`timescale 1ns/100ps
module nextStateGen(x, q, d);

	input x;
	input [1:0] q;
	input [1:0] d;
	
	assign d[0] = x + (~q[0] * q[1]);
	assign d[1] = (~x * q[0] * ~q[1]) + (~x * ~q[0] * q[1]);
	
endmodule