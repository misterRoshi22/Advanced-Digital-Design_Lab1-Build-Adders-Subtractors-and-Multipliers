module tb_d_FF();

	reg clk;
	reg reset_n, write_en;
	reg D;
	wire Q, Q_BAR;
	
	d_FF uut(clk, reset_n, write_en, D, Q, Q_BAR);
	
	initial begin
		clk = 0;
		write_en = 1;
		reset_n = 0;
		D = 0;
		#10;
		D = 1;
		#20;
		D = 0;
		#30;
		D = 1;
		#10;
		write_en = 0;
		D = 0;
		#20;
		D = 1;
		reset_n = 1;
		#20;
	
		$finish;
	end

	
	always begin 
		#5 clk = ~clk;
	end
	
		  always @ (posedge clk) begin
        $display("%t: reset_n = %b, write_en = %b, D = %b, Q = %b",$time, reset_n, write_en, D, Q);
    end

endmodule //tb_d_FF