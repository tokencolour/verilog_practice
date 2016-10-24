module edge_dff(q, qbar, clk, clear, d);
	output q, qbar;
	input clk, clear, d;
	
	wire cbar;
	assign cbar = ~clear;
	wire sbar, rbar, s, r;
	assign sbar = ~(rbar & s);
	assign s = ~(sbar & cbar & ~clk);
	assign r = ~(s & ~clk & rbar);
	assign rbar = ~(r & cbar & d);
	assign q = ~(qbar & s);
	assign qbar = ~(q & r & cbar);
endmodule
