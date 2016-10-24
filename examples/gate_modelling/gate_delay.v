//RS latch with gate delays of 1 unit for nor gates
module RS_latch(q, q_bar, reset, set);
	output q, q_bar;
	input reset, set;
	
	nor #(1) n1(q, reset, q_bar);
	nor #(1) n2(q_bar, q, set);
endmodule
