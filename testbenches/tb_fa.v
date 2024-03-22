module tb_fa();

	reg clk;
	reg A, B, Cin;
	wire S, Cout;
	
	fa uut(A, B, Cin, S, Cout);
	
	initial begin
		clk = 0;
		A = 0;
		B = 0;
		Cin = 0;
		#10;
		A = 1;
		#10;
		A = 0;
		B = 1;
		#10;
		A = 1;
		#10;
		A = 0;
		B = 0;
		Cin = 1;
		#10;
		A = 1;
		#10;
		A = 0;
		B = 1;
		#10;
		A = 1;
		#100;
		
		$finish;
	end
	
	
	always begin 
		#5 clk = ~clk;
	end
	
	  always @ (negedge clk) begin
        $display("%t: %d %d %d -> %d %d",$time, Cin, B, A, S, Cout);
    end

endmodule //tb_fa