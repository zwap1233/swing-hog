
variable bd [get_files design_1.bd]
if {$bd != ""} {
    puts "Adding wrapper for $bd"
    variable bd_path [file dirname $bd]

    make_wrapper -files $bd -top

    AddFile $bd_path/hdl/design_1_wrapper.v sources_1
    SetTopProperty design_1_wrapper sources_1
    update_compile_order -fileset sources_1
}

