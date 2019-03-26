`timescale 1ns/100ps
module ff(clock, reset, d, q);

	input clock, reset, d;
	output reg q;
	
	always@(posedge clock, posedge reset)
	
	begin
		if(reset == 1'b1)
			q=0;
		else
			q=d;
	end

endmodule