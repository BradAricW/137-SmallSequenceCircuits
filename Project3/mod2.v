`timescale 1ns/100ps
module mod2(clock, reset, x, z);

	input clock, reset, x;
	output reg z;
	
	parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
	reg [1:0] nxt, curr;
	
	always@(*)
	begin
		casex(curr)
		A: if(x==1)
				begin
					nxt=B;
					z=0;
				end 
			else
				begin
					nxt=A;
					z=0;
				end
		
		B: if(x==1)
				begin
					nxt=B;
					z=0;
				end 
			else
				begin
					nxt=C;
					z=0;
				end
		
		C: if(x==1)
				begin
					nxt=B;
					z=0;
				end 
			else
				begin
					nxt=D;
					z=0;
				end
		
		D: if(x==1)
				begin
					nxt=B;
					z=1;
				end 
			else
				begin
					nxt=A;
					z=0;
				end
		
		default: begin
					nxt = 2'bxx;
					z = 1'bx;
				end
				
		endcase
	end

	always@(posedge clock, posedge reset)
	begin
		if(reset==1)
			curr <= A;
		else
			curr <= nxt;
	end
endmodule