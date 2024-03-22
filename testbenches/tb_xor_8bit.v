module tb_xor_8bit();

	reg clk;
	reg [7:0] A, B;
	wire [7:0] Y;
	
	xor_8bit uut(A, B, Y);
	
	initial begin
		clk = 0;
		A = 0;
		B = 0;
		#10;
		A = 127;
		#10;
		A = 8'b10101010;
		B = 8'b11111111;
		#10;
		A = 8'b11110000;
		#10;
		
		$finish;
	end
	
	always begin
		#5 clk = ~clk;
	end
	
	always @ (negedge clk) begin
        $display("%t: %b ^ %b = %b", $time, A, B, Y);
    end

endmodule //tb_xor_8bit