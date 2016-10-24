//Toggle FLip Flop

module tff(output reg q, input clk, input reset);
	//output reg q;
	//input clk, reset;
	
	always @(posedge reset or negedge clk) begin
		if (reset) begin
			q <= 1'b0;
		end else begin
			q <= ~q;
		end
	end
endmodule
	
