module tb_overflow_detection_unit();

	reg clk;
	reg [7:0] A, B, S;
	
	wire V;
	
	overflow_detection_unit uut(A, B, S, V);
	
	initial begin
		clk = 0;
		A = 8'b01111111; //127
		B = 8'b00000001; //1
		S = 8'b10000000; //127 + 1 != -128
		#10;
		A = 8'b10000001; //-127
		B = 8'b11111110; //-2
		S = 8'b01111111; //-127 - 2 != 127
		#10;
		A = 8'b00000001; //1
		B = 8'b01111110; //126
		S = 8'b01111111; //126 + 1 != 127
		#10;
		$finish;
	
	end


	always begin
		#5 clk = ~clk;
	end
	
	  always @ (negedge clk) begin
        $display("%t: %d + %d = %d, V = %b",$time, $signed(A), $signed(B), $signed(S), V);
    end

endmodule //tb_overflow_detection_unit