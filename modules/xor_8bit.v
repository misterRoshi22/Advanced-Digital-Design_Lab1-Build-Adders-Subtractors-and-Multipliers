module xor_8bit(A, B, Y);

	input [7:0] A, B;
	output [7:0] Y;
	
	xor(Y[0],A[0],B[0]);
	xor(Y[1],A[1],B[1]);
	xor(Y[2],A[2],B[2]);
	xor(Y[3],A[3],B[3]);
	xor(Y[4],A[4],B[4]);
	xor(Y[5],A[5],B[5]);
	xor(Y[6],A[6],B[6]);
	xor(Y[7],A[7],B[7]);

endmodule //xor_8bit