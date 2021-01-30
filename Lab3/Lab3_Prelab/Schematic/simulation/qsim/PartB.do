onerror {exit -code 1}
vlib work
vlog -work work PartB.vo
vlog -work work partB_test.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.PartB_vlg_vec_tst -voptargs="+acc"
vcd file -direction PartB.msim.vcd
vcd add -internal PartB_vlg_vec_tst/*
vcd add -internal PartB_vlg_vec_tst/i1/*
run -all
quit -f
