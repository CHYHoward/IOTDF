#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Jun 15 22:34:45 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_ioOri R0
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set eco_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set enc_enable_print_mode_command_reset_options 1
set init_assign_buffer 1
set init_gnd_net VSS
setImportMode -keepEmptyModule 1 -treatUndefinedCellAsBbox 0
set init_import_mode { -keepEmptyModule 1 -treatUndefinedCellAsBbox 0}
set init_lef_file {../library/lef/tsmc13fsg_8lm_cic.lef ../library/lef/tpz013g3_8lm_cic.lef ../library/lef/RF2SH64x16.vclef ../library/lef/antenna_8.lef}
set init_mmmc_file IOTDF.view
set init_pwr_net VDD
set init_top_cell IOTDF
set init_verilog ../syn/IOTDF_syn.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 80
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
getIoFlowFlag
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VDD -type tiehi -pin VDD -inst *
globalNetConnect VSS -type tielo -pin VSS -inst *
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site TSM13SITE -r 1 0.8 40 40 40 40
uiSetTool select
getIoFlowFlag
fit
setPlaceMode -fp true
placeDesign -noPrePlaceOpt
setDrawView place
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix IOTDF_prePlace -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix IOTDF_prePlace -outDir timingReports
setPlaceMode -fp false
placeDesign -noPrePlaceOpt
refinePlace -checkRoute 0 -preserveRouting 0 -rmAffectedRouting 0 -swapEEQ 0
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix IOTDF_preCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
getCTSMode -engine -quiet
refinePlace -checkRoute 0 -preserveRouting 0 -rmAffectedRouting 0 -swapEEQ 0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer METAL8 -stacked_via_bottom_layer METAL1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top METAL7 bottom METAL7 left METAL6 right METAL6} -width {top 2 bottom 2 left 2 right 2} -spacing {top 0.24 bottom 0.24 left 0.24 right 0.24} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None -use_wire_group 1 -use_wire_group_bits 2 -use_interleaving_wire_group 1
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer METAL8 -stacked_via_bottom_layer METAL1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VDD VSS} -layer METAL6 -direction vertical -width 1 -spacing 0.24 -set_to_set_distance 30 -start_from left -start_offset 30 -stop_offset 30 -switch_layer_over_obs true -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METAL8 -padcore_ring_bottom_layer_limit METAL1 -block_ring_top_layer_limit METAL8 -block_ring_bottom_layer_limit METAL1 -use_wire_group 1 -use_interleaving_wire_group 1 -use_wire_group_bits 1 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report IOTDF.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report IOTDF.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix IOTDF_preCTS -outDir timingReports
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setTieHiLoMode -reset
setTieHiLoMode -cell {  TIEHI TIELO } -maxDistance 100 -maxFanOut 10 -honorDontTouch false -createHierPort false
addTieHiLo -cell {TIEHI TIELO} -prefix LTIE
setOptMode -usefulSkewCCOpt standard
add_ndr -name CTS_2W1S -spacing {METAL1:METAL4 0.1 METAL5:METAL6 0.2 METAL7 0.3} -width {METAL1:METAL4 0.2 METAL5:METAL6 0.4 METAL7 0.6}
add_ndr -name CTS_2W2S -spacing {METAL1:METAL4 0.2 METAL5:METAL6 0.4 METAL7 0.6} -width {METAL1:METAL4 0.2 METAL5:METAL6 0.4 METAL7 0.6}
create_route_type -name leaf_rule -non_default_rule CTS_2W1S -top_preferred_layer METAL5 -bottom_preferred_layer METAL4
create_route_type -name trunk_rule -non_default_rule CTS_2W2S -top_preferred_layer METAL7 -bottom_preferred_layer METAL6 -shield_net VSS
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property routing_top_min_fanout 10000
set_ccopt_property buffer_cells {BUFX12 BUFX8 BUFX6 BUFX4 BUFX2}
set_ccopt_property inverter_cells {INVX12 INVX8 INVX6 INVX4 INVX2}
set_ccopt_property use_inverters true
set_ccopt_property target_max_trans 100ps
set_ccopt_property target_skew 50ps
create_ccopt_clock_tree_spec -file ccopt.spec
ccopt_check_and_flatten_ilms_no_restore
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner Delay_Corner_max -early -clock_tree clk 0.100
set_ccopt_property target_max_trans_sdc -delay_corner Delay_Corner_max -late -clock_tree clk 0.100
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_max -early -clock_tree clk 0.500
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_min -early -clock_tree clk 0.500
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_max -late -clock_tree clk 0.500
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_min -late -clock_tree clk 0.500
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_max -early -clock_tree clk 0.500
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_min -early -clock_tree clk 0.500
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_max -late -clock_tree clk 0.500
set_ccopt_property source_output_max_trans -delay_corner Delay_Corner_min -late -clock_tree clk 0.500
set_ccopt_property clock_period -pin clk 10
create_ccopt_skew_group -name clk/func_mode -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/func_mode true
set_ccopt_property target_insertion_delay -skew_group clk/func_mode 0.500
set_ccopt_property extracted_from_clock_name -skew_group clk/func_mode clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/func_mode func_mode
set_ccopt_property extracted_from_delay_corners -skew_group clk/func_mode {Delay_Corner_max Delay_Corner_min}
create_ccopt_skew_group -name clk/scan_mode -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/scan_mode true
set_ccopt_property target_insertion_delay -skew_group clk/scan_mode 0.500
set_ccopt_property extracted_from_clock_name -skew_group clk/scan_mode clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/scan_mode scan_mode
set_ccopt_property extracted_from_delay_corners -skew_group clk/scan_mode {Delay_Corner_max Delay_Corner_min}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix IOTDF_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix IOTDF_postCTS -outDir timingReports
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { METAL1(1) METAL8(8) } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { METAL1(1) METAL8(8) } -nets { VSS VDD } -allowLayerChange 1 -targetViaLayerRange { METAL1(1) METAL8(8) }
refinePlace -checkRoute 0 -preserveRouting 0 -rmAffectedRouting 0 -swapEEQ 0
verifyConnectivity -type special -noUnroutedNet -error 1000 -warning 50
setAttribute -net CTS_148 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_147 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_146 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_145 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_144 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_143 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_142 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_141 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_140 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_139 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_138 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_137 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_136 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_135 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_134 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_133 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_132 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_131 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_130 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_129 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_128 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_127 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_126 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_125 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_124 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_123 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_122 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_121 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_120 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_119 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_118 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_117 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_116 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_115 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_114 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_113 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_112 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net CTS_111 -avoid_detour true -weight 10 -preferred_extra_space 1
setAttribute -net clk -avoid_detour true -weight 10 -preferred_extra_space 1
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName ANTENNA
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix IOTDF_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix IOTDF_postRoute -outDir timingReports
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report IOTDF.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report IOTDF.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
saveNetlist IOTDF_apr.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf IOTDF_apr.sdf
summaryReport -noHtml -outfile summaryReport.rpt
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteWidenWireRule CTS_2W1S
setNanoRouteMode -quiet -timingEngine CTE
setNanoRouteMode -quiet -routeAntennaCellName {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUFX12 BUFX16 BUFX2 BUFX20 BUFX3 BUFX4 BUFX6 BUFX8 CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8 DLY1X1 DLY1X4 DLY2X1 DLY2X4 DLY3X1 DLY3X4 DLY4X1 DLY4X4 CLKINVX1 CLKINVX12 CLKINVX16 CLKINVX2 CLKINVX20 CLKINVX3 CLKINVX4 CLKINVX6 CLKINVX8 INVX1 INVX12 INVX16 INVX2 INVX20 INVX3 INVX4 INVX6 INVX8 INVXL} -maxAllowedDelay 1
setStreamOutMode -specifyViaName default -SEvianames false -virtualConnection false -uniquifyCellNamesPrefix false -snapToMGrid false -textSize 1 -version 3
setTieHiLoMode -reset
setTieHiLoMode -cell {{TIEHI TIELO}} -maxDistance 100 -maxFanOut 10 -honorDontTouch false -createHierPort false
saveDesign IOTDF0615
saveDesign IOTDF0615
