
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name MAKSIMOV_LR2 -dir "/media/ext4_tb/lin/moved/apcel/Documents/5sem/Xilinx/MAKSIMOV_LR2/planAhead_run_4" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/media/ext4_tb/lin/moved/apcel/Documents/5sem/Xilinx/MAKSIMOV_LR2/TOP.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/media/ext4_tb/lin/moved/apcel/Documents/5sem/Xilinx/MAKSIMOV_LR2} }
set_property target_constrs_file "Nexys4_Master.ucf" [current_fileset -constrset]
add_files [list {Nexys4_Master.ucf}] -fileset [get_property constrset [current_run]]
link_design
