//check `define text macros

`define MY_NUMBER 5
`define MY_STRING "Hello World!"
`define ADD2PLUS2 2 + 2
`define ADD5(RESULT, SOURCE) \
	RESULT = SOURCE + 5; \
	$display("Inside ADD5 macro. Scope is %m");
module text;
	reg [7:0] a, b;
	task my_task;
		`define MY_HJ 8//though this seems to be inside a task, 
				//it's global since it's a macro.
				//gets displayed down there 
		#1;
	endtask
	initial begin
		$display(`MY_NUMBER);
		$display(`MY_STRING);
		$display(`ADD2PLUS2);
		$display(`MY_HJ);

		a = 1;
		`ifdef ADD5
			`ADD5(b, a)
			$display("a %0d, b %0d", a, b);
		`else
			$display("NO IFDEF");
		`endif
	end
endmodule


//`define MY_NUMBER 6 //can't do this since macros are processed
//before compiling SEQUENTIALLY
