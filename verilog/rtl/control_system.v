module control_system(	
	input wire clk,rst,dir,enable,
	output clk_s,
	output reg [3:0]salida,
	output [37:0] io_oeb);
	
	assign io_oeb[6:0] = {7{1'b1}};
	assign io_oeb[37:7] = {31{1'b0}};
	
	parameter tiempo = 5000000;
	localparam S1=3'd1, S2=3'd2, S3=3'd3, S4=3'd4; 
	reg[2:0]state, state_next;	
	reg[26:0] count;  
	reg clk_sn;
	assign clk_s=clk_sn;
		
	always @(posedge clk)
	
		begin 
			if (rst==1'b1) 
				begin
					count <= 0;
					clk_sn <= 0;
				end	
			else 
		   	
				begin
					if (count==tiempo)   		
						begin	
							clk_sn <= !clk_sn;	
							count <= 0 ;     		
						end		
					else
						begin
							count <= count+1;
						end					
					end			
		end		
	
always@(posedge clk_s) 		//Logica del estado siguiente
		
		begin
			if(rst) state <= S1;
			else state <= state_next;
		end	
		
	always@(posedge clk)	   // Maquina de estados
		
		begin
			case (state)
				
				S1:      if(dir && enable) state_next <= S2;
					else if(!dir && enable) state_next <= S4;
					else if(!enable) state_next <= S1;
					
				S2:	      if(dir && enable) state_next <= S3;
					 else if(!dir && enable) state_next <= S1;
					 else if(!enable) state_next <= S2;
								
				S3: 	   if(dir && enable) state_next <= S4;
					  else if(!dir && enable) state_next <= S2;
					  else if(!enable) state_next <= S3;								
														
				S4: 	   if(dir && enable) state_next <= S1;
					  else if(!dir && enable) state_next <= S3;
					  else if(!enable) state_next <= S4;					
			  	default : begin
				  end			  
					  endcase
		end
				
	always@(posedge clk_s) 		//Salida tipo Moore
	
		begin
			case (state) 
				S1: salida <= 4'b0001;
				S2: salida <= 4'b0010;
				S3: salida <= 4'b0100;
				S4: salida <= 4'b1000;	  
				default : begin
				  end
			endcase
		end		
endmodule
