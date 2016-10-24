module gate_delay_tb;
	reg reset, set; 
	wire q, q_bar;
	RS_latch rsl(.q(q), .q_bar(q_bar), .reset(reset), .set(set));
	initial begin
		set = 0; reset = 0;
		#10 $display("q = %0b\n", q);
		set = 0; reset = 1;
		#10 $display("q = %0b\n", q);
		set = 1; reset = 0;
		#10 $display("q = %0b\n", q);
		//set = 1; reset = 1;
		//#10 $display("q = %0b\n", q);
		set = 0; reset = 0;
		#10 $display("q = %0b\n", q);
		$finish;
	end
endmodule
