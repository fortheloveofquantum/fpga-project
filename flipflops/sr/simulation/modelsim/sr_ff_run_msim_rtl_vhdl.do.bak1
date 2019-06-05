transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mcankaraman/Desktop/fpga/Fpga Project/flipflops/sr/sr_ff.vhd}

vcom -93 -work work {C:/Users/mcankaraman/Desktop/fpga/Fpga Project/flipflops/sr/tb_sr_ff.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_sr_ff

add wave *
view structure
view signals
run 600 ns
