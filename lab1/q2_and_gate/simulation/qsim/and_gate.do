onerror {exit -code 1}
vlib work
vlog -work work and_gate.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.and_gate_vlg_vec_tst -voptargs="+acc"
vcd file -direction and_gate.msim.vcd
vcd add -internal and_gate_vlg_vec_tst/*
vcd add -internal and_gate_vlg_vec_tst/i1/*
run -all
quit -f
