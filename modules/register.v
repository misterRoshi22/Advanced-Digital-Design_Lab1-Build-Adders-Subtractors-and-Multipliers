module register(clk, reset_n, write_en, d, Q);

	input clk;
	input reset_n, write_en;
	
	input [7:0] d;
	
	output [7:0] Q;


	d_FF u0(clk, reset_n, write_en, d[0], Q[0],);
	d_FF u1(clk, reset_n, write_en, d[1], Q[1],);
	d_FF u2(clk, reset_n, write_en, d[2], Q[2],);
	d_FF u3(clk, reset_n, write_en, d[3], Q[3],);
	
	d_FF u4(clk, reset_n, write_en, d[4], Q[4],);
	d_FF u5(clk, reset_n, write_en, d[5], Q[5],);
	d_FF u6(clk, reset_n, write_en, d[6], Q[6],);
	d_FF u7(clk, reset_n, write_en, d[7], Q[7],);

endmodule // register