module overflow_detection_unit(A, B, S, V);
	
	input [7:0] A, B, S; 
	output V;
	
	wire v0, v1;
	wire A_BAR, B_BAR, S_BAR;
	
	//1) If the sum of 2 +ve numbers yields a -ve number -> V = 1
	//2) If the sum of 2 -ve numbers yields a +ve number -> V = 1
	
	//V = A[7].B[7].!S[7] + !A[7].!B[7].S
	
	not(A_BAR,A[7]);
	not(B_BAR,B[7]);
	not(S_BAR,S[7]);
	
	and(v0, A[7], B[7], S_BAR);
	and(v1, A_BAR, B_BAR, S[7]);
	
	or(V, v0, v1);
	

endmodule //overflow_detection_unit