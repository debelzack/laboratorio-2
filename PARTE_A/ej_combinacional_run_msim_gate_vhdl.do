transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ej_combinacional.vho}

vcom -93 -work work {C:/Users/Nico/Desktop/TRABAJO DE LABORATORIO FPGA/PARTE A/ej_combinacional_testbench.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  ej_combinacional_testbench

add wave *
view structure
view signals
run -all
