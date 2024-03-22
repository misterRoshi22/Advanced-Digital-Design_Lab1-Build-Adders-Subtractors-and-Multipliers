module tb_logical_and();

	reg clk;
	reg [7:0] A;
	reg B;
	
	wire [7:0] Y;
	
	logical_and uut(A, B, Y);
	
	initial begin
		clk = 0;

		A = 7;
		B = 0;
		#10;
		B = 1;
		#10;
		A = 22;
		B = 0;
		#10;
		B = 1;
		#10;
		A = 420;
		B = 0;
		#10;
		B = 1;
	
		$finish;
	end


	always begin
		#5 clk = ~clk;
	end
	
	
	always @ (posedge clk) begin
        $display("%t: %d . %b = %d",$time, A, B, Y);
   end

endmodule //tb_logical_and