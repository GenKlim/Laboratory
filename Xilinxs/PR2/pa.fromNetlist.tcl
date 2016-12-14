
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name PR2 -dir "C:/Users/admin/Documents/Laboratory/Xilinxs/PR2/planAhead_run_3" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/admin/Documents/Laboratory/Xilinxs/PR2/TOP.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/admin/Documents/Laboratory/Xilinxs/PR2} }
set_property target_constrs_file "Nexys4_Master.ucf" [current_fileset -constrset]
add_files [list {Nexys4_Master.ucf}] -fileset [get_property constrset [current_run]]
link_design
