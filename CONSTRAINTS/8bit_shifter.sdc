# Clock Definition: Tighter than 4.67, aiming for ~3.6ns
create_clock -period 4.4 -name Clock [get_ports Clock]

# Input delay: keep a bit relaxed
set_input_delay -max 0.4 -clock Clock [all_inputs]
set_input_transition 0.5 [all_inputs]

# Output delay
set_output_delay -max 0.4 -clock Clock [all_outputs]

# Clock uncertainty — typical values
set_clock_uncertainty -setup 0.25 [get_clocks Clock]
set_clock_uncertainty -hold 0.10 [get_clocks Clock]

# Transition constraints (reasonable for 65nm/90nm)
set_max_transition 0.35 [current_design]
set_max_transition -clock_path 0.15 [get_clocks Clock]
                                                                                                                                                                                                                                                    
~                                       
