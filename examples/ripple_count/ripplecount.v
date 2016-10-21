//counts down
module ripple_carry_counter(q, clk, reset);
	output [3:0] q;
	input clk, reset;
	tff tff0(q[0], clk, reset);
	tff tff1(q[1], q[0], reset);
	tff tff2(q[2], q[1], reset);
	tff tff3(q[3], q[2], reset);
endmodule
