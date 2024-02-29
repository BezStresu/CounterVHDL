SetActiveLib -post-synthesis
comp -include "$dsn\synthesis\TutorVHDL.vhd" 
comp -include "$dsn\src\TestBench\tutorvhdl_TB_synth.vhd" 
asim +access +r TESTBENCH_FOR_tutorvhdl 
wave 
wave -noreg CLR
wave -noreg CLK
wave -noreg CE
wave -noreg LOAD
wave -noreg DATA
wave -noreg DIR
wave -noreg SEL
wave -noreg OE
wave -noreg LE
wave -noreg Q
run 6.00 us
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_synth_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
