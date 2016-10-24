//counts down
module ripple_carry_counter(q_rcc, clk_rcc, reset_rcc);
	output [3:0] q_rcc;
	input clk_rcc, reset_rcc;
	tff tff0(q_rcc[0], clk_rcc, reset_rcc);
	tff tff1(q_rcc[1], q_rcc[0], reset_rcc);
	tff tff2(q_rcc[2], q_rcc[1], reset_rcc);
	tff tff3(q_rcc[3], q_rcc[2], reset_rcc);
endmodule
