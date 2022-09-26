module ControlUnit(
		clk,
		rst,
		hor_reg,
		ver_reg,
		DinoPosHorFrom,
		DinoPosHorTo,
		DinoPosVerFrom,
		DinoPosVerTo,
		hudPosHorFrom,
		hudPosHorTo,
		hudPosVerFrom,
		hudPosVerTo,
		scoreHorFrom,
		scoreHorTo,
		scoreVerFrom,
		scoreVerTo,
		KBclk,KBin,
		q,qtree1
);

input rst,clk,KBclk,KBin;
input [10:0] hor_reg;
input [9:0] ver_reg;
reg breakGameFlag;
output [11:0] DinoPosHorFrom,DinoPosHorTo,DinoPosVerFrom,DinoPosVerTo,hudPosHorFrom,hudPosHorTo,hudPosVerFrom,hudPosVerTo,scoreHorFrom,scoreHorTo,scoreVerFrom,scoreVerTo;
output q,qtree1;
wire Spaceflag;


Huddle U2(clk,rst,breakGameFlag,hor_reg,ver_reg,hudPosHorFrom,hudPosHorTo,hudPosVerFrom,hudPosVerTo,qtree1);
Dino U3(clk,rst,breakGameFlag,Spaceflag,hor_reg,ver_reg,DinoPosHorFrom,DinoPosHorTo,DinoPosVerFrom,DinoPosVerTo,q);
space U4(clk,rst,KBclk,KBin,Spaceflag);
Score U5(clk,rst,breakGameFlag,scoreHorFrom,scoreHorTo,scoreVerFrom,scoreVerTo);




endmodule
