onerror {quit -f}
vlib work
vlog -work work sumador_restador_completo.vo
vlog -work work sumador_restador_completo.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sumador_restador_completo_vlg_vec_tst
vcd file -direction sumador_restador_completo.msim.vcd
vcd add -internal sumador_restador_completo_vlg_vec_tst/*
vcd add -internal sumador_restador_completo_vlg_vec_tst/i1/*
add wave /*
run -all
