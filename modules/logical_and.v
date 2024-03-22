module logical_and(A, B, Y);

	input [7:0] A;
	input B;
	
	output [7:0] Y;
	
	
	and(Y[0],A[0],B);
	and(Y[1],A[1],B);
	and(Y[2],A[2],B);
	and(Y[3],A[3],B);
	
	and(Y[4],A[4],B);
	and(Y[5],A[5],B);
	and(Y[6],A[6],B);
	and(Y[7],A[7],B);

endmodule //logical_and