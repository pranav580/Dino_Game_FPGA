module Dino(
	clk,
	rst,
	breakGameFlag,
	SpaceFlag,
	hor_reg,
	ver_reg,
	DinoPosHorFrom,
	DinoPosHorTo,
	DinoPosVerFrom,
	DinoPosVerTo,
	q
);

input clk,rst,breakGameFlag,SpaceFlag;
input [10:0] hor_reg;
input [9:0] ver_reg;
reg	[12:0]  address,address_counter;
output reg q;
wire [0:0] DinoImg0,DinoImg1;
output reg [12:0] DinoPosHorFrom,DinoPosHorTo,DinoPosVerFrom,DinoPosVerTo;

DInoData U6(address,clk,DinoImg0);
DInoData1 U7(address_counter,clk,DinoImg1);


always @(posedge clk or negedge rst)
	begin
		if(!rst)
			begin
				DinoPosHorFrom <= 7'd0;
				DinoPosHorTo   <= 7'd0;
				DinoPosVerFrom <= 7'd0;
				DinoPosVerTo   <= 7'd0;
			end
		else if(SpaceFlag == 1'd1)
			begin
				DinoPosHorFrom <= 12'd150;
				DinoPosHorTo <= 12'd181;
				DinoPosVerFrom <= 12'd150;
				DinoPosVerTo <= 12'd221;
			end
		else
			begin
				DinoPosHorFrom <= 7'd160;
				DinoPosHorTo   <= 7'd191;
				DinoPosVerFrom <= 7'd160;
				DinoPosVerTo   <= 7'd231;
			end
	end	
	
always @(posedge clk or negedge rst)
	begin
		if(!rst)
			begin
				address <= 12'd0;
				address_counter <= 12'd0;
			end
		else if(address == 13'd2303)
			begin
				address <= 12'd0;
				address_counter <= 12'd0;
			end
		else if(hor_reg >= DinoPosHorFrom && hor_reg <= DinoPosHorTo && ver_reg >= DinoPosVerFrom && ver_reg <= DinoPosVerTo)
			begin
				address <= address + 13'd1;
				address_counter <= address_counter + 13'd1;
			end
		else
			begin
				address <= address;
				address_counter <= address_counter;
			end
	end		

	//****************************Dino Toggle****************************//

reg [25:0] clk_div;
reg DinoImgFlag;
always @(posedge clk or negedge rst)
begin
	if(!rst)
		clk_div <= 26'd0;
	else
		clk_div <= clk_div +4'd1;
end

always @(posedge clk or negedge rst)
begin
	if(!rst)
		DinoImgFlag <= 1'd0;
	else if(clk_div[24])
		DinoImgFlag <= 1'd1;
	else
		DinoImgFlag <= 1'd0;
end
		

always @(posedge clk or negedge rst)
begin
	if(!rst)
		q <= 1'd0;
	else if(DinoImgFlag)
		q <= DinoImg0;
	else
		q <= DinoImg1;
end
endmodule
