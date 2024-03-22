module adder(A, B, Cin, S, Cout);

	input [7:0] A, B;
	input Cin;
	
	output [7:0] S;
	output Cout;
	
	wire [6:0] C;
	
	fa u0(A[0], B[0], Cin, S[0], C[0]);
	fa u1(A[1], B[1], C[0], S[1], C[1]);
	fa u2(A[2], B[2], C[1], S[2], C[2]);
	fa u3(A[3], B[3], C[2], S[3], C[3]);
	
	fa u4(A[4], B[4], C[3], S[4], C[4]);
	fa u5(A[5], B[5], C[4], S[5], C[5]);
	fa u6(A[6], B[6], C[5], S[6], C[6]);
	fa u7(A[7], B[7], C[6], S[7], Cout);
	
	
endmodule //adder
