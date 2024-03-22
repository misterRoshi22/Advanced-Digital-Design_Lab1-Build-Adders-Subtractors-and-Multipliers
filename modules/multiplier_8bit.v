module multiplier_8bit(A, B, P);

	input [7:0] A, B;
	
	output [15:0] P;
	
	wire [7:0] S[7:0];
	wire [7:0] Y[7:0];
   wire Cout[7:0];
	
	wire VCC, GND;
	
	logical_and a0(A, B[0], Y[0]);
	
	logical_and a1(A, B[1], Y[1]);
	adder p1({1'b0, Y[0][7:1]}, Y[1], GND, S[1], Cout[1]);
	
	logical_and a2(A, B[2], Y[2]);
	adder p2({Cout[1], S[1][7:1]}, Y[2], GND, S[2], Cout[2]);
	
	logical_and a3(A, B[3], Y[3]);
	adder p3({Cout[2], S[2][7:1]}, Y[3], GND, S[3], Cout[3]);
	
	logical_and a4(A, B[4], Y[4]);
	adder p4({Cout[3], S[3][7:1]}, Y[4], GND, S[4], Cout[4]);
	
	logical_and a5(A, B[5], Y[5]);
	adder p5({Cout[4], S[4][7:1]}, Y[5], GND, S[5], Cout[5]);
	
	logical_and a6(A, B[6], Y[6]);
	adder p6({Cout[5], S[5][7:1]}, Y[6], GND, S[6], Cout[6]);
	
	logical_and a7(A, B[7], Y[7]);
	adder p7({Cout[6], S[6][7:1]}, Y[7], GND, S[7], Cout[7]);
	

	assign VCC = 1'b1;
	assign GND = 1'b0;
	
	assign P = {Cout[7], S[7][7:0], S[6][0], S[5][0], S[4][0], S[3][0], S[2][0], S[1][0], Y[0][0]};
	
endmodule //multiplier_8bit

