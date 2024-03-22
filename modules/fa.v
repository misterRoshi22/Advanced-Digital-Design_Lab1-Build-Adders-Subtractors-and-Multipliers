module fa(A, B, Cin, S, Cout);

	input A, B, Cin;
	output S, Cout;
	
	wire w0, w1, w2;
	
	xor(w0, A, B);
	xor(S, w0, Cin);

	and(w1, A, B);
	and(w2, w0, Cin);
	or(Cout, w1, w2);

endmodule //fa