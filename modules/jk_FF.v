module jk_FF(clk, reset_n, write_en, S, R, Q, Q_BAR);
	
	input clk;
	input reset_n, write_en;
	input S, R;
	output Q, Q_BAR;
	
	
   reg q;  
  
   always @ (posedge clk or posedge reset_n) begin
	
		if(reset_n) begin
			q <= 0;
		end
		
		else if(write_en) begin
			case ({S,R})  
				2'b00 :  q <= q;  
				2'b01 :  q <= 0;  
				2'b10 :  q <= 1;  
				2'b11 :  q <= ~q;  
			endcase 
		end
		

	end
	
	assign Q = q;
	assign Q_BAR = ~q;



endmodule //jk_FF