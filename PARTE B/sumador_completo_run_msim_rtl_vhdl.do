transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Nico/Desktop/TRABAJO DE LABORATORIO FPGA/PARTE B/D_FF.vhd}
vcom -93 -work work {C:/Users/Nico/Desktop/TRABAJO DE LABORATORIO FPGA/PARTE B/sumador_completo.vhd}

vcom -93 -work work {C:/Users/Nico/Desktop/TRABAJO DE LABORATORIO FPGA/PARTE B/sumador_completo_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  sumador_completo_testbench

add wave *
view structure
view signals
run 40 ns
