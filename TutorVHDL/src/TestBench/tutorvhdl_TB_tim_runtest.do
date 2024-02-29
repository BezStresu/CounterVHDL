setactivelib -timing
#Compiling UUT module design files
comp -include $dsn\src\TutorVHDL.vhd
comp -include "$dsn\src\TestBench\tutorvhdl_TB_tim.v"
asim +access +r tutorvhdl_tb_tim glbl -L C:\Aldec\Active-HDL-11.1\vlib\xilinx_vivado\simprims_ver -sdftyp -AUTO="$DSN/implement/TutorVHDL.sdf"

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

#End simulation macro
