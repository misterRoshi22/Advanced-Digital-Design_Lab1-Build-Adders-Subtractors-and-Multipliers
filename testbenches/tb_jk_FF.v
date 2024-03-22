module tb_jk_FF();

	reg clk;
	reg reset_n, write_en;
	reg S, R;
	wire Q, Q_BAR;
	
	jk_FF uut(clk, reset_n, write_en, S, R, Q, Q_BAR);
	
	initial begin
		clk = 0;
		reset_n = 1;
		#10;
		reset_n = 0;
		write_en = 1;
		S = 1;
		R = 0;
		#10;
		S = 0;
		#20;
		R = 1;
		#10;
		R = 0;
		#10;
		S = 1;
		#10;
		write_en = 0;
		R = 1;
		#10;
		S = 1;
		#10;
		reset_n = 1;
		#100;
		
		
		$finish;
	end

	
	always begin 
		#5 clk = ~clk;
	end
	
	  always @ (negedge clk) begin
        $display("%t: reset_n = %b, write_en = %b, S = %b, R = %b, Q = %b",$time, reset_n, write_en, S, R, Q);
    end

endmodule //tb_jk_FF