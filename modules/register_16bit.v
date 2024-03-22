module register_16bit(clk, reset_n, write_en, d, Q);

	input clk;
	input reset_n, write_en;
	
	input [15:0] d;
	
	output [15:0] Q;


	d_FF u0(clk, reset_n, write_en, d[0], Q[0],);
	d_FF u1(clk, reset_n, write_en, d[1], Q[1],);
	d_FF u2(clk, reset_n, write_en, d[2], Q[2],);
	d_FF u3(clk, reset_n, write_en, d[3], Q[3],);
	
	d_FF u4(clk, reset_n, write_en, d[4], Q[4],);
	d_FF u5(clk, reset_n, write_en, d[5], Q[5],);
	d_FF u6(clk, reset_n, write_en, d[6], Q[6],);
	d_FF u7(clk, reset_n, write_en, d[7], Q[7],);
	
	d_FF u8(clk, reset_n, write_en, d[8], Q[8],);
	d_FF u9(clk, reset_n, write_en, d[9], Q[9],);
	d_FF u10(clk, reset_n, write_en, d[10], Q[10],);
	d_FF u11(clk, reset_n, write_en, d[11], Q[11],);
	
	d_FF u12(clk, reset_n, write_en, d[12], Q[12],);
	d_FF u13(clk, reset_n, write_en, d[13], Q[13],);
	d_FF u14(clk, reset_n, write_en, d[14], Q[14],);
	d_FF u15(clk, reset_n, write_en, d[15], Q[15],);

endmodule // register