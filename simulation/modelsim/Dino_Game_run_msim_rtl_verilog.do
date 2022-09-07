transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Code/FPGA/Dino_Game {D:/Code/FPGA/Dino_Game/Dino.v}
vlog -vlog01compat -work work +incdir+D:/Code/FPGA/Dino_Game {D:/Code/FPGA/Dino_Game/Huddle.v}
vlog -vlog01compat -work work +incdir+D:/Code/FPGA/Dino_Game {D:/Code/FPGA/Dino_Game/Space.v}
vlog -vlog01compat -work work +incdir+D:/Code/FPGA/Dino_Game {D:/Code/FPGA/Dino_Game/CountrolUnit.v}
vlog -vlog01compat -work work +incdir+D:/Code/FPGA/Dino_Game {D:/Code/FPGA/Dino_Game/Main.v}
vlog -vlog01compat -work work +incdir+D:/Code/FPGA/Dino_Game {D:/Code/FPGA/Dino_Game/Score.v}
vlog -vlog01compat -work work +incdir+D:/Code/FPGA/Dino_Game {D:/Code/FPGA/Dino_Game/DinoData.v}

