module mux_tb;
	reg IN0, IN1, IN2, IN3;
	reg S1, S0;
	wire OUTPUT;
	mux4_to_1 my_mux(OUTPUT, IN0, IN1, IN2, IN3, S1, S0);
	
	initial begin
		IN0 = 1; IN1 =0; IN2 = 1; IN3 = 0;
		#1 $display("IN0 = %0b, IN1 = %0b, IN2 = %0b, IN3 = %0b\n", IN0, IN1, IN2, IN3);
	
	S1 = 0; S0 = 0;
	#1 $display("%0t \t OUTPUT = %0b\n",$time, OUTPUT);
	S1 = 0; S0 = 1;
	#1 $display("%0t \t OUTPUT = %0b\n",$time, OUTPUT);
	S1 = 1; S0 = 0;
	#1 $display("%0t \t OUTPUT = %0b\n",$time, OUTPUT);
	S1 = 1; S0 = 1;
	#1 $display("%0t \t OUTPUT = %0b\n",$time, OUTPUT);
	end
endmodule	
