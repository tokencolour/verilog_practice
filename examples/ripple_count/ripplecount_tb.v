module test;
	reg clk, reset;
	wire [4:0] q;
	//instantiation
	ripple_carry_counter rcc (.q_rcc(q[3:0]), .clk_rcc(clk), .reset_rcc(reset));
	tff tff4(
	.q(q[4]),
	.clk(q[3]),
	.reset(reset));	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, test);
		
		clk = 1'b0;
		reset = 1'b1;
		#10 reset = 1'b0;
		#400;
		reset = 1'b1;
		#10 reset = 1'b0;

		#50;

		$finish;
	end
	
	always #5
		clk = ~clk;
endmodule
