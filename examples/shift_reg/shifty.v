//8-bit shift-left register with positive-edge clock,
//serial-in, serial-out
module shift_reg(data_out, data_in, clk, reset);
	output data_out;
	input data_in, clk, reset;
	reg [7:0] tmp;
	initial begin
		tmp = 0;
	end
	always @(posedge clk or posedge reset) begin
		tmp = tmp<<1;
		tmp[0] = data_in;
	end
	assign data_out = tmp[7];
endmodule
