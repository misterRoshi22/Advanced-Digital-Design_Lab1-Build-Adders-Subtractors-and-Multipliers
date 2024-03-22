module d_FF(clk, reset_n, write_en, D, Q, Q_BAR);
	
	input clk, D;
	input reset_n, write_en;
	output Q, Q_BAR;
	
	wire D_BAR;
	
	jk_FF uut(clk, reset_n, write_en, D, D_BAR, Q, Q_BAR);
	
	not(D_BAR, D);

endmodule //d_FF