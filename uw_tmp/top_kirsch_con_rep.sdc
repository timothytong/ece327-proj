###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name hierarchy -value "preserve_interface_block_and_sub_blocks" /work/top_kirsch/main_XRTL -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/mem -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/mem_0 -design rtl 
set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/mem/mem -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/mem/mem -design rtl 

set_attribute -name ignore_ram_rw_collision -value "true" -instance -type default u_kirsch/mem_0/mem_0 -design rtl 
set_attribute -name ram_processed -value "true" -instance u_kirsch/mem_0/mem_0 -design rtl 




##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 20.000000 -waveform { 0.000000 10.000000 } -design rtl 
