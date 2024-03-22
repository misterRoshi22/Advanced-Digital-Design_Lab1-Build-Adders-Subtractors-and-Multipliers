module tb_register();

	reg clk;
	reg reset_n, write_en;
	reg [7:0] d;
	
	wire [7:0] Q;
	
	register uut(clk, reset_n, write_en, d, Q);
	
	initial begin
	clk = 0;
	reset_n = 1;
	write_en = 0;
	#15;
	reset_n = 0;
	d = 8'd7;
	#10;
	d = 8'd15;
	#10;
	d = 8'd69;
	write_en = 1;
	#10;
	d = 8'd120;
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


endmodule //tb_register