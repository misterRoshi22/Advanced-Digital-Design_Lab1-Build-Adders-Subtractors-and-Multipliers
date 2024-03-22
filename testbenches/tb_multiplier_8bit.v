module tb_multiplier_8bit();

	reg clk;
	
	reg [7:0] A, B;
	wire [15:0] P;
	
	multiplier_8bit uut(A, B, P);
	
	initial begin
		clk = 0;
		A = 4;
		B = 5;
		#10;
		A = 10;
		B = 20;
		#10;
		A = 11;
		B = 2;
		#10;
		A = 23;
		B = 3;
		#10;
		A = 210;
		B = 2;
		#10;
		
		#100;

		$finish;
	end
	
	always begin
		#5 clk = ~clk;
	end
	
	always @ (posedge clk) begin
        $display("%t: %d x %d = %d",$time, A, B, P);
   end

endmodule //tb_multiplier_8bit