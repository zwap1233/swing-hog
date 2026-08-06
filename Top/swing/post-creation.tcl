#make_wrapper -files [get_files /home/wouter/Workspace/blink-hog/blink/bd/design_1/design_1.bd] -top

#add_files -norecurse /home/wouter/Workspace/blink-hog/blink/bd/design_1/hdl/design_1_wrapper.v

# update_compile_order -fileset sources_1
variable bd [get_files design_1.bd]
if {$bd != ""} {
    puts "Adding wrapper for $bd"
    variable bd_path [file dirname $bd]

    make_wrapper -files $bd -top

    AddFile $bd_path/hdl/design_1_wrapper.v sources_1
    SetTopProperty design_1_wrapper sources_1
    update_compile_order -fileset sources_1
}

