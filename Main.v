module Main(clk,
		  rst,
		  VGA_RED,
        VGA_GREEN,
        VGA_BLUE,
        VGA_HS,
        VGA_VS,KBclk,KBin,q
);

input clk,rst,KBclk,KBin;
output VGA_RED;
output VGA_GREEN;
output VGA_BLUE;
output VGA_HS;
output VGA_VS;
output [0:0] q;
/* Internal registers for horizontal signal timing */
reg [10:0] hor_reg; // to count 1040 different values up to 1039
reg hor_sync;
wire hor_max = (hor_reg == 1039); // to tell when a line is full
/* Internal registers for vertical signal timing */
reg [9:0] ver_reg; // to count 666 different values up to 665
reg ver_sync;
reg red, green, blue,flag;
wire ver_max = (ver_reg == 665); // to tell when a line is full
// Include
wire [11:0] DinoPosHorFrom,DinoPosHorTo,DinoPosVerFrom,DinoPosVerTo,
	 hudPosHorFrom,hudPosHorTo,hudPosVerFrom,hudPosVerTo,
	 scoreHorFrom,scoreHorTo,scoreVerFrom,scoreVerTo;

	ControlUnit U1(clk,rst,hor_reg,ver_reg,DinoPosHorFrom,DinoPosHorTo,DinoPosVerFrom,DinoPosVerTo,
		hudPosHorFrom,hudPosHorTo,hudPosVerFrom,hudPosVerTo,scoreHorFrom,scoreHorTo,scoreVerFrom,scoreVerTo,
		KBclk,KBin,
		q
);
   
	// Code

    
    /* Running through line */
always @ (posedge clk or negedge rst) 
	 begin
        if (!rst) 
			  begin 
					hor_reg <= 0;
					ver_reg <= 0;
			  end
        else if (hor_max) 
			  begin
					hor_reg <= 0;

					/* Running through frame */
					if (ver_max)
						 ver_reg <= 0;
					else
					ver_reg <= ver_reg + 1;

			  end 
		  else
            hor_reg <= hor_reg + 1;
    end
    
always @ (posedge clk or negedge rst) begin

    if(!rst) 
		begin 
        hor_sync <= 0;
        ver_sync <= 0;
		end
    else 
		begin
        /* Generating the horizontal sync signal */
        if (hor_reg == 856)      // video (800) + front porch (56)
            hor_sync <= 1;       // turn on horizontal sync pulse
        else if (hor_reg == 976) // video (800) + front porch (56) + Sync Pulse (120)
            hor_sync <= 0;       // turn off horizontal sync pulse

        /* Generating the vertical sync signal */
        if (ver_reg == 637)      // LINES: video (600) +  front porch (37)
            ver_sync <= 1;       // turn on vertical sync pulse
        else if (ver_reg == 643) // LINES: video (600) + front porch (37) + Sync Pulse (6)
            ver_sync <= 0;       // turn off vertical sync pulse
      end
end
		
always @(posedge clk or negedge rst)
	begin
		if(!rst)
			begin
				red <= 1'd0;
				green <= 1'd0;
				blue <= 1'd0;
			end	
      else if (hor_reg >= DinoPosHorFrom && hor_reg <= DinoPosHorTo && ver_reg >= DinoPosVerFrom && ver_reg <= DinoPosVerTo && (q==1'b1)) 
			begin
				red <= 1;
				green <= 1;
				blue <= 1;
			end 
		else if (hor_reg >= hudPosHorFrom && hor_reg <= hudPosHorTo && ver_reg >= hudPosVerFrom && ver_reg <= hudPosVerTo) 
			begin
				red <= 1;
				green <= 0;
				blue <= 0;
			end 
		else if (hor_reg >= scoreHorFrom && hor_reg <= scoreHorTo && ver_reg >= scoreVerFrom && ver_reg <= scoreVerTo) 
			begin
				red <= 1;
				green <= 0;
				blue <= 0;
			end 
      else 
			begin
				red <= 0;
				green <= 0;
				blue <= 0;
			end
	end
			
    // Send the sync signals to the output, inverted as the sync pulse is low.
    // Maybe wrong as this doc says pulse id positive http://tinyvga.com/vga-timing/800x600@72Hz
    assign VGA_HS = ~hor_sync;
    assign VGA_VS = ~ver_sync;
    
    // Send a pattern of colours (based on the registry bits) but do not output anything during the synchronization periods
    //assign VGA_RED = (!hor_reg[0] && !ver_reg[0] && ver_reg < 600 && hor_reg < 800);
    //assign VGA_GREEN = (!hor_reg[1] && !ver_reg[1] && ver_reg < 600 && hor_reg < 800);
    //assign VGA_BLUE = (!hor_reg[2] && !ver_reg[2] && ver_reg < 600 && hor_reg < 800);
    
    assign VGA_RED =  red && ver_reg < 600 && hor_reg < 800;
    assign VGA_GREEN = green && ver_reg < 600 && hor_reg < 800;
    assign VGA_BLUE = blue && ver_reg < 600 && hor_reg < 800;    
    


endmodule
