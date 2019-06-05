transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {shiftreg.vho}

vcom -93 -work work {C:/Users/mcankaraman/Desktop/fpga/Fpga Project/shiftreg/tb_shifreg.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=shiftreg_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  tb_shiftreg

add wave *
view structure
view signals
run 500 ns
