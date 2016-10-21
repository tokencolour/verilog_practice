//example for $display task
 module test_display;
	reg [8*100:0] my_string;
	reg [15:0] my_number;
	real my_time;
	
	my_design my_design();

	initial begin

		$display ("HELLO WORLD");
		my_string = "This is my string";
		my_number = 8'h1A;
		$display("my_string is %0s", my_string);
		$display("Decimal: %0d",my_number);
		$display("Binary: %0b", my_number);
		$display("Hexadecimal: %0h", my_number);
		 
		$display("Decimal: %d",my_number);
		$display("Decimal: %3d",my_number);
		$display("binary: %4b",my_number);
		//display heirarchical name	
		$display("I'm at %m");
		my_design.print;
		//display time
		my_time = 123;
		$display("Current time %0t and dummy time %0t", $time, my_time);
		#11
	  
		$display("Current time %0t and dummy time %0t", $time, my_time);
	end
endmodule

module my_design;
	task print;
		$display("I'm at %m");
	endtask
endmodule
