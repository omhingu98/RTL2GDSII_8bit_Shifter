################################################################################
#
# Design name:  8bit_shifter
#
# Created by icc2 write_sdc on Tue Jun  3 14:30:20 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 2
create_clock -name Clock -period 4.4 -waveform {0 2.2} [get_ports {Clock}]
set_propagated_clock [get_clocks {Clock}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.0291824 [get_clocks {Clock}]
# -origin useful_skew
set_clock_latency -max 0.0305748 [get_clocks {Clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {Clock}]
set_clock_uncertainty -setup 0.25 [get_clocks {Clock}]
set_clock_uncertainty -hold 0.1 [get_clocks {Clock}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Clock}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Reset}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Direction}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Shift_Amount[2]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Shift_Amount[1]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Shift_Amount[0]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[7]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[6]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[5]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[4]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[3]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[2]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[1]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 6
set_input_transition 0.5 [get_ports {Data_In[0]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Clock}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Reset}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Direction}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports \
    {Shift_Amount[2]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports \
    {Shift_Amount[1]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports \
    {Shift_Amount[0]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[7]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[6]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[5]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[4]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[3]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[2]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[1]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 5
set_input_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_In[0]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[7]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[6]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[5]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[4]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[3]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[2]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[1]}]
# /home/student/Documents/RTL2GDSII(1)/RTL2GDSII/CONSTRAINTS/8bit_shifter.sdc, \
#   line 9
set_output_delay -clock [get_clocks {Clock}] -max 0.4 [get_ports {Data_Out[0]}]
set_max_transition 0.35 [current_design]
set_max_transition 0.15 [get_clocks {Clock}] -clock_path
