module tb_accumulator();

	reg clk, reset_n;
	reg [7:0] A;
	wire [7:0] S;
	wire overflow, carry;
	
	accumulator uut(clk, reset_n, A, S, overflow, carry);
	
	initial begin
		clk = 0;
		reset_n = 1;
		A = 1;
		#10;
		reset_n = 0;	
		#1000;
		
		reset_n = 1;
		A = 10;
		#10;
		reset_n = 0;	
		#1000;
		
		reset_n = 1;
		A = 100;
		#10;
		reset_n = 0;	
		#1000;
		
		$finish;
	
	end
	
	always begin
		#5 clk = ~clk;
	end

endmodule //tb_accumulator