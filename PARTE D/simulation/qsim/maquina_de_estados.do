onerror {quit -f}
vlib work
vlog -work work maquina_de_estados.vo
vlog -work work maquina_de_estados.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.maquina_de_estados_vlg_vec_tst
vcd file -direction maquina_de_estados.msim.vcd
vcd add -internal maquina_de_estados_vlg_vec_tst/*
vcd add -internal maquina_de_estados_vlg_vec_tst/i1/*
add wave /*
run -all
