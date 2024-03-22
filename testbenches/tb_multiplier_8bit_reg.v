module tb_multiplier_8bit_reg();

	reg clk, reset_n;
	reg EA, EB;
	
	reg [7:0] A, B;
	wire [15:0] P;
	
	multiplier_8bit_reg uut(clk, reset_n, EA, EB, A, B, P);
	
	initial begin
		clk = 0;
		reset_n = 1;
		EA = 1; 
		EB = 1;
		A = 4;
		B = 5;
		#10;
		reset_n = 0;
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

		$finish;
	end
	
	always begin
		#5 clk = ~clk;
	end

endmodule //tb_multiplier_8bit_reg