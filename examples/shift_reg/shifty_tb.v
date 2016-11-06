module shifty_tb;
	reg clk, reset;
	reg data_in;
	wire data_out;
	shift_reg sr(data_out, data_in, clk, reset);
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, shifty_tb);
		clk = 1'b0;
		reset = 1'b1;
		data_in = 1'b0;
		#10 reset = 1'b0;
		data_in = 1'b1;
		#40
		data_in = 1'b0;
		#10 data_in = 1'b1;
		#10 data_in = 1'b0;
		
		#10 reset = 1'b0;
		
		#50;
		$finish;
	end
	initial begin
		 $monitor("t=%3d data_in=%b,data_out=%b,sr.tmp=%8b \n",$time,data_in,data_out,sr.tmp, );
	end
	always #5
		clk = ~clk;
endmodule
