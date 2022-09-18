transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rapha/Documents/Dev/ufrn/labs-cd/lab2/ones_counter.vhd}
vcom -93 -work work {C:/Users/rapha/Documents/Dev/ufrn/labs-cd/lab2/and_gate.vhd}
vcom -93 -work work {C:/Users/rapha/Documents/Dev/ufrn/labs-cd/lab2/or_gate.vhd}
vcom -93 -work work {C:/Users/rapha/Documents/Dev/ufrn/labs-cd/lab2/xor_gate.vhd}
vcom -93 -work work {C:/Users/rapha/Documents/Dev/ufrn/labs-cd/lab2/xnor_gate.vhd}

