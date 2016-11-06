//check intra-assignment delay
module delay;
	reg x, y, z;
	initial begin
		x = 0; z = 0;
		#5 x =1;
	end
	initial begin
		y = #5 x + z;
	end
	initial begin
		#5 $display("time = %0t, y = %0b", $time, y);
	end
endmodule
