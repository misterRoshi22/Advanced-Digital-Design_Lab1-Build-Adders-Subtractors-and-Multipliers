module tb_adder();

	reg clk;
	reg [7:0] A, B;
	reg Cin;
	
	wire [7:0] S;
	wire Cout;
	
	adder uut(A, B, Cin, S, Cout);
	
	initial begin
		clk = 0;
		A = 8'd34;
		B = 8'd16;
		Cin = 1'b0;
		#10;
		B = 8'd2;
		#10;
		A = 8'd2;
		#10;
		B = 8'd4;
		#10;
		A = 8'd8;
		#10;
		A = 8'b01111111;
		B = 8'b1;
		#10;
		A = 8'b11111111;
		B = 8'b11111111;
		
		
		#100;
		
		$finish;

	end
	
	
	
	always begin
		#5 clk = ~clk;
	end
	
  always @ (posedge clk) begin
        $display("%t: %d + %d = %d",$time, $signed(A), $signed(B), $signed(S));
    end


endmodule //tb_adder