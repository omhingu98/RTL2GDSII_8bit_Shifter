set report_default_significant_digits 6 
set link_path "./../ref/lib/stdcell_rvt/saed32rvt_ss0p7vn40c.db" 

read_verilog "./../ICCII/results/8bit_shifter.routed.v"
link_design
current_design shifter 


read_sdc ./../CONSTRAINTS/8bit_shifter.sdc 

read_parasitics "./../ICCII/results/8bit_shifter_func::nom.spef.p1_125.spef"

update_timing -full

report_timing
report_design

check_timing -verbose > ./reports/check_timing/check_timing.p1_report
report_global_timing > ./reports/timing/report_global_timing.p1_report
report_clock -skew -attribute > ./reports/clock/report_clock.p1_report
report_analysis_coverage > ./reports/analysis_coverage/report_analysis_coverage.p1_report
report_timing -slack_lesser_than 0.0 -delay max -nosplit -input -net  > ./reports/timing/report_timing.p1_report



