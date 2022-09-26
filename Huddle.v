module Huddle(
	clk,
	rst,
	breakGameFlag,
	hor_reg,
	ver_reg,
	hudPosHorFrom,hudPosHorTo,hudPosVerFrom,hudPosVerTo,
	qtree1
);


input clk,rst,breakGameFlag;
input [10:0]hor_reg;
input [9:0] ver_reg;

output reg [9:0] hudPosHorFrom,
			  hudPosHorTo,
			  hudPosVerFrom,
			  hudPosVerTo;


reg	[14:0]  address_counter_1;
reg	[13:0]  address_counter_2;
reg	[14:0]  address_counter_3;
output qtree1;
//output q2;
//output q3;
tree1 U1(address_counter_1,clk,qtree1);
//tree2 U2(address_counter_2,clk,q2);
//tree3 U3(address_counter_3,clk,q3);



reg[25:0]clk_div;

always@(posedge clk,negedge rst)
  begin 
    if(!rst)
	   clk_div <= 26'd0;
	 else 
	   clk_div <= clk_div + 26'd1;
  end
  
always @(posedge clk or negedge rst)
	begin
		if(!rst)
			address_counter_1 <= 14'd0;
		else if(address_counter_1 == 15'd5875)
			address_counter_1 <= 14'd0;
		else if(hor_reg >= hudPosHorFrom && hor_reg <= hudPosHorTo && ver_reg >= hudPosVerFrom && ver_reg <= hudPosVerTo)
			address_counter_1 <= address_counter_1 + 1'd1;
		else
			address_counter_1 <= address_counter_1;
	end
  
always @(posedge clk_div[18] or negedge rst)
	begin
		if(!rst)
			begin
				hudPosHorFrom <= 7'd100;
				hudPosHorTo   <= 8'd146;
				hudPosVerFrom <= 9'd400;
				hudPosVerTo   <= 10'd524;
			end
		else
			begin
				hudPosHorFrom <= hudPosHorFrom - 1'd1;
				hudPosHorTo   <= hudPosHorTo - 1'd1;
			end
	end

  
endmodule
