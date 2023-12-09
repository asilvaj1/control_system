###############################################################################
# Created by write_sdc
# Sat Dec  9 16:12:35 2023
###############################################################################
current_design control_system
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 24.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {clk_s}]
set_load -pin_load 0.1900 [get_ports {io_oeb[37]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[36]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[35]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[34]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[33]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[32]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[31]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[30]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[29]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[28]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[27]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[26]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[25]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[24]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[23]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[22]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[21]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[20]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[19]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[18]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[17]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[16]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[15]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[14]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[13]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[12]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[11]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[10]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[9]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[8]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[7]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[6]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[5]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[4]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[3]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[2]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[1]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[0]}]
set_load -pin_load 0.1900 [get_ports {salida[3]}]
set_load -pin_load 0.1900 [get_ports {salida[2]}]
set_load -pin_load 0.1900 [get_ports {salida[1]}]
set_load -pin_load 0.1900 [get_ports {salida[0]}]
set_input_transition 0.6100 [get_ports {clk}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 4.0000 [current_design]
