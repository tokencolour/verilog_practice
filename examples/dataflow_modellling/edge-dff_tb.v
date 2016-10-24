module edge_dff_tb;
	wire q, qbar;
	reg clear, clk, d;
	edge_dff edg(q, qbar, clk, clear, d);
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, edge_dff_tb);
		d = 1; 
		#5 clear = 1;
		#5 d = 1; 
		#5 clear = 0;
		#40 d = 0;
		#50 d = 1;
		#150 clear = 1;
		#170 clear = 0;
		#200 clear = 1;
		$finish;
	end
	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end
endmodule
