module space(
	clk,
	rst,
	KBclk,
	KBin,
	flag
);
   
input clk,rst,KBclk,KBin;
reg [32:0] KBdata;
//reg [7:0] KBreg;
reg [2:0]delay_clk;
output reg flag;
wire kb_clk_m;

assign kb_clk_m = delay_clk[1];

always @(posedge clk,negedge rst)
	begin
		if(!rst)
			delay_clk <= 3'd0;
		else
			delay_clk <= {KBclk,delay_clk[2:1]};
	end
	
	
always @(posedge kb_clk_m,negedge rst)
	begin
		if(!rst)
			KBdata <= 33'd0;
		else
			KBdata <= {KBin,KBdata[32:1]};
	end

always @(posedge clk,negedge rst)
	begin
		if(!rst)
			flag <= 1'b0;
		else if(KBdata[9:1] == 6'h29)
			flag <= 1'b1;
		else
			flag <= 1'b0;
	end
	
//assign	KBreg = KBdata[9:1];


endmodule
		