module tb_register_16bit();

	reg clk;
	reg reset_n, write_en;
	reg [15:0] d;
	
	wire [15:0] Q;
	
	register_16bit uut(clk, reset_n, write_en, d, Q);
	
	initial begin
	clk = 0;
	reset_n = 1;
	write_en = 0;
	#15;
	reset_n = 0;
	d = 16'd7;
	#10;
	d = 16'd15;
	#10;
	d = 16'd69;
	write_en = 1;
	#10;
	d = 16'd256;
	#10;
	reset_n = 1;
	
	#100;
	
	$finish;
	
	end
	
	
	
	
	always begin 
		#5 clk = ~clk;
	end
	
	 always @ (negedge clk) begin
        $display("%t: reset_n = %b, write_en = %b, d = %d, Q = %d", $time, reset_n, write_en, d, Q);
    end


endmodule //tb_register_16bit