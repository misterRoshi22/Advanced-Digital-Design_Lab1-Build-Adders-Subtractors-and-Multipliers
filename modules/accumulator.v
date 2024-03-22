module accumulator(clk, reset_n, A, S, overflow, carry);

	input clk, reset_n;
	input [7:0] A;
	output [7:0] S;
	
	output overflow, carry;
	
	wire VCC, GND, write_en;
	wire V_in, V_out, Cout_in, Cout_out;
	wire [7:0] A_in, A_out, S_in, S_out;
	
	register A_reg(clk, reset_n, write_en, A_in, A_out);
	register S_reg(clk, reset_n, write_en, S_in, S_out);
	
	adder main_adder(S_out, A_out, GND, S_in, Cout_in);
	
	overflow_detection_unit odu(A_out, S_out, S_in, V_in);
	
	d_FF V_FF(clk, reset_n, write_en, V_in, V_out, );
	d_FF C_FF(clk, reset_n, write_en, Cout_in, Cout_out, );
	
	
	
	assign VCC = 1'b1;
	assign GND = 1'b0;
	
	assign write_en = VCC;
	assign A_in = A;
	
	assign overflow = V_out;
	assign carry = Cout_out;
	assign S = S_out;
	
	


endmodule //accumulator