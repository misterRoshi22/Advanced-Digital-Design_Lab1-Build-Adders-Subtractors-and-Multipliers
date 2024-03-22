module multiplier_8bit_reg(clk, reset_n, EA, EB, A, B, P);
	
	input clk, reset_n;
	input EA, EB;
	
	input [7:0] A, B;
	
	output [15:0] P;
	
	wire VCC, GND;
	
	wire [7:0] m_A, m_B;
	wire [15:0] m_P;
	
	wire EP;
	
	register reg_A(clk, reset_n, EA, A, m_A); 
	register reg_B(clk, reset_n, EB, B, m_B);
	
	multiplier_8bit mul(m_A, m_B, m_P);
	
	register_16bit reg_P(clk, reset_n, EP, m_P, P);
	
	assign VCC = 1'b1;
	assign GND = 1'b0;
	
	assign EP = VCC;
	

endmodule //multiplier_8bit_reg