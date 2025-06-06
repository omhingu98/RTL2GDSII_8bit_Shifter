set_app_options -name route.global.timing_driven -value true
set_app_options -name route.global.crosstalk_driven -value false


		#track assignment
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.track.crosstalk_driven -value true
		#

		#detail route 
set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.detail.save_after_iterations -value false
set_app_options -name route.detail.force_max_number_iterations -value false
set_app_options -name route.detail.antenna -value true
set_app_options -name route.detail.antenna_fixing_preference -value use_diodes
set_app_options -name route.detail.diode_libcell_names -value */ANTENNA_RVT
#

#Atomic commands for route_auto###################################
route_global
	#save_block route_global_database

route_track
		#save_block route_track_database

route_detail
		#save_block route_detail_database

		#route_auto
		#
		#
		#
route_opt

		######################################
		# OUTPUTS
		#
		#
write_verilog ./results/8bit_shifter.routed.v
write_sdc -output ./results/8bit_shifter.routed.sdc
save_block -as 8BIT_SHIFTER
save_lib
write_parasitics -format spef -output ./results/8bit_shifter_${scenario1}.spef

