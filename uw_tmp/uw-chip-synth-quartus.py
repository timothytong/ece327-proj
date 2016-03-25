# import shutil

#--------------------------------------------------------------

my_chdir("./uw_tmp")

# my_rm( ["LOG"] )
# 
# my_mv( "../LOG",  "LOG" )

xsys("quartus_sh -t uw-chip-synth-quartus.tcl kirsch")

xsys("quartus_sh -t /opt-src/CMC/local/maagaard/ece327/lib/pins-NULL.tcl kirsch")

# not using mif files (memory initialization)
# my_cp_nofail( "../*.mif", "." )

my_print("map... ")
xsys( "quartus_map kirsch --source kirsch_logic.edf --family=CycloneII")

my_print("fit... ")
xsys( "quartus_fit kirsch --effort=fast --part=EP2C35F672C7")

my_print("tan... ")
# xsys( "quartus_tan kirsch" )
xsys( "quartus_sta -t uw-chip-synth-quartus-timing.tcl kirsch" )

my_print( "asm... ")
xsys( "quartus_asm kirsch" )

my_println( "eda..." )
xsys( "quartus_eda kirsch --simulation --tool=modelsim --format=vhdl")
xsys( "quartus_eda kirsch --simulation --tool=modelsim --format=verilog")

# my_mv( "LOG", "../LOG" )
my_chdir( ".." )

my_mv( "uw_tmp/simulation/modelsim/kirsch.vo"       , "uw_tmp/kirsch_chip.v" )
my_mv( "uw_tmp/simulation/modelsim/kirsch.vho"       , "uw_tmp/kirsch_chip.vhd" )
my_mv( "uw_tmp/simulation/modelsim/kirsch_vhd.sdo" , "uw_tmp/kirsch_chip.sdf" )
my_mv( "uw_tmp/kirsch.sof" , "kirsch.sof" )

my_cp( "uw_tmp/kirsch.map.rpt", "RPT/area_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip.rpt", "RPT/timing_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip_path.rpt", "RPT/timing_chip_path.rpt", error_level=1 )

#------------------------------------------------------------------------
# build shim architecture

# copy modelsim.ini to local directory
xsys( "vmap -c" )

xsys( "vlib work-msim")

# get synthesized entity (std_logic vector and no generics)
xsys( "vlog -novopt -work work-msim uw_tmp/kirsch_logic.v")

# fix up _chip.vhd file
vgencomp_to_arch( "kirsch", "chip", [] + [ "mem.vhd", "kirsch_synth_pkg.vhd", "kirsch.vhd" ] )
