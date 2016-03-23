
-- 
-- Definition of  kirsch
-- 
--      Wed Mar 23 19:25:22 2016
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity custom_max_8 is 
   port (
      i_pix1 : IN std_logic_vector (7 DOWNTO 0) ;
      i_pix2 : IN std_logic_vector (7 DOWNTO 0) ;
      i_dir1 : IN std_logic_vector (2 DOWNTO 0) ;
      i_dir2 : IN std_logic_vector (2 DOWNTO 0) ;
      o_max_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_max_pix : OUT std_logic_vector (7 DOWNTO 0)) ;
end custom_max_8 ;

architecture main_unfold_1856 of custom_max_8 is 
   signal nx54128z1, o_max_dir_2_EXMPLR23, nx54128z8, nx54128z7, nx54128z6, 
      nx54128z5, nx54128z4, nx54128z3, nx54128z2, nx19309z7, nx19309z6, 
      nx19309z5, nx19309z4, nx19309z3, nx19309z2, nx19309z1, 
      nx_custom_max_8_vcc_net: std_logic ;

begin
   o_max_dir(2) <= o_max_dir_2_EXMPLR23 ;
   o_max_dir(1) <= '0';
   ix19309z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d4d4",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_dir_2_EXMPLR23, dataa=>i_pix1(7), datab=>
      i_pix2(7), datad=>nx_custom_max_8_vcc_net, cin=>nx19309z1);
   nx_custom_max_8_vcc_net <= '1';
   ix19309z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z1, dataa=>i_pix1(6), datab=>i_pix2(6), datad
      =>nx_custom_max_8_vcc_net, cin=>nx19309z2);
   ix19309z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z2, dataa=>i_pix1(5), datab=>i_pix2(5), datad
      =>nx_custom_max_8_vcc_net, cin=>nx19309z3);
   ix19309z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z3, dataa=>i_pix1(4), datab=>i_pix2(4), datad
      =>nx_custom_max_8_vcc_net, cin=>nx19309z4);
   ix19309z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z4, dataa=>i_pix1(3), datab=>i_pix2(3), datad
      =>nx_custom_max_8_vcc_net, cin=>nx19309z5);
   ix19309z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z5, dataa=>i_pix1(2), datab=>i_pix2(2), datad
      =>nx_custom_max_8_vcc_net, cin=>nx19309z6);
   ix19309z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z6, dataa=>i_pix1(1), datab=>i_pix2(1), datad
      =>nx_custom_max_8_vcc_net, cin=>nx19309z7);
   ix19309z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx19309z7, dataa=>i_pix2(0), datab=>i_pix1(0), datad
      =>nx_custom_max_8_vcc_net);
   ix54128z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d4d4",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54128z1, dataa=>i_pix2(7), datab=>i_pix1(7), 
      datad=>nx_custom_max_8_vcc_net, cin=>nx54128z2);
   ix54128z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx54128z2, dataa=>i_pix2(6), datab=>i_pix1(6), datad
      =>nx_custom_max_8_vcc_net, cin=>nx54128z3);
   ix54128z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx54128z3, dataa=>i_pix2(5), datab=>i_pix1(5), datad
      =>nx_custom_max_8_vcc_net, cin=>nx54128z4);
   ix54128z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx54128z4, dataa=>i_pix2(4), datab=>i_pix1(4), datad
      =>nx_custom_max_8_vcc_net, cin=>nx54128z5);
   ix54128z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx54128z5, dataa=>i_pix2(3), datab=>i_pix1(3), datad
      =>nx_custom_max_8_vcc_net, cin=>nx54128z6);
   ix54128z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx54128z6, dataa=>i_pix2(2), datab=>i_pix1(2), datad
      =>nx_custom_max_8_vcc_net, cin=>nx54128z7);
   ix54128z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx54128z7, dataa=>i_pix2(1), datab=>i_pix1(1), datad
      =>nx_custom_max_8_vcc_net, cin=>nx54128z8);
   ix54128z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx54128z8, dataa=>i_pix1(0), datab=>i_pix2(0), datad
      =>nx_custom_max_8_vcc_net);
   ix61107z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(0), dataa=>i_pix1(0), datab=>i_pix2(0), 
      datac=>nx54128z1);
   ix60110z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(1), dataa=>i_pix1(1), datab=>i_pix2(1), 
      datac=>nx54128z1);
   ix59113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(2), dataa=>i_pix1(2), datab=>i_pix2(2), 
      datac=>nx54128z1);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(3), dataa=>i_pix1(3), datab=>i_pix2(3), 
      datac=>nx54128z1);
   ix57119z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(4), dataa=>i_pix1(4), datab=>i_pix2(4), 
      datac=>nx54128z1);
   ix56122z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(5), dataa=>i_pix1(5), datab=>i_pix2(5), 
      datac=>nx54128z1);
   ix55125z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(6), dataa=>i_pix1(6), datab=>i_pix2(6), 
      datac=>nx54128z1);
   ix54128z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(7), dataa=>i_pix1(7), datab=>i_pix2(7), 
      datac=>nx54128z1);
   ix17315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>o_max_dir(0), dataa=>i_dir1(0), datab=>i_dir2(0), 
      datac=>o_max_dir_2_EXMPLR23);
end main_unfold_1856 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity stage1_hardware is 
   port (
      i_dir1_stage1 : IN std_logic_vector (2 DOWNTO 0) ;
      i_dir2_stage1 : IN std_logic_vector (2 DOWNTO 0) ;
      i_pix1_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
      i_pix2_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
      i_add_op1_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
      i_add_op2_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
      o_add_op12_stage1 : OUT std_logic_vector (8 DOWNTO 0) ;
      o_max_add_stage1 : OUT std_logic_vector (9 DOWNTO 0) ;
      o_max_dir_stage1 : OUT std_logic_vector (2 DOWNTO 0)) ;
end stage1_hardware ;

architecture main_unfold_1260 of stage1_hardware is 
   component custom_max_8
      port (
         i_pix1 : IN std_logic_vector (7 DOWNTO 0) ;
         i_pix2 : IN std_logic_vector (7 DOWNTO 0) ;
         i_dir1 : IN std_logic_vector (2 DOWNTO 0) ;
         i_dir2 : IN std_logic_vector (2 DOWNTO 0) ;
         o_max_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         o_max_pix : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal o_add_op12_stage1_EXMPLR101: std_logic_vector (8 DOWNTO 0) ;
   
   signal o_max_add_stage1_9_EXMPLR83: std_logic ;
   
   signal custom_max_pix_output: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx45057z8, nx45057z7, nx45057z6, nx45057z5, nx45057z4, nx45057z3, 
      nx45057z2, nx15254z10, nx15254z9, nx15254z8, nx15254z7, nx15254z6, 
      nx15254z5, nx15254z4, nx15254z3, o_max_dir_stage1_1_EXMPLR95, 
      i_dir2_stage1_2_EXMPLR96, nx15254z2: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_add_op12_stage1(7) <= o_add_op12_stage1_EXMPLR101(7) ;
   o_add_op12_stage1(6) <= o_add_op12_stage1_EXMPLR101(6) ;
   o_add_op12_stage1(5) <= o_add_op12_stage1_EXMPLR101(5) ;
   o_add_op12_stage1(4) <= o_add_op12_stage1_EXMPLR101(4) ;
   o_add_op12_stage1(3) <= o_add_op12_stage1_EXMPLR101(3) ;
   o_add_op12_stage1(2) <= o_add_op12_stage1_EXMPLR101(2) ;
   o_add_op12_stage1(1) <= o_add_op12_stage1_EXMPLR101(1) ;
   o_add_op12_stage1(0) <= o_add_op12_stage1_EXMPLR101(0) ;
   o_max_dir_stage1(1) <= o_max_dir_stage1_1_EXMPLR95 ;
   u_max1 : custom_max_8 port map ( i_pix1(7)=>i_pix1_stage1(7), i_pix1(6)=>
      i_pix1_stage1(6), i_pix1(5)=>i_pix1_stage1(5), i_pix1(4)=>
      i_pix1_stage1(4), i_pix1(3)=>i_pix1_stage1(3), i_pix1(2)=>
      i_pix1_stage1(2), i_pix1(1)=>i_pix1_stage1(1), i_pix1(0)=>
      i_pix1_stage1(0), i_pix2(7)=>i_pix2_stage1(7), i_pix2(6)=>
      i_pix2_stage1(6), i_pix2(5)=>i_pix2_stage1(5), i_pix2(4)=>
      i_pix2_stage1(4), i_pix2(3)=>i_pix2_stage1(3), i_pix2(2)=>
      i_pix2_stage1(2), i_pix2(1)=>i_pix2_stage1(1), i_pix2(0)=>
      i_pix2_stage1(0), i_dir1(2)=>o_max_dir_stage1_1_EXMPLR95, i_dir1(1)=>
      DANGLING(0,0), i_dir1(0)=>i_dir1_stage1(0), i_dir2(2)=>
      i_dir2_stage1_2_EXMPLR96, i_dir2(1)=>o_max_dir_stage1_1_EXMPLR95, 
      i_dir2(0)=>i_dir2_stage1(0), o_max_dir(2)=>o_max_dir_stage1(2), 
      o_max_dir(1)=>DANGLING(0,1), o_max_dir(0)=>o_max_dir_stage1(0), 
      o_max_pix(7)=>custom_max_pix_output(7), o_max_pix(6)=>
      custom_max_pix_output(6), o_max_pix(5)=>custom_max_pix_output(5), 
      o_max_pix(4)=>custom_max_pix_output(4), o_max_pix(3)=>
      custom_max_pix_output(3), o_max_pix(2)=>custom_max_pix_output(2), 
      o_max_pix(1)=>custom_max_pix_output(1), o_max_pix(0)=>
      custom_max_pix_output(0));
   o_max_dir_stage1_1_EXMPLR95 <= '0';
   i_dir2_stage1_2_EXMPLR96 <= '1';
   o_max_add_stage1_add9_1_ix15254z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(8), cout=>
      o_max_add_stage1_9_EXMPLR83, dataa=>nx15254z2, datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>o_add_op12_stage1_EXMPLR101(8));
   o_max_add_stage1_add9_1_ix15254z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(7), cout=>nx15254z3, dataa=>
      o_add_op12_stage1_EXMPLR101(7), datab=>custom_max_pix_output(7), datad
      =>i_dir2_stage1_2_EXMPLR96, cin=>nx15254z4);
   o_max_add_stage1_add9_1_ix15254z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(6), cout=>nx15254z4, dataa=>
      o_add_op12_stage1_EXMPLR101(6), datab=>custom_max_pix_output(6), datad
      =>i_dir2_stage1_2_EXMPLR96, cin=>nx15254z5);
   o_max_add_stage1_add9_1_ix15254z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(5), cout=>nx15254z5, dataa=>
      o_add_op12_stage1_EXMPLR101(5), datab=>custom_max_pix_output(5), datad
      =>i_dir2_stage1_2_EXMPLR96, cin=>nx15254z6);
   o_max_add_stage1_add9_1_ix15254z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(4), cout=>nx15254z6, dataa=>
      o_add_op12_stage1_EXMPLR101(4), datab=>custom_max_pix_output(4), datad
      =>i_dir2_stage1_2_EXMPLR96, cin=>nx15254z7);
   o_max_add_stage1_add9_1_ix15254z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(3), cout=>nx15254z7, dataa=>
      o_add_op12_stage1_EXMPLR101(3), datab=>custom_max_pix_output(3), datad
      =>i_dir2_stage1_2_EXMPLR96, cin=>nx15254z8);
   o_max_add_stage1_add9_1_ix15254z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(2), cout=>nx15254z8, dataa=>
      o_add_op12_stage1_EXMPLR101(2), datab=>custom_max_pix_output(2), datad
      =>i_dir2_stage1_2_EXMPLR96, cin=>nx15254z9);
   o_max_add_stage1_add9_1_ix15254z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(1), cout=>nx15254z9, dataa=>
      o_add_op12_stage1_EXMPLR101(1), datab=>custom_max_pix_output(1), datad
      =>i_dir2_stage1_2_EXMPLR96, cin=>nx15254z10);
   o_max_add_stage1_add9_1_ix15254z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>o_max_add_stage1(0), cout=>nx15254z10, dataa=>
      custom_max_pix_output(0), datab=>o_add_op12_stage1_EXMPLR101(0), datad
      =>i_dir2_stage1_2_EXMPLR96);
   o_add_op12_stage1_add8_0_ix45057z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(7), cout=>
      o_add_op12_stage1_EXMPLR101(8), dataa=>i_add_op2_stage1(7), datab=>
      i_add_op1_stage1(7), datad=>i_dir2_stage1_2_EXMPLR96, cin=>nx45057z2);
   o_add_op12_stage1_add8_0_ix45057z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(6), cout=>nx45057z2, 
      dataa=>i_add_op2_stage1(6), datab=>i_add_op1_stage1(6), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>nx45057z3);
   o_add_op12_stage1_add8_0_ix45057z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(5), cout=>nx45057z3, 
      dataa=>i_add_op2_stage1(5), datab=>i_add_op1_stage1(5), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>nx45057z4);
   o_add_op12_stage1_add8_0_ix45057z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(4), cout=>nx45057z4, 
      dataa=>i_add_op2_stage1(4), datab=>i_add_op1_stage1(4), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>nx45057z5);
   o_add_op12_stage1_add8_0_ix45057z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(3), cout=>nx45057z5, 
      dataa=>i_add_op2_stage1(3), datab=>i_add_op1_stage1(3), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>nx45057z6);
   o_add_op12_stage1_add8_0_ix45057z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(2), cout=>nx45057z6, 
      dataa=>i_add_op2_stage1(2), datab=>i_add_op1_stage1(2), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>nx45057z7);
   o_add_op12_stage1_add8_0_ix45057z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(1), cout=>nx45057z7, 
      dataa=>i_add_op2_stage1(1), datab=>i_add_op1_stage1(1), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>nx45057z8);
   o_add_op12_stage1_add8_0_ix45057z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>o_add_op12_stage1_EXMPLR101(0), cout=>nx45057z8, 
      dataa=>i_add_op1_stage1(0), datab=>i_add_op2_stage1(0), datad=>
      i_dir2_stage1_2_EXMPLR96);
   ix15254z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(9), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>o_max_add_stage1_9_EXMPLR83);
   ix15254z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx15254z2, datad=>i_dir2_stage1_2_EXMPLR96, cin=>
      nx15254z3);
   ix45057z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1(8), datad=>
      i_dir2_stage1_2_EXMPLR96, cin=>o_add_op12_stage1_EXMPLR101(8));
end main_unfold_1260 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity custom_max_10 is 
   port (
      i_pix1 : IN std_logic_vector (9 DOWNTO 0) ;
      i_pix2 : IN std_logic_vector (9 DOWNTO 0) ;
      i_dir1 : IN std_logic_vector (2 DOWNTO 0) ;
      i_dir2 : IN std_logic_vector (2 DOWNTO 0) ;
      o_max_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_max_pix : OUT std_logic_vector (9 DOWNTO 0)) ;
end custom_max_10 ;

architecture main of custom_max_10 is 
   signal nx52134z1, nx19309z1, nx52134z10, nx52134z9, nx52134z8, nx52134z7, 
      nx52134z6, nx52134z5, nx52134z4, nx52134z3, nx52134z2, nx19309z10, 
      nx19309z9, nx19309z8, nx19309z7, nx19309z6, nx19309z5, nx19309z4, 
      nx19309z3, nx19309z2, nx_custom_max_10_vcc_net: std_logic ;

begin
   ix19309z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d4d4",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19309z1, dataa=>i_pix1(9), datab=>i_pix2(9), 
      datad=>nx_custom_max_10_vcc_net, cin=>nx19309z2);
   nx_custom_max_10_vcc_net <= '1';
   ix19309z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z2, dataa=>i_pix1(8), datab=>i_pix2(8), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z3);
   ix19309z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z3, dataa=>i_pix1(7), datab=>i_pix2(7), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z4);
   ix19309z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z4, dataa=>i_pix1(6), datab=>i_pix2(6), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z5);
   ix19309z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z5, dataa=>i_pix1(5), datab=>i_pix2(5), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z6);
   ix19309z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z6, dataa=>i_pix1(4), datab=>i_pix2(4), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z7);
   ix19309z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z7, dataa=>i_pix1(3), datab=>i_pix2(3), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z8);
   ix19309z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z8, dataa=>i_pix1(2), datab=>i_pix2(2), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z9);
   ix19309z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx19309z9, dataa=>i_pix1(1), datab=>i_pix2(1), datad
      =>nx_custom_max_10_vcc_net, cin=>nx19309z10);
   ix19309z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx19309z10, dataa=>i_pix2(0), datab=>i_pix1(0), 
      datad=>nx_custom_max_10_vcc_net);
   ix52134z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d4d4",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52134z1, dataa=>i_pix2(9), datab=>i_pix1(9), 
      datad=>nx_custom_max_10_vcc_net, cin=>nx52134z2);
   ix52134z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z2, dataa=>i_pix2(8), datab=>i_pix1(8), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z3);
   ix52134z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z3, dataa=>i_pix2(7), datab=>i_pix1(7), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z4);
   ix52134z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z4, dataa=>i_pix2(6), datab=>i_pix1(6), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z5);
   ix52134z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z5, dataa=>i_pix2(5), datab=>i_pix1(5), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z6);
   ix52134z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z6, dataa=>i_pix2(4), datab=>i_pix1(4), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z7);
   ix52134z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z7, dataa=>i_pix2(3), datab=>i_pix1(3), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z8);
   ix52134z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z8, dataa=>i_pix2(2), datab=>i_pix1(2), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z9);
   ix52134z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx52134z9, dataa=>i_pix2(1), datab=>i_pix1(1), datad
      =>nx_custom_max_10_vcc_net, cin=>nx52134z10);
   ix52134z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"0022") 
       port map ( cout=>nx52134z10, dataa=>i_pix1(0), datab=>i_pix2(0), 
      datad=>nx_custom_max_10_vcc_net);
   ix61107z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(0), dataa=>i_pix1(0), datab=>i_pix2(0), 
      datac=>nx52134z1);
   ix60110z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(1), dataa=>i_pix1(1), datab=>i_pix2(1), 
      datac=>nx52134z1);
   ix59113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(2), dataa=>i_pix1(2), datab=>i_pix2(2), 
      datac=>nx52134z1);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(3), dataa=>i_pix1(3), datab=>i_pix2(3), 
      datac=>nx52134z1);
   ix57119z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(4), dataa=>i_pix1(4), datab=>i_pix2(4), 
      datac=>nx52134z1);
   ix56122z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(5), dataa=>i_pix1(5), datab=>i_pix2(5), 
      datac=>nx52134z1);
   ix55125z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(6), dataa=>i_pix1(6), datab=>i_pix2(6), 
      datac=>nx52134z1);
   ix54128z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(7), dataa=>i_pix1(7), datab=>i_pix2(7), 
      datac=>nx52134z1);
   ix53131z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(8), dataa=>i_pix1(8), datab=>i_pix2(8), 
      datac=>nx52134z1);
   ix52134z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>o_max_pix(9), dataa=>i_pix1(9), datab=>i_pix2(9), 
      datac=>nx52134z1);
   ix17315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>o_max_dir(0), dataa=>i_dir1(0), datab=>i_dir2(0), 
      datac=>nx19309z1);
   ix18312z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>o_max_dir(1), dataa=>i_dir1(1), datab=>i_dir2(1), 
      datac=>nx19309z1);
   ix19309z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>o_max_dir(2), dataa=>i_dir1(2), datab=>i_dir2(2), 
      datac=>nx19309z1);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity stage2_hardware is 
   port (
      i_dir1_stage2 : IN std_logic_vector (2 DOWNTO 0) ;
      i_dir2_stage2 : IN std_logic_vector (2 DOWNTO 0) ;
      i_pix1_stage2 : IN std_logic_vector (9 DOWNTO 0) ;
      i_pix2_stage2 : IN std_logic_vector (9 DOWNTO 0) ;
      i_add_op1_stage2 : IN std_logic_vector (12 DOWNTO 0) ;
      i_add_op2_stage2 : IN std_logic_vector (12 DOWNTO 0) ;
      o_add_op12_stage2 : OUT std_logic_vector (12 DOWNTO 0) ;
      o_max_stage2 : OUT std_logic_vector (9 DOWNTO 0) ;
      o_max_dir_stage2 : OUT std_logic_vector (2 DOWNTO 0)) ;
end stage2_hardware ;

architecture main of stage2_hardware is 
   component custom_max_10
      port (
         i_pix1 : IN std_logic_vector (9 DOWNTO 0) ;
         i_pix2 : IN std_logic_vector (9 DOWNTO 0) ;
         i_dir1 : IN std_logic_vector (2 DOWNTO 0) ;
         i_dir2 : IN std_logic_vector (2 DOWNTO 0) ;
         o_max_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         o_max_pix : OUT std_logic_vector (9 DOWNTO 0)) ;
   end component ;
   signal nx22301z12, nx22301z11, nx22301z10, nx22301z9, nx22301z8, 
      nx22301z7, nx22301z6, nx22301z5, nx22301z4, nx22301z3, nx22301z2, 
      nx22301z1, nx_stage2_hardware_vcc_net: std_logic ;

begin
   u_max2 : custom_max_10 port map ( i_pix1(9)=>i_pix1_stage2(9), i_pix1(8)
      =>i_pix1_stage2(8), i_pix1(7)=>i_pix1_stage2(7), i_pix1(6)=>
      i_pix1_stage2(6), i_pix1(5)=>i_pix1_stage2(5), i_pix1(4)=>
      i_pix1_stage2(4), i_pix1(3)=>i_pix1_stage2(3), i_pix1(2)=>
      i_pix1_stage2(2), i_pix1(1)=>i_pix1_stage2(1), i_pix1(0)=>
      i_pix1_stage2(0), i_pix2(9)=>i_pix2_stage2(9), i_pix2(8)=>
      i_pix2_stage2(8), i_pix2(7)=>i_pix2_stage2(7), i_pix2(6)=>
      i_pix2_stage2(6), i_pix2(5)=>i_pix2_stage2(5), i_pix2(4)=>
      i_pix2_stage2(4), i_pix2(3)=>i_pix2_stage2(3), i_pix2(2)=>
      i_pix2_stage2(2), i_pix2(1)=>i_pix2_stage2(1), i_pix2(0)=>
      i_pix2_stage2(0), i_dir1(2)=>i_dir1_stage2(2), i_dir1(1)=>
      i_dir1_stage2(1), i_dir1(0)=>i_dir1_stage2(0), i_dir2(2)=>
      i_dir2_stage2(2), i_dir2(1)=>i_dir2_stage2(1), i_dir2(0)=>
      i_dir2_stage2(0), o_max_dir(2)=>o_max_dir_stage2(2), o_max_dir(1)=>
      o_max_dir_stage2(1), o_max_dir(0)=>o_max_dir_stage2(0), o_max_pix(9)=>
      o_max_stage2(9), o_max_pix(8)=>o_max_stage2(8), o_max_pix(7)=>
      o_max_stage2(7), o_max_pix(6)=>o_max_stage2(6), o_max_pix(5)=>
      o_max_stage2(5), o_max_pix(4)=>o_max_stage2(4), o_max_pix(3)=>
      o_max_stage2(3), o_max_pix(2)=>o_max_stage2(2), o_max_pix(1)=>
      o_max_stage2(1), o_max_pix(0)=>o_max_stage2(0));
   o_add_op12_stage2_add13_0_ix22301z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(12), dataa=>
      i_add_op2_stage2(12), datab=>i_add_op1_stage2(12), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z1);
   nx_stage2_hardware_vcc_net <= '1';
   o_add_op12_stage2_add13_0_ix22301z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(11), cout=>nx22301z1, dataa=>
      i_add_op2_stage2(11), datab=>i_add_op1_stage2(11), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z2);
   o_add_op12_stage2_add13_0_ix22301z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(10), cout=>nx22301z2, dataa=>
      i_add_op2_stage2(10), datab=>i_add_op1_stage2(10), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z3);
   o_add_op12_stage2_add13_0_ix22301z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(9), cout=>nx22301z3, dataa=>
      i_add_op2_stage2(9), datab=>i_add_op1_stage2(9), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z4);
   o_add_op12_stage2_add13_0_ix22301z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(8), cout=>nx22301z4, dataa=>
      i_add_op2_stage2(8), datab=>i_add_op1_stage2(8), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z5);
   o_add_op12_stage2_add13_0_ix22301z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(7), cout=>nx22301z5, dataa=>
      i_add_op2_stage2(7), datab=>i_add_op1_stage2(7), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z6);
   o_add_op12_stage2_add13_0_ix22301z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(6), cout=>nx22301z6, dataa=>
      i_add_op2_stage2(6), datab=>i_add_op1_stage2(6), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z7);
   o_add_op12_stage2_add13_0_ix22301z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(5), cout=>nx22301z7, dataa=>
      i_add_op2_stage2(5), datab=>i_add_op1_stage2(5), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z8);
   o_add_op12_stage2_add13_0_ix22301z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(4), cout=>nx22301z8, dataa=>
      i_add_op2_stage2(4), datab=>i_add_op1_stage2(4), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z9);
   o_add_op12_stage2_add13_0_ix22301z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(3), cout=>nx22301z9, dataa=>
      i_add_op2_stage2(3), datab=>i_add_op1_stage2(3), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z10);
   o_add_op12_stage2_add13_0_ix22301z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(2), cout=>nx22301z10, dataa=>
      i_add_op2_stage2(2), datab=>i_add_op1_stage2(2), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z11);
   o_add_op12_stage2_add13_0_ix22301z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage2(1), cout=>nx22301z11, dataa=>
      i_add_op2_stage2(1), datab=>i_add_op1_stage2(1), datad=>
      nx_stage2_hardware_vcc_net, cin=>nx22301z12);
   o_add_op12_stage2_add13_0_ix22301z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>o_add_op12_stage2(0), cout=>nx22301z12, dataa=>
      i_add_op1_stage2(0), datab=>i_add_op2_stage2(0), datad=>
      nx_stage2_hardware_vcc_net);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_0 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal ena1_EXMPLR263: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Cyclone II",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR263, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR263 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_1 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal ena1_EXMPLR293: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Cyclone II",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR293, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR293 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component stage1_hardware
      port (
         i_dir1_stage1 : IN std_logic_vector (2 DOWNTO 0) ;
         i_dir2_stage1 : IN std_logic_vector (2 DOWNTO 0) ;
         i_pix1_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
         i_pix2_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
         i_add_op1_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
         i_add_op2_stage1 : IN std_logic_vector (7 DOWNTO 0) ;
         o_add_op12_stage1 : OUT std_logic_vector (8 DOWNTO 0) ;
         o_max_add_stage1 : OUT std_logic_vector (9 DOWNTO 0) ;
         o_max_dir_stage1 : OUT std_logic_vector (2 DOWNTO 0)) ;
   
   end component ;
   component stage2_hardware
      port (
         i_dir1_stage2 : IN std_logic_vector (2 DOWNTO 0) ;
         i_dir2_stage2 : IN std_logic_vector (2 DOWNTO 0) ;
         i_pix1_stage2 : IN std_logic_vector (9 DOWNTO 0) ;
         i_pix2_stage2 : IN std_logic_vector (9 DOWNTO 0) ;
         i_add_op1_stage2 : IN std_logic_vector (12 DOWNTO 0) ;
         i_add_op2_stage2 : IN std_logic_vector (12 DOWNTO 0) ;
         o_add_op12_stage2 : OUT std_logic_vector (12 DOWNTO 0) ;
         o_max_stage2 : OUT std_logic_vector (9 DOWNTO 0) ;
         o_max_dir_stage2 : OUT std_logic_vector (2 DOWNTO 0)) ;
   
   end component ;
   component ram_dq_8_0
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_dq_8_1
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   signal o_valid_EXMPLR318: std_logic ;
   
   signal o_edge_EXMPLR319: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_mode_1_EXMPLR320: std_logic ;
   
   signal o_row_EXMPLR337: std_logic_vector (7 DOWNTO 0) ;
   
   signal column: std_logic_vector (7 DOWNTO 0) ;
   
   signal valid: std_logic_vector (6 DOWNTO 0) ;
   
   signal column_valid1: std_logic_vector (7 DOWNTO 0) ;
   
   signal column_valid2: std_logic_vector (7 DOWNTO 0) ;
   
   signal row_valid1: std_logic_vector (7 DOWNTO 0) ;
   
   signal row_valid2: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal c: std_logic_vector (7 DOWNTO 0) ;
   
   signal d: std_logic_vector (7 DOWNTO 0) ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal h: std_logic_vector (7 DOWNTO 0) ;
   
   signal i: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal o_add2: std_logic_vector (9 DOWNTO 0) ;
   
   signal o_dir1_2, o_dir1_0: std_logic ;
   
   signal r1: std_logic_vector (2 DOWNTO 0) ;
   
   signal r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal r3: std_logic_vector (9 DOWNTO 0) ;
   
   signal temp_max: std_logic_vector (9 DOWNTO 0) ;
   
   signal temp_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal temp_add: std_logic_vector (8 DOWNTO 0) ;
   
   signal o_max1: std_logic_vector (9 DOWNTO 0) ;
   
   signal o_dir2: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_add3: std_logic_vector (12 DOWNTO 0) ;
   
   signal r4: std_logic_vector (9 DOWNTO 0) ;
   
   signal r5: std_logic_vector (2 DOWNTO 0) ;
   
   signal r6: std_logic_vector (12 DOWNTO 0) ;
   
   signal sub_out_12, sub_out_11, sub_out_10, sub_out_9, sub_out_8, 
      sub_out_7: std_logic ;
   
   signal r8: std_logic_vector (2 DOWNTO 0) ;
   
   signal nx61908z3: std_logic ;
   
   signal mem_out_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_out_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal inc_d_0, nx54262z3, inc_d_1, nx54262z2, inc_d_2, nx54262z1, 
      inc_d_3, nx58250z4, inc_d_4, nx58250z3, inc_d_5, nx58250z2, inc_d_6, 
      nx58250z1, inc_d_7, inc_d_0_dup_1231, nx12707z1, inc_d_1_dup_1233, 
      nx8437z2, inc_d_2_dup_1235, nx8437z1, inc_d_3_dup_1237, nx50725z4, 
      inc_d_4_dup_1239, nx50725z3, inc_d_5_dup_1241, nx50725z2, 
      inc_d_6_dup_1243, nx50725z1, inc_d_7_dup_1245, nx61908z14, nx61908z13, 
      nx61908z12, nx61908z11, nx61908z10, nx61908z9, nx61908z8, nx61908z7, 
      nx61908z6, nx61908z5, nx61908z4: std_logic ;
   
   signal mem_wren: std_logic_vector (0 TO 1) ;
   
   signal i_max1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_max2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_add1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_add2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_max3: std_logic_vector (9 DOWNTO 0) ;
   
   signal i_dir3: std_logic_vector (2 DOWNTO 0) ;
   
   signal i_add3: std_logic_vector (12 DOWNTO 0) ;
   
   signal i_add4: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_5_0_EXMPLR333, debug_num_5_1_EXMPLR334, nx28679z3, 
      nx28679z1, nx35074z1, not_valid_5, nx34903z2, nx61908z2, nx23902z1, 
      nx23902z2, nx28679z2, nx25376z1, nx24856z1, nx23859z1, nx22862z1, 
      nx61908z1, nx34903z1, nx28679z18, nx28679z16, nx28679z14, nx28679z12, 
      nx28679z10, nx28679z8, nx28679z6, nx28679z4, nx28679z34, nx28679z32, 
      nx28679z30, nx28679z28, nx28679z26, nx28679z24, nx28679z22, nx28679z20, 
      nx28679z50, nx28679z48, nx28679z46, nx28679z44, nx28679z42, nx28679z40, 
      nx28679z38, nx28679z36, nx28679z66, nx28679z64, nx28679z62, nx28679z60, 
      nx28679z58, nx28679z56, nx28679z54, nx28679z52, nx20492z1, nx28679z5, 
      nx28679z7, nx28679z9, nx28679z11, nx28679z13, nx28679z15, nx28679z17, 
      nx28679z19, nx28679z21, nx28679z23, nx28679z25, nx28679z27, nx28679z29, 
      nx28679z31, nx28679z33, nx28679z35, nx28679z37, nx28679z39, nx28679z41, 
      nx28679z43, nx28679z45, nx28679z47, nx28679z49, nx28679z51, nx28679z53, 
      nx28679z55, nx28679z57, nx28679z59, nx28679z61, nx28679z63, nx28679z65, 
      nx28679z67, nx34903z3, nx34903z4, nx23902z4, nx23902z5, nx23902z3, 
      nx25376z2, nx25376z4, nx25376z6, nx25376z7, nx26373z4, nx25376z5, 
      nx26373z5, nx25376z3, nx25376z8, nx61908z16, nx61908z15, nx26373z2, 
      nx26373z3, nx61908z17, nx25376z9, nx26373z1: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_valid <= o_valid_EXMPLR318 ;
   o_edge <= o_edge_EXMPLR319(2) ;
   o_mode(1) <= o_mode_1_EXMPLR320 ;
   o_row(7) <= o_row_EXMPLR337(7) ;
   o_row(6) <= o_row_EXMPLR337(6) ;
   o_row(5) <= o_row_EXMPLR337(5) ;
   o_row(4) <= o_row_EXMPLR337(4) ;
   o_row(3) <= o_row_EXMPLR337(3) ;
   o_row(2) <= o_row_EXMPLR337(2) ;
   o_row(1) <= o_row_EXMPLR337(1) ;
   o_row(0) <= o_row_EXMPLR337(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR333 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR333 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR333 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR333 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR333 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR333 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR333 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR333 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR333 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR334 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR334 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR334 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR333 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR333 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR334 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR333 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR333 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR333 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR334 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR334 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR334 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR334 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR334 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR333 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR334 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR334 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR333 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR333 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR334 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR334 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR334 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR333 ;
   stage1 : stage1_hardware port map ( i_dir1_stage1(2)=>
      debug_num_5_0_EXMPLR333, i_dir1_stage1(1)=>debug_num_5_0_EXMPLR333, 
      i_dir1_stage1(0)=>nx28679z1, i_dir2_stage1(2)=>debug_num_5_1_EXMPLR334, 
      i_dir2_stage1(1)=>debug_num_5_0_EXMPLR333, i_dir2_stage1(0)=>nx28679z2, 
      i_pix1_stage1(7)=>i_max1(7), i_pix1_stage1(6)=>i_max1(6), 
      i_pix1_stage1(5)=>i_max1(5), i_pix1_stage1(4)=>i_max1(4), 
      i_pix1_stage1(3)=>i_max1(3), i_pix1_stage1(2)=>i_max1(2), 
      i_pix1_stage1(1)=>i_max1(1), i_pix1_stage1(0)=>i_max1(0), 
      i_pix2_stage1(7)=>i_max2(7), i_pix2_stage1(6)=>i_max2(6), 
      i_pix2_stage1(5)=>i_max2(5), i_pix2_stage1(4)=>i_max2(4), 
      i_pix2_stage1(3)=>i_max2(3), i_pix2_stage1(2)=>i_max2(2), 
      i_pix2_stage1(1)=>i_max2(1), i_pix2_stage1(0)=>i_max2(0), 
      i_add_op1_stage1(7)=>i_add1(7), i_add_op1_stage1(6)=>i_add1(6), 
      i_add_op1_stage1(5)=>i_add1(5), i_add_op1_stage1(4)=>i_add1(4), 
      i_add_op1_stage1(3)=>i_add1(3), i_add_op1_stage1(2)=>i_add1(2), 
      i_add_op1_stage1(1)=>i_add1(1), i_add_op1_stage1(0)=>i_add1(0), 
      i_add_op2_stage1(7)=>i_add2(7), i_add_op2_stage1(6)=>i_add2(6), 
      i_add_op2_stage1(5)=>i_add2(5), i_add_op2_stage1(4)=>i_add2(4), 
      i_add_op2_stage1(3)=>i_add2(3), i_add_op2_stage1(2)=>i_add2(2), 
      i_add_op2_stage1(1)=>i_add2(1), i_add_op2_stage1(0)=>i_add2(0), 
      o_add_op12_stage1(8)=>o_add1(8), o_add_op12_stage1(7)=>o_add1(7), 
      o_add_op12_stage1(6)=>o_add1(6), o_add_op12_stage1(5)=>o_add1(5), 
      o_add_op12_stage1(4)=>o_add1(4), o_add_op12_stage1(3)=>o_add1(3), 
      o_add_op12_stage1(2)=>o_add1(2), o_add_op12_stage1(1)=>o_add1(1), 
      o_add_op12_stage1(0)=>o_add1(0), o_max_add_stage1(9)=>o_add2(9), 
      o_max_add_stage1(8)=>o_add2(8), o_max_add_stage1(7)=>o_add2(7), 
      o_max_add_stage1(6)=>o_add2(6), o_max_add_stage1(5)=>o_add2(5), 
      o_max_add_stage1(4)=>o_add2(4), o_max_add_stage1(3)=>o_add2(3), 
      o_max_add_stage1(2)=>o_add2(2), o_max_add_stage1(1)=>o_add2(1), 
      o_max_add_stage1(0)=>o_add2(0), o_max_dir_stage1(2)=>o_dir1_2, 
      o_max_dir_stage1(1)=>DANGLING(0,0), o_max_dir_stage1(0)=>o_dir1_0);
   stage2 : stage2_hardware port map ( i_dir1_stage2(2)=>i_dir3(2), 
      i_dir1_stage2(1)=>i_dir3(1), i_dir1_stage2(0)=>i_dir3(0), 
      i_dir2_stage2(2)=>r1(2), i_dir2_stage2(1)=>r1(1), i_dir2_stage2(0)=>
      r1(0), i_pix1_stage2(9)=>i_max3(9), i_pix1_stage2(8)=>i_max3(8), 
      i_pix1_stage2(7)=>i_max3(7), i_pix1_stage2(6)=>i_max3(6), 
      i_pix1_stage2(5)=>i_max3(5), i_pix1_stage2(4)=>i_max3(4), 
      i_pix1_stage2(3)=>i_max3(3), i_pix1_stage2(2)=>i_max3(2), 
      i_pix1_stage2(1)=>i_max3(1), i_pix1_stage2(0)=>i_max3(0), 
      i_pix2_stage2(9)=>r3(9), i_pix2_stage2(8)=>r3(8), i_pix2_stage2(7)=>
      r3(7), i_pix2_stage2(6)=>r3(6), i_pix2_stage2(5)=>r3(5), 
      i_pix2_stage2(4)=>r3(4), i_pix2_stage2(3)=>r3(3), i_pix2_stage2(2)=>
      r3(2), i_pix2_stage2(1)=>r3(1), i_pix2_stage2(0)=>r3(0), 
      i_add_op1_stage2(12)=>i_add3(12), i_add_op1_stage2(11)=>i_add3(11), 
      i_add_op1_stage2(10)=>i_add3(10), i_add_op1_stage2(9)=>i_add3(9), 
      i_add_op1_stage2(8)=>i_add3(8), i_add_op1_stage2(7)=>i_add3(7), 
      i_add_op1_stage2(6)=>i_add3(6), i_add_op1_stage2(5)=>i_add3(5), 
      i_add_op1_stage2(4)=>i_add3(4), i_add_op1_stage2(3)=>i_add3(3), 
      i_add_op1_stage2(2)=>i_add3(2), i_add_op1_stage2(1)=>i_add3(1), 
      i_add_op1_stage2(0)=>i_add3(0), i_add_op2_stage2(12)=>i_add4(12), 
      i_add_op2_stage2(11)=>i_add4(11), i_add_op2_stage2(10)=>i_add4(10), 
      i_add_op2_stage2(9)=>i_add4(9), i_add_op2_stage2(8)=>i_add4(8), 
      i_add_op2_stage2(7)=>i_add4(7), i_add_op2_stage2(6)=>i_add4(6), 
      i_add_op2_stage2(5)=>i_add4(5), i_add_op2_stage2(4)=>i_add4(4), 
      i_add_op2_stage2(3)=>i_add4(3), i_add_op2_stage2(2)=>i_add4(2), 
      i_add_op2_stage2(1)=>i_add4(1), i_add_op2_stage2(0)=>i_add4(0), 
      o_add_op12_stage2(12)=>o_add3(12), o_add_op12_stage2(11)=>o_add3(11), 
      o_add_op12_stage2(10)=>o_add3(10), o_add_op12_stage2(9)=>o_add3(9), 
      o_add_op12_stage2(8)=>o_add3(8), o_add_op12_stage2(7)=>o_add3(7), 
      o_add_op12_stage2(6)=>o_add3(6), o_add_op12_stage2(5)=>o_add3(5), 
      o_add_op12_stage2(4)=>o_add3(4), o_add_op12_stage2(3)=>o_add3(3), 
      o_add_op12_stage2(2)=>o_add3(2), o_add_op12_stage2(1)=>o_add3(1), 
      o_add_op12_stage2(0)=>o_add3(0), o_max_stage2(9)=>o_max1(9), 
      o_max_stage2(8)=>o_max1(8), o_max_stage2(7)=>o_max1(7), 
      o_max_stage2(6)=>o_max1(6), o_max_stage2(5)=>o_max1(5), 
      o_max_stage2(4)=>o_max1(4), o_max_stage2(3)=>o_max1(3), 
      o_max_stage2(2)=>o_max1(2), o_max_stage2(1)=>o_max1(1), 
      o_max_stage2(0)=>o_max1(0), o_max_dir_stage2(2)=>o_dir2(2), 
      o_max_dir_stage2(1)=>o_dir2(1), o_max_dir_stage2(0)=>o_dir2(0));
   mem : ram_dq_8_0 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>mem_out_0(7), 
      rd_data1(6)=>mem_out_0(6), rd_data1(5)=>mem_out_0(5), rd_data1(4)=>
      mem_out_0(4), rd_data1(3)=>mem_out_0(3), rd_data1(2)=>mem_out_0(2), 
      rd_data1(1)=>mem_out_0(1), rd_data1(0)=>mem_out_0(0), addr1(7)=>
      column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>
      DANGLING(0,1), wr_ena1=>mem_wren(0), rd_ena1=>DANGLING(0,2), ena1=>
      DANGLING(0,3), rst1=>DANGLING(0,4), regce1=>DANGLING(0,5), regrst1=>
      DANGLING(0,6));
   mem_0 : ram_dq_8_1 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>mem_out_1(7), 
      rd_data1(6)=>mem_out_1(6), rd_data1(5)=>mem_out_1(5), rd_data1(4)=>
      mem_out_1(4), rd_data1(3)=>mem_out_1(3), rd_data1(2)=>mem_out_1(2), 
      rd_data1(1)=>mem_out_1(1), rd_data1(0)=>mem_out_1(0), addr1(7)=>
      column(7), addr1(6)=>column(6), addr1(5)=>column(5), addr1(4)=>
      column(4), addr1(3)=>column(3), addr1(2)=>column(2), addr1(1)=>
      column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>
      DANGLING(0,7), wr_ena1=>mem_wren(1), rd_ena1=>DANGLING(0,8), ena1=>
      DANGLING(0,9), rst1=>DANGLING(0,10), regce1=>DANGLING(0,11), regrst1=>
      DANGLING(0,12));
   debug_num_5_0_EXMPLR333 <= '0';
   debug_num_5_1_EXMPLR334 <= '1';
   not_valid_5 <= NOT valid(5);
   o_mode(0) <= NOT nx25376z9;
   sub_out_sub13_0_ix61908z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_12, cout=>nx61908z3, dataa=>r6(12), datab
      =>r4(9), datad=>debug_num_5_1_EXMPLR334, cin=>nx61908z4);
   sub_out_sub13_0_ix61908z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_11, cout=>nx61908z4, dataa=>r6(11), datab
      =>r4(8), datad=>debug_num_5_1_EXMPLR334, cin=>nx61908z5);
   sub_out_sub13_0_ix61908z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_10, cout=>nx61908z5, dataa=>r6(10), datab
      =>r4(7), datad=>debug_num_5_1_EXMPLR334, cin=>nx61908z6);
   sub_out_sub13_0_ix61908z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_9, cout=>nx61908z6, dataa=>r6(9), datab=>
      r4(6), datad=>debug_num_5_1_EXMPLR334, cin=>nx61908z7);
   sub_out_sub13_0_ix61908z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_8, cout=>nx61908z7, dataa=>r6(8), datab=>
      r4(5), datad=>debug_num_5_1_EXMPLR334, cin=>nx61908z8);
   sub_out_sub13_0_ix61908z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_7, cout=>nx61908z8, dataa=>r6(7), datab=>
      r4(4), datad=>debug_num_5_1_EXMPLR334, cin=>nx61908z9);
   sub_out_sub13_0_ix61908z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z9, dataa=>r6(6), datab=>r4(3), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx61908z10);
   sub_out_sub13_0_ix61908z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z10, dataa=>r6(5), datab=>r4(2), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx61908z11);
   sub_out_sub13_0_ix61908z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z11, dataa=>r6(4), datab=>r4(1), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx61908z12);
   sub_out_sub13_0_ix61908z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z12, dataa=>r6(3), datab=>r4(0), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx61908z13);
   sub_out_sub13_0_ix61908z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z13, dataa=>r6(2), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx61908z14);
   sub_out_sub13_0_ix61908z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx61908z14, dataa=>r6(1), datab=>r6(0), datad=>
      debug_num_5_1_EXMPLR334);
   reg_valid_6 : cycloneii_lcell_ff port map ( regout=>valid(6), datain=>
      valid(5), clk=>i_clock, sclr=>i_reset);
   reg_valid_5 : cycloneii_lcell_ff port map ( regout=>valid(5), datain=>
      valid(4), clk=>i_clock, sclr=>i_reset);
   reg_valid_4 : cycloneii_lcell_ff port map ( regout=>valid(4), datain=>
      valid(3), clk=>i_clock, sclr=>i_reset);
   reg_valid_3 : cycloneii_lcell_ff port map ( regout=>valid(3), datain=>
      valid(2), clk=>i_clock, sclr=>i_reset);
   reg_valid_2 : cycloneii_lcell_ff port map ( regout=>valid(2), datain=>
      valid(1), clk=>i_clock, sclr=>i_reset);
   reg_valid_1 : cycloneii_lcell_ff port map ( regout=>valid(1), datain=>
      valid(0), clk=>i_clock, sclr=>i_reset);
   reg_valid_0 : cycloneii_lcell_ff port map ( regout=>valid(0), datain=>
      i_valid, clk=>i_clock, sclr=>i_reset);
   reg_temp_max_9 : cycloneii_lcell_ff port map ( regout=>temp_max(9), 
      datain=>r3(9), clk=>i_clock, ena=>valid(1));
   reg_temp_max_8 : cycloneii_lcell_ff port map ( regout=>temp_max(8), 
      datain=>r3(8), clk=>i_clock, ena=>valid(1));
   reg_temp_max_7 : cycloneii_lcell_ff port map ( regout=>temp_max(7), 
      datain=>r3(7), clk=>i_clock, ena=>valid(1));
   reg_temp_max_6 : cycloneii_lcell_ff port map ( regout=>temp_max(6), 
      datain=>r3(6), clk=>i_clock, ena=>valid(1));
   reg_temp_max_5 : cycloneii_lcell_ff port map ( regout=>temp_max(5), 
      datain=>r3(5), clk=>i_clock, ena=>valid(1));
   reg_temp_max_4 : cycloneii_lcell_ff port map ( regout=>temp_max(4), 
      datain=>r3(4), clk=>i_clock, ena=>valid(1));
   reg_temp_max_3 : cycloneii_lcell_ff port map ( regout=>temp_max(3), 
      datain=>r3(3), clk=>i_clock, ena=>valid(1));
   reg_temp_max_2 : cycloneii_lcell_ff port map ( regout=>temp_max(2), 
      datain=>r3(2), clk=>i_clock, ena=>valid(1));
   reg_temp_max_1 : cycloneii_lcell_ff port map ( regout=>temp_max(1), 
      datain=>r3(1), clk=>i_clock, ena=>valid(1));
   reg_temp_max_0 : cycloneii_lcell_ff port map ( regout=>temp_max(0), 
      datain=>r3(0), clk=>i_clock, ena=>valid(1));
   reg_temp_dir_2 : cycloneii_lcell_ff port map ( regout=>temp_dir(2), 
      datain=>r1(2), clk=>i_clock, ena=>valid(1));
   reg_temp_dir_1 : cycloneii_lcell_ff port map ( regout=>temp_dir(1), 
      datain=>r1(1), clk=>i_clock, ena=>valid(1));
   reg_temp_dir_0 : cycloneii_lcell_ff port map ( regout=>temp_dir(0), 
      datain=>r1(0), clk=>i_clock, ena=>valid(1));
   reg_temp_add_8 : cycloneii_lcell_ff port map ( regout=>temp_add(8), 
      datain=>r2(8), clk=>i_clock, ena=>valid(1));
   reg_temp_add_7 : cycloneii_lcell_ff port map ( regout=>temp_add(7), 
      datain=>r2(7), clk=>i_clock, ena=>valid(1));
   reg_temp_add_6 : cycloneii_lcell_ff port map ( regout=>temp_add(6), 
      datain=>r2(6), clk=>i_clock, ena=>valid(1));
   reg_temp_add_5 : cycloneii_lcell_ff port map ( regout=>temp_add(5), 
      datain=>r2(5), clk=>i_clock, ena=>valid(1));
   reg_temp_add_4 : cycloneii_lcell_ff port map ( regout=>temp_add(4), 
      datain=>r2(4), clk=>i_clock, ena=>valid(1));
   reg_temp_add_3 : cycloneii_lcell_ff port map ( regout=>temp_add(3), 
      datain=>r2(3), clk=>i_clock, ena=>valid(1));
   reg_temp_add_2 : cycloneii_lcell_ff port map ( regout=>temp_add(2), 
      datain=>r2(2), clk=>i_clock, ena=>valid(1));
   reg_temp_add_1 : cycloneii_lcell_ff port map ( regout=>temp_add(1), 
      datain=>r2(1), clk=>i_clock, ena=>valid(1));
   reg_temp_add_0 : cycloneii_lcell_ff port map ( regout=>temp_add(0), 
      datain=>r2(0), clk=>i_clock, ena=>valid(1));
   reg_row_valid2_7 : cycloneii_lcell_ff port map ( regout=>row_valid2(7), 
      datain=>row_valid1(7), clk=>i_clock, ena=>valid(4));
   reg_row_valid2_6 : cycloneii_lcell_ff port map ( regout=>row_valid2(6), 
      datain=>row_valid1(6), clk=>i_clock, ena=>valid(4));
   reg_row_valid2_5 : cycloneii_lcell_ff port map ( regout=>row_valid2(5), 
      datain=>row_valid1(5), clk=>i_clock, ena=>valid(4));
   reg_row_valid2_4 : cycloneii_lcell_ff port map ( regout=>row_valid2(4), 
      datain=>row_valid1(4), clk=>i_clock, ena=>valid(4));
   reg_row_valid2_3 : cycloneii_lcell_ff port map ( regout=>row_valid2(3), 
      datain=>row_valid1(3), clk=>i_clock, ena=>valid(4));
   reg_row_valid2_2 : cycloneii_lcell_ff port map ( regout=>row_valid2(2), 
      datain=>row_valid1(2), clk=>i_clock, ena=>valid(4));
   reg_row_valid2_1 : cycloneii_lcell_ff port map ( regout=>row_valid2(1), 
      datain=>row_valid1(1), clk=>i_clock, ena=>valid(4));
   reg_row_valid2_0 : cycloneii_lcell_ff port map ( regout=>row_valid2(0), 
      datain=>row_valid1(0), clk=>i_clock, ena=>valid(4));
   reg_row_valid1_7 : cycloneii_lcell_ff port map ( regout=>row_valid1(7), 
      datain=>o_row_EXMPLR337(7), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_6 : cycloneii_lcell_ff port map ( regout=>row_valid1(6), 
      datain=>o_row_EXMPLR337(6), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_5 : cycloneii_lcell_ff port map ( regout=>row_valid1(5), 
      datain=>o_row_EXMPLR337(5), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_4 : cycloneii_lcell_ff port map ( regout=>row_valid1(4), 
      datain=>o_row_EXMPLR337(4), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_3 : cycloneii_lcell_ff port map ( regout=>row_valid1(3), 
      datain=>o_row_EXMPLR337(3), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_2 : cycloneii_lcell_ff port map ( regout=>row_valid1(2), 
      datain=>o_row_EXMPLR337(2), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_1 : cycloneii_lcell_ff port map ( regout=>row_valid1(1), 
      datain=>o_row_EXMPLR337(1), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_0 : cycloneii_lcell_ff port map ( regout=>row_valid1(0), 
      datain=>o_row_EXMPLR337(0), clk=>i_clock, ena=>valid(0));
   reg_r9 : cycloneii_lcell_ff port map ( regout=>o_edge_EXMPLR319(2), 
      datain=>nx61908z1, clk=>i_clock);
   reg_r8_2 : cycloneii_lcell_ff port map ( regout=>r8(2), datain=>nx22862z1, 
      clk=>i_clock);
   reg_r8_1 : cycloneii_lcell_ff port map ( regout=>r8(1), datain=>nx23859z1, 
      clk=>i_clock);
   reg_r8_0 : cycloneii_lcell_ff port map ( regout=>r8(0), datain=>nx24856z1, 
      clk=>i_clock);
   reg_r6_9 : cycloneii_lcell_ff port map ( regout=>r6(9), datain=>o_add3(9), 
      clk=>i_clock);
   reg_r6_8 : cycloneii_lcell_ff port map ( regout=>r6(8), datain=>o_add3(8), 
      clk=>i_clock);
   reg_r6_7 : cycloneii_lcell_ff port map ( regout=>r6(7), datain=>o_add3(7), 
      clk=>i_clock);
   reg_r6_6 : cycloneii_lcell_ff port map ( regout=>r6(6), datain=>o_add3(6), 
      clk=>i_clock);
   reg_r6_5 : cycloneii_lcell_ff port map ( regout=>r6(5), datain=>o_add3(5), 
      clk=>i_clock);
   reg_r6_4 : cycloneii_lcell_ff port map ( regout=>r6(4), datain=>o_add3(4), 
      clk=>i_clock);
   reg_r6_3 : cycloneii_lcell_ff port map ( regout=>r6(3), datain=>o_add3(3), 
      clk=>i_clock);
   reg_r6_2 : cycloneii_lcell_ff port map ( regout=>r6(2), datain=>o_add3(2), 
      clk=>i_clock);
   reg_r6_12 : cycloneii_lcell_ff port map ( regout=>r6(12), datain=>
      o_add3(12), clk=>i_clock);
   reg_r6_11 : cycloneii_lcell_ff port map ( regout=>r6(11), datain=>
      o_add3(11), clk=>i_clock);
   reg_r6_10 : cycloneii_lcell_ff port map ( regout=>r6(10), datain=>
      o_add3(10), clk=>i_clock);
   reg_r6_1 : cycloneii_lcell_ff port map ( regout=>r6(1), datain=>o_add3(1), 
      clk=>i_clock);
   reg_r6_0 : cycloneii_lcell_ff port map ( regout=>r6(0), datain=>o_add3(0), 
      clk=>i_clock);
   reg_r5_2 : cycloneii_lcell_ff port map ( regout=>r5(2), datain=>o_dir2(2), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r5_1 : cycloneii_lcell_ff port map ( regout=>r5(1), datain=>o_dir2(1), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r5_0 : cycloneii_lcell_ff port map ( regout=>r5(0), datain=>o_dir2(0), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_9 : cycloneii_lcell_ff port map ( regout=>r4(9), datain=>o_max1(9), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_8 : cycloneii_lcell_ff port map ( regout=>r4(8), datain=>o_max1(8), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_7 : cycloneii_lcell_ff port map ( regout=>r4(7), datain=>o_max1(7), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_6 : cycloneii_lcell_ff port map ( regout=>r4(6), datain=>o_max1(6), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_5 : cycloneii_lcell_ff port map ( regout=>r4(5), datain=>o_max1(5), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_4 : cycloneii_lcell_ff port map ( regout=>r4(4), datain=>o_max1(4), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_3 : cycloneii_lcell_ff port map ( regout=>r4(3), datain=>o_max1(3), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_2 : cycloneii_lcell_ff port map ( regout=>r4(2), datain=>o_max1(2), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_1 : cycloneii_lcell_ff port map ( regout=>r4(1), datain=>o_max1(1), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r4_0 : cycloneii_lcell_ff port map ( regout=>r4(0), datain=>o_max1(0), 
      clk=>i_clock, ena=>not_valid_5);
   reg_r3_9 : cycloneii_lcell_ff port map ( regout=>r3(9), datain=>o_add2(9), 
      clk=>i_clock);
   reg_r3_8 : cycloneii_lcell_ff port map ( regout=>r3(8), datain=>o_add2(8), 
      clk=>i_clock);
   reg_r3_7 : cycloneii_lcell_ff port map ( regout=>r3(7), datain=>o_add2(7), 
      clk=>i_clock);
   reg_r3_6 : cycloneii_lcell_ff port map ( regout=>r3(6), datain=>o_add2(6), 
      clk=>i_clock);
   reg_r3_5 : cycloneii_lcell_ff port map ( regout=>r3(5), datain=>o_add2(5), 
      clk=>i_clock);
   reg_r3_4 : cycloneii_lcell_ff port map ( regout=>r3(4), datain=>o_add2(4), 
      clk=>i_clock);
   reg_r3_3 : cycloneii_lcell_ff port map ( regout=>r3(3), datain=>o_add2(3), 
      clk=>i_clock);
   reg_r3_2 : cycloneii_lcell_ff port map ( regout=>r3(2), datain=>o_add2(2), 
      clk=>i_clock);
   reg_r3_1 : cycloneii_lcell_ff port map ( regout=>r3(1), datain=>o_add2(1), 
      clk=>i_clock);
   reg_r3_0 : cycloneii_lcell_ff port map ( regout=>r3(0), datain=>o_add2(0), 
      clk=>i_clock);
   reg_r2_8 : cycloneii_lcell_ff port map ( regout=>r2(8), datain=>o_add1(8), 
      clk=>i_clock);
   reg_r2_7 : cycloneii_lcell_ff port map ( regout=>r2(7), datain=>o_add1(7), 
      clk=>i_clock);
   reg_r2_6 : cycloneii_lcell_ff port map ( regout=>r2(6), datain=>o_add1(6), 
      clk=>i_clock);
   reg_r2_5 : cycloneii_lcell_ff port map ( regout=>r2(5), datain=>o_add1(5), 
      clk=>i_clock);
   reg_r2_4 : cycloneii_lcell_ff port map ( regout=>r2(4), datain=>o_add1(4), 
      clk=>i_clock);
   reg_r2_3 : cycloneii_lcell_ff port map ( regout=>r2(3), datain=>o_add1(3), 
      clk=>i_clock);
   reg_r2_2 : cycloneii_lcell_ff port map ( regout=>r2(2), datain=>o_add1(2), 
      clk=>i_clock);
   reg_r2_1 : cycloneii_lcell_ff port map ( regout=>r2(1), datain=>o_add1(1), 
      clk=>i_clock);
   reg_r2_0 : cycloneii_lcell_ff port map ( regout=>r2(0), datain=>o_add1(0), 
      clk=>i_clock);
   reg_r1_2 : cycloneii_lcell_ff port map ( regout=>r1(2), datain=>o_dir1_2, 
      clk=>i_clock);
   reg_r1_1 : cycloneii_lcell_ff port map ( regout=>r1(1), datain=>nx35074z1, 
      clk=>i_clock);
   reg_r1_0 : cycloneii_lcell_ff port map ( regout=>r1(0), datain=>o_dir1_0, 
      clk=>i_clock);
   reg_q_7_dup_0 : cycloneii_lcell_ff port map ( regout=>column(7), datain=>
      inc_d_7_dup_1245, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(7), 
      datain=>inc_d_7, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_q_6_dup_1 : cycloneii_lcell_ff port map ( regout=>column(6), datain=>
      inc_d_6_dup_1243, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(6), 
      datain=>inc_d_6, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_q_5_dup_2 : cycloneii_lcell_ff port map ( regout=>column(5), datain=>
      inc_d_5_dup_1241, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(5), 
      datain=>inc_d_5, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_q_4_dup_3 : cycloneii_lcell_ff port map ( regout=>column(4), datain=>
      inc_d_4_dup_1239, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(4), 
      datain=>inc_d_4, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_q_3_dup_4 : cycloneii_lcell_ff port map ( regout=>column(3), datain=>
      inc_d_3_dup_1237, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(3), 
      datain=>inc_d_3, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_q_2_dup_5 : cycloneii_lcell_ff port map ( regout=>column(2), datain=>
      inc_d_2_dup_1235, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(2), 
      datain=>inc_d_2, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_q_1_dup_6 : cycloneii_lcell_ff port map ( regout=>column(1), datain=>
      inc_d_1_dup_1233, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(1), 
      datain=>inc_d_1, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_q_0_dup_7 : cycloneii_lcell_ff port map ( regout=>column(0), datain=>
      inc_d_0_dup_1231, clk=>i_clock, ena=>nx34903z1, sclr=>nx34903z2);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR337(0), 
      datain=>inc_d_0, clk=>i_clock, ena=>nx34903z2, sclr=>i_reset);
   reg_output_valid_reg : cycloneii_lcell_ff port map ( regout=>
      o_valid_EXMPLR318, datain=>nx23902z1, clk=>i_clock);
   reg_mode_1 : cycloneii_lcell_ff port map ( regout=>o_mode_1_EXMPLR320, 
      datain=>nx25376z1, clk=>i_clock, sclr=>i_reset);
   reg_mode_0 : cycloneii_lcell_ff port map ( regout=>nx25376z9, datain=>
      nx26373z1, clk=>i_clock, sclr=>i_reset);
   reg_i_7 : cycloneii_lcell_ff port map ( regout=>i(7), datain=>d(7), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_i_6 : cycloneii_lcell_ff port map ( regout=>i(6), datain=>d(6), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_i_5 : cycloneii_lcell_ff port map ( regout=>i(5), datain=>d(5), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_i_4 : cycloneii_lcell_ff port map ( regout=>i(4), datain=>d(4), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_i_3 : cycloneii_lcell_ff port map ( regout=>i(3), datain=>d(3), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_i_2 : cycloneii_lcell_ff port map ( regout=>i(2), datain=>d(2), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_i_1 : cycloneii_lcell_ff port map ( regout=>i(1), datain=>d(1), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_i_0 : cycloneii_lcell_ff port map ( regout=>i(0), datain=>d(0), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_7 : cycloneii_lcell_ff port map ( regout=>h(7), datain=>i(7), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_6 : cycloneii_lcell_ff port map ( regout=>h(6), datain=>i(6), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_5 : cycloneii_lcell_ff port map ( regout=>h(5), datain=>i(5), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_4 : cycloneii_lcell_ff port map ( regout=>h(4), datain=>i(4), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_3 : cycloneii_lcell_ff port map ( regout=>h(3), datain=>i(3), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_2 : cycloneii_lcell_ff port map ( regout=>h(2), datain=>i(2), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_1 : cycloneii_lcell_ff port map ( regout=>h(1), datain=>i(1), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_h_0 : cycloneii_lcell_ff port map ( regout=>h(0), datain=>i(0), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_7 : cycloneii_lcell_ff port map ( regout=>g(7), datain=>f(7), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_6 : cycloneii_lcell_ff port map ( regout=>g(6), datain=>f(6), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_5 : cycloneii_lcell_ff port map ( regout=>g(5), datain=>f(5), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_4 : cycloneii_lcell_ff port map ( regout=>g(4), datain=>f(4), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_3 : cycloneii_lcell_ff port map ( regout=>g(3), datain=>f(3), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_2 : cycloneii_lcell_ff port map ( regout=>g(2), datain=>f(2), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_1 : cycloneii_lcell_ff port map ( regout=>g(1), datain=>f(1), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_g_0 : cycloneii_lcell_ff port map ( regout=>g(0), datain=>f(0), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_7 : cycloneii_lcell_ff port map ( regout=>f(7), datain=>e(7), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_6 : cycloneii_lcell_ff port map ( regout=>f(6), datain=>e(6), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_5 : cycloneii_lcell_ff port map ( regout=>f(5), datain=>e(5), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_4 : cycloneii_lcell_ff port map ( regout=>f(4), datain=>e(4), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_3 : cycloneii_lcell_ff port map ( regout=>f(3), datain=>e(3), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_2 : cycloneii_lcell_ff port map ( regout=>f(2), datain=>e(2), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_1 : cycloneii_lcell_ff port map ( regout=>f(1), datain=>e(1), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_f_0 : cycloneii_lcell_ff port map ( regout=>f(0), datain=>e(0), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_7 : cycloneii_lcell_ff port map ( regout=>e(7), datain=>i_pixel(7), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_6 : cycloneii_lcell_ff port map ( regout=>e(6), datain=>i_pixel(6), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_5 : cycloneii_lcell_ff port map ( regout=>e(5), datain=>i_pixel(5), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_4 : cycloneii_lcell_ff port map ( regout=>e(4), datain=>i_pixel(4), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_3 : cycloneii_lcell_ff port map ( regout=>e(3), datain=>i_pixel(3), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_2 : cycloneii_lcell_ff port map ( regout=>e(2), datain=>i_pixel(2), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_1 : cycloneii_lcell_ff port map ( regout=>e(1), datain=>i_pixel(1), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_e_0 : cycloneii_lcell_ff port map ( regout=>e(0), datain=>i_pixel(0), 
      clk=>i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_d_7 : cycloneii_lcell_ff port map ( regout=>d(7), datain=>
      mem_out_1(7), sdata=>mem_out_0(7), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_d_6 : cycloneii_lcell_ff port map ( regout=>d(6), datain=>
      mem_out_1(6), sdata=>mem_out_0(6), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_d_5 : cycloneii_lcell_ff port map ( regout=>d(5), datain=>
      mem_out_1(5), sdata=>mem_out_0(5), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_d_4 : cycloneii_lcell_ff port map ( regout=>d(4), datain=>
      mem_out_1(4), sdata=>mem_out_0(4), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_d_3 : cycloneii_lcell_ff port map ( regout=>d(3), datain=>
      mem_out_1(3), sdata=>mem_out_0(3), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_d_2 : cycloneii_lcell_ff port map ( regout=>d(2), datain=>
      mem_out_1(2), sdata=>mem_out_0(2), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_d_1 : cycloneii_lcell_ff port map ( regout=>d(1), datain=>
      mem_out_1(1), sdata=>mem_out_0(1), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_d_0 : cycloneii_lcell_ff port map ( regout=>d(0), datain=>
      mem_out_1(0), sdata=>mem_out_0(0), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_column_valid2_7 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(7), datain=>column_valid1(7), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid2_6 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(6), datain=>column_valid1(6), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid2_5 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(5), datain=>column_valid1(5), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid2_4 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(4), datain=>column_valid1(4), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid2_3 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(3), datain=>column_valid1(3), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid2_2 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(2), datain=>column_valid1(2), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid2_1 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(1), datain=>column_valid1(1), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid2_0 : cycloneii_lcell_ff port map ( regout=>
      column_valid2(0), datain=>column_valid1(0), clk=>i_clock, ena=>
      valid(4));
   reg_column_valid1_7 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(7), datain=>column(7), clk=>i_clock, ena=>valid(0));
   reg_column_valid1_6 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(6), datain=>column(6), clk=>i_clock, ena=>valid(0));
   reg_column_valid1_5 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(5), datain=>column(5), clk=>i_clock, ena=>valid(0));
   reg_column_valid1_4 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(4), datain=>column(4), clk=>i_clock, ena=>valid(0));
   reg_column_valid1_3 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(3), datain=>column(3), clk=>i_clock, ena=>valid(0));
   reg_column_valid1_2 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(2), datain=>column(2), clk=>i_clock, ena=>valid(0));
   reg_column_valid1_1 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(1), datain=>column(1), clk=>i_clock, ena=>valid(0));
   reg_column_valid1_0 : cycloneii_lcell_ff port map ( regout=>
      column_valid1(0), datain=>column(0), clk=>i_clock, ena=>valid(0));
   reg_c_7 : cycloneii_lcell_ff port map ( regout=>c(7), datain=>
      mem_out_0(7), sdata=>mem_out_1(7), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_c_6 : cycloneii_lcell_ff port map ( regout=>c(6), datain=>
      mem_out_0(6), sdata=>mem_out_1(6), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_c_5 : cycloneii_lcell_ff port map ( regout=>c(5), datain=>
      mem_out_0(5), sdata=>mem_out_1(5), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_c_4 : cycloneii_lcell_ff port map ( regout=>c(4), datain=>
      mem_out_0(4), sdata=>mem_out_1(4), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_c_3 : cycloneii_lcell_ff port map ( regout=>c(3), datain=>
      mem_out_0(3), sdata=>mem_out_1(3), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_c_2 : cycloneii_lcell_ff port map ( regout=>c(2), datain=>
      mem_out_0(2), sdata=>mem_out_1(2), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_c_1 : cycloneii_lcell_ff port map ( regout=>c(1), datain=>
      mem_out_0(1), sdata=>mem_out_1(1), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_c_0 : cycloneii_lcell_ff port map ( regout=>c(0), datain=>
      mem_out_0(0), sdata=>mem_out_1(0), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR337(0));
   reg_b_7 : cycloneii_lcell_ff port map ( regout=>b(7), datain=>c(7), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_b_6 : cycloneii_lcell_ff port map ( regout=>b(6), datain=>c(6), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_b_5 : cycloneii_lcell_ff port map ( regout=>b(5), datain=>c(5), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_b_4 : cycloneii_lcell_ff port map ( regout=>b(4), datain=>c(4), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_b_3 : cycloneii_lcell_ff port map ( regout=>b(3), datain=>c(3), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_b_2 : cycloneii_lcell_ff port map ( regout=>b(2), datain=>c(2), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_b_1 : cycloneii_lcell_ff port map ( regout=>b(1), datain=>c(1), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_b_0 : cycloneii_lcell_ff port map ( regout=>b(0), datain=>c(0), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_7 : cycloneii_lcell_ff port map ( regout=>a(7), datain=>b(7), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_6 : cycloneii_lcell_ff port map ( regout=>a(6), datain=>b(6), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_5 : cycloneii_lcell_ff port map ( regout=>a(5), datain=>b(5), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_4 : cycloneii_lcell_ff port map ( regout=>a(4), datain=>b(4), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_3 : cycloneii_lcell_ff port map ( regout=>a(3), datain=>b(3), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_2 : cycloneii_lcell_ff port map ( regout=>a(2), datain=>b(2), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_1 : cycloneii_lcell_ff port map ( regout=>a(1), datain=>b(1), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   reg_a_0 : cycloneii_lcell_ff port map ( regout=>a(0), datain=>b(0), clk=>
      i_clock, ena=>nx20492z1, sclr=>i_reset);
   ix54262z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx54262z1, dataa=>
      o_row_EXMPLR337(2), datad=>debug_num_5_1_EXMPLR334, cin=>nx54262z2);
   ix54262z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx54262z2, dataa=>
      o_row_EXMPLR337(1), datad=>debug_num_5_1_EXMPLR334, cin=>nx54262z3);
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, dataa=>o_row_EXMPLR337(7), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx58250z1);
   ix61908z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0a0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx61908z2, dataa=>valid(6), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx61908z3);
   ix58250z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx58250z1, dataa=>
      o_row_EXMPLR337(6), datad=>debug_num_5_1_EXMPLR334, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx58250z2, dataa=>
      o_row_EXMPLR337(5), datad=>debug_num_5_1_EXMPLR334, cin=>nx58250z3);
   ix54262z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx54262z3, dataa=>o_row_EXMPLR337(0), datad=>
      debug_num_5_1_EXMPLR334);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx58250z3, dataa=>
      o_row_EXMPLR337(4), datad=>debug_num_5_1_EXMPLR334, cin=>nx58250z4);
   ix50725z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_1245, dataa=>column(7), datad=>
      debug_num_5_1_EXMPLR334, cin=>nx50725z1);
   ix50725z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_1243, cout=>nx50725z1, dataa=>
      column(6), datad=>debug_num_5_1_EXMPLR334, cin=>nx50725z2);
   ix50725z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_1241, cout=>nx50725z2, dataa=>
      column(5), datad=>debug_num_5_1_EXMPLR334, cin=>nx50725z3);
   ix50725z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_1239, cout=>nx50725z3, dataa=>
      column(4), datad=>debug_num_5_1_EXMPLR334, cin=>nx50725z4);
   ix8437z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_1237, cout=>nx50725z4, dataa=>
      column(3), datad=>debug_num_5_1_EXMPLR334, cin=>nx8437z1);
   ix8437z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_1235, cout=>nx8437z1, dataa=>
      column(2), datad=>debug_num_5_1_EXMPLR334, cin=>nx8437z2);
   ix12707z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_1233, cout=>nx8437z2, dataa=>
      column(1), datad=>debug_num_5_1_EXMPLR334, cin=>nx12707z1);
   ix12707z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx12707z1, dataa=>column(0), datad=>
      debug_num_5_1_EXMPLR334);
   ix9489z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0_dup_1231, datad=>column(0));
   ix54262z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx58250z4, dataa=>
      o_row_EXMPLR337(3), datad=>debug_num_5_1_EXMPLR334, cin=>nx54262z1);
   ix51271z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0, datad=>o_row_EXMPLR337(0));
   ix61908z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx61908z17, dataa=>o_edge_EXMPLR319(2), datab=>
      valid(6));
   ix26373z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx26373z3, dataa=>nx25376z5, datab=>nx26373z4, 
      datac=>nx25376z3, datad=>nx26373z5);
   ix26373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx26373z2, dataa=>o_mode_1_EXMPLR320, datab=>
      nx25376z9);
   ix61908z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx61908z15, dataa=>sub_out_12, datab=>sub_out_11, 
      datac=>sub_out_10);
   ix61908z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx61908z16, dataa=>sub_out_9, datab=>sub_out_8, 
      datac=>sub_out_7);
   ix25376z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx25376z8, dataa=>i_valid, datab=>
      o_mode_1_EXMPLR320, datac=>nx25376z9);
   ix25376z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx25376z3, dataa=>o_valid_EXMPLR318, datab=>
      column_valid2(7), datac=>column_valid2(6));
   ix26373z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx26373z5, dataa=>column_valid2(5), datab=>
      column_valid2(4), datac=>column_valid2(3));
   ix25376z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx25376z5, dataa=>column_valid2(2), datab=>
      column_valid2(1), datac=>column_valid2(0));
   ix26373z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx26373z4, dataa=>row_valid2(7), datab=>
      row_valid2(6), datac=>row_valid2(5));
   ix25376z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx25376z7, dataa=>row_valid2(4), datab=>
      row_valid2(3), datac=>row_valid2(2));
   ix25376z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx25376z6, dataa=>row_valid2(1), datab=>
      row_valid2(0), datac=>nx25376z7);
   ix25376z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx25376z4, dataa=>row_valid2(7), datab=>
      row_valid2(6), datac=>row_valid2(5), datad=>nx25376z5);
   ix25376z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx25376z2, dataa=>column_valid2(5), datab=>
      column_valid2(4), datac=>column_valid2(3), datad=>nx25376z3);
   ix23902z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx23902z3, dataa=>column_valid2(7), datab=>
      column_valid2(6), datac=>column_valid2(5), datad=>column_valid2(4));
   ix23902z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx23902z5, dataa=>row_valid2(7), datab=>
      row_valid2(6), datac=>row_valid2(5), datad=>row_valid2(4));
   ix23902z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx23902z4, dataa=>row_valid2(3), datab=>
      row_valid2(2), datac=>row_valid2(1));
   ix34903z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx34903z4, dataa=>column(3), datab=>column(2), 
      datac=>column(1), datad=>column(0));
   ix34903z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx34903z3, dataa=>column(7), datab=>column(6), 
      datac=>column(5), datad=>column(4));
   ix28679z53021 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z67, dataa=>valid(1), datab=>valid(0), 
      datac=>c(0), datad=>h(0));
   ix28679z53018 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z65, dataa=>valid(1), datab=>valid(0), 
      datac=>c(1), datad=>h(1));
   ix28679z53015 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z63, dataa=>valid(1), datab=>valid(0), 
      datac=>c(2), datad=>h(2));
   ix28679z53012 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z61, dataa=>valid(1), datab=>valid(0), 
      datac=>c(3), datad=>h(3));
   ix28679z53009 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z59, dataa=>valid(1), datab=>valid(0), 
      datac=>c(4), datad=>h(4));
   ix28679z53006 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z57, dataa=>valid(1), datab=>valid(0), 
      datac=>c(5), datad=>h(5));
   ix28679z53003 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z55, dataa=>valid(1), datab=>valid(0), 
      datac=>c(6), datad=>h(6));
   ix28679z53000 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z53, dataa=>valid(1), datab=>valid(0), 
      datac=>c(7), datad=>h(7));
   ix28679z52997 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z51, dataa=>valid(1), datab=>valid(0), 
      datac=>a(0), datad=>b(0));
   ix28679z52994 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z49, dataa=>valid(1), datab=>valid(0), 
      datac=>a(1), datad=>b(1));
   ix28679z52991 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z47, dataa=>valid(1), datab=>valid(0), 
      datac=>a(2), datad=>b(2));
   ix28679z52988 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z45, dataa=>valid(1), datab=>valid(0), 
      datac=>a(3), datad=>b(3));
   ix28679z52985 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z43, dataa=>valid(1), datab=>valid(0), 
      datac=>a(4), datad=>b(4));
   ix28679z52982 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z41, dataa=>valid(1), datab=>valid(0), 
      datac=>a(5), datad=>b(5));
   ix28679z52979 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z39, dataa=>valid(1), datab=>valid(0), 
      datac=>a(6), datad=>b(6));
   ix28679z52976 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z37, dataa=>valid(1), datab=>valid(0), 
      datac=>a(7), datad=>b(7));
   ix28679z52973 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z35, dataa=>valid(1), datab=>valid(0), 
      datac=>b(0), datad=>d(0));
   ix28679z52970 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z33, dataa=>valid(1), datab=>valid(0), 
      datac=>b(1), datad=>d(1));
   ix28679z52967 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z31, dataa=>valid(1), datab=>valid(0), 
      datac=>b(2), datad=>d(2));
   ix28679z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z29, dataa=>valid(1), datab=>valid(0), 
      datac=>b(3), datad=>d(3));
   ix28679z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z27, dataa=>valid(1), datab=>valid(0), 
      datac=>b(4), datad=>d(4));
   ix28679z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z25, dataa=>valid(1), datab=>valid(0), 
      datac=>b(5), datad=>d(5));
   ix28679z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z23, dataa=>valid(1), datab=>valid(0), 
      datac=>b(6), datad=>d(6));
   ix28679z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2c0") 
       port map ( combout=>nx28679z21, dataa=>valid(1), datab=>valid(0), 
      datac=>b(7), datad=>d(7));
   ix28679z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z19, dataa=>valid(1), datab=>valid(0), 
      datac=>a(0), datad=>g(0));
   ix28679z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z17, dataa=>valid(1), datab=>valid(0), 
      datac=>a(1), datad=>g(1));
   ix28679z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z15, dataa=>valid(1), datab=>valid(0), 
      datac=>a(2), datad=>g(2));
   ix28679z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z13, dataa=>valid(1), datab=>valid(0), 
      datac=>a(3), datad=>g(3));
   ix28679z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z11, dataa=>valid(1), datab=>valid(0), 
      datac=>a(4), datad=>g(4));
   ix28679z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z9, dataa=>valid(1), datab=>valid(0), 
      datac=>a(5), datad=>g(5));
   ix28679z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z7, dataa=>valid(1), datab=>valid(0), 
      datac=>a(6), datad=>g(6));
   ix28679z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"ec20") 
       port map ( combout=>nx28679z5, dataa=>valid(1), datab=>valid(0), 
      datac=>a(7), datad=>g(7));
   ix20492z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx20492z1, dataa=>i_reset, datab=>i_valid);
   ix28679z52999 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z52, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(7));
   ix28679z53002 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z54, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(6));
   ix28679z53005 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z56, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(5));
   ix28679z53008 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z58, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(4));
   ix28679z53011 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z60, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(3));
   ix28679z53014 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z62, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(2));
   ix28679z53017 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z64, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(1));
   ix28679z53020 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z66, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>g(0));
   ix28679z52975 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z36, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(7));
   ix28679z52978 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z38, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(6));
   ix28679z52981 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z40, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(5));
   ix28679z52984 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z42, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(4));
   ix28679z52987 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z44, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(3));
   ix28679z52990 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z46, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(2));
   ix28679z52993 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z48, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(1));
   ix28679z52996 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z50, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>f(0));
   ix28679z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z20, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(7));
   ix28679z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z22, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(6));
   ix28679z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z24, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(5));
   ix28679z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z26, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(4));
   ix28679z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z28, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(3));
   ix28679z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z30, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(2));
   ix28679z52969 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z32, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(1));
   ix28679z52972 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z34, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>h(0));
   ix28679z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z4, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(7));
   ix28679z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z6, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(6));
   ix28679z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z8, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(5));
   ix28679z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z10, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(4));
   ix28679z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z12, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(3));
   ix28679z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z14, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(2));
   ix28679z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z16, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(1));
   ix28679z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx28679z18, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0), datad=>e(0));
   ix34903z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx34903z1, dataa=>i_reset, datab=>valid(0));
   ix61908z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffa8") 
       port map ( combout=>nx61908z1, dataa=>nx61908z2, datab=>nx61908z15, 
      datac=>nx61908z16, datad=>nx61908z17);
   ix22862z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx22862z1, dataa=>valid(6), datab=>r5(2), datac=>
      r8(2));
   ix23859z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx23859z1, dataa=>valid(6), datab=>r5(1), datac=>
      r8(1));
   ix24856z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx24856z1, dataa=>valid(6), datab=>r5(0), datac=>
      r8(0));
   ix25376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff80") 
       port map ( combout=>nx25376z1, dataa=>nx25376z2, datab=>nx25376z4, 
      datac=>nx25376z6, datad=>nx25376z8);
   ix26373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4505") 
       port map ( combout=>nx26373z1, dataa=>i_valid, datab=>nx25376z6, 
      datac=>nx26373z2, datad=>nx26373z3);
   ix28679z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx28679z2, dataa=>valid(1), datab=>valid(0));
   ix23902z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx23902z2, dataa=>column_valid2(3), datab=>
      column_valid2(2), datac=>column_valid2(1), datad=>nx23902z3);
   ix23902z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8880") 
       port map ( combout=>nx23902z1, dataa=>valid(6), datab=>nx23902z2, 
      datac=>nx23902z4, datad=>nx23902z5);
   ix34903z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx34903z2, dataa=>i_reset, datab=>valid(0), datac
      =>nx34903z3, datad=>nx34903z4);
   ix35074z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0d0d") 
       port map ( combout=>nx35074z1, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0));
   ix28679z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f1f1") 
       port map ( combout=>nx28679z1, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0));
   ix28679z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx28679z3, dataa=>valid(2), datab=>valid(1), 
      datac=>valid(0));
   ix28678z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(0), dataa=>valid(2), datab=>temp_add(0), 
      datac=>r6(0));
   ix28678z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(1), dataa=>valid(2), datab=>temp_add(1), 
      datac=>r6(1));
   ix28678z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(2), dataa=>valid(2), datab=>temp_add(2), 
      datac=>r6(2));
   ix28678z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(3), dataa=>valid(2), datab=>temp_add(3), 
      datac=>r6(3));
   ix28678z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(4), dataa=>valid(2), datab=>temp_add(4), 
      datac=>r6(4));
   ix28678z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(5), dataa=>valid(2), datab=>temp_add(5), 
      datac=>r6(5));
   ix28678z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(6), dataa=>valid(2), datab=>temp_add(6), 
      datac=>r6(6));
   ix28678z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(7), dataa=>valid(2), datab=>temp_add(7), 
      datac=>r6(7));
   ix28678z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_add4(8), dataa=>valid(2), datab=>temp_add(8), 
      datac=>r6(8));
   ix28678z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>i_add4(9), dataa=>valid(2), datab=>r6(9));
   ix28678z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>i_add4(10), dataa=>valid(2), datab=>r6(10));
   ix28678z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>i_add4(11), dataa=>valid(2), datab=>r6(11));
   ix28678z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>i_add4(12), dataa=>valid(2), datab=>r6(12));
   ix28678z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>i_add3(0), dataa=>valid(5), datab=>r2(0));
   ix28678z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(1), dataa=>valid(5), datab=>r2(1), datac=>
      r6(0));
   ix28678z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(2), dataa=>valid(5), datab=>r2(2), datac=>
      r6(1));
   ix28678z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(3), dataa=>valid(5), datab=>r2(3), datac=>
      r6(2));
   ix28678z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(4), dataa=>valid(5), datab=>r2(4), datac=>
      r6(3));
   ix28678z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(5), dataa=>valid(5), datab=>r2(5), datac=>
      r6(4));
   ix28678z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(6), dataa=>valid(5), datab=>r2(6), datac=>
      r6(5));
   ix28678z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(7), dataa=>valid(5), datab=>r2(7), datac=>
      r6(6));
   ix28678z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>i_add3(8), dataa=>valid(5), datab=>r2(8), datac=>
      r6(7));
   ix28678z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>i_add3(9), dataa=>valid(5), datab=>r6(8));
   ix28678z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>i_add3(10), dataa=>valid(5), datab=>r6(9));
   ix28678z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>i_add3(11), dataa=>valid(5), datab=>r6(10));
   ix28678z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>i_add3(12), dataa=>valid(5), datab=>r6(11));
   ix28678z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_dir3(0), dataa=>valid(2), datab=>temp_dir(0), 
      datac=>r5(0));
   ix28678z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_dir3(1), dataa=>valid(2), datab=>temp_dir(1), 
      datac=>r5(1));
   ix28678z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_dir3(2), dataa=>valid(2), datab=>temp_dir(2), 
      datac=>r5(2));
   ix28678z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(0), dataa=>valid(2), datab=>temp_max(0), 
      datac=>r4(0));
   ix28678z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(1), dataa=>valid(2), datab=>temp_max(1), 
      datac=>r4(1));
   ix28678z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(2), dataa=>valid(2), datab=>temp_max(2), 
      datac=>r4(2));
   ix28678z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(3), dataa=>valid(2), datab=>temp_max(3), 
      datac=>r4(3));
   ix28678z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(4), dataa=>valid(2), datab=>temp_max(4), 
      datac=>r4(4));
   ix28678z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(5), dataa=>valid(2), datab=>temp_max(5), 
      datac=>r4(5));
   ix28678z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(6), dataa=>valid(2), datab=>temp_max(6), 
      datac=>r4(6));
   ix28678z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(7), dataa=>valid(2), datab=>temp_max(7), 
      datac=>r4(7));
   ix28678z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(8), dataa=>valid(2), datab=>temp_max(8), 
      datac=>r4(8));
   ix28678z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>i_max3(9), dataa=>valid(2), datab=>temp_max(9), 
      datac=>r4(9));
   ix28679z53019 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(0), dataa=>e(0), datab=>nx28679z3, datac=>
      nx28679z66, datad=>nx28679z67);
   ix28679z53016 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(1), dataa=>e(1), datab=>nx28679z3, datac=>
      nx28679z64, datad=>nx28679z65);
   ix28679z53013 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(2), dataa=>e(2), datab=>nx28679z3, datac=>
      nx28679z62, datad=>nx28679z63);
   ix28679z53010 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(3), dataa=>e(3), datab=>nx28679z3, datac=>
      nx28679z60, datad=>nx28679z61);
   ix28679z53007 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(4), dataa=>e(4), datab=>nx28679z3, datac=>
      nx28679z58, datad=>nx28679z59);
   ix28679z53004 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(5), dataa=>e(5), datab=>nx28679z3, datac=>
      nx28679z56, datad=>nx28679z57);
   ix28679z53001 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(6), dataa=>e(6), datab=>nx28679z3, datac=>
      nx28679z54, datad=>nx28679z55);
   ix28679z52998 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add2(7), dataa=>e(7), datab=>nx28679z3, datac=>
      nx28679z52, datad=>nx28679z53);
   ix28679z52995 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(0), dataa=>d(0), datab=>nx28679z3, datac=>
      nx28679z50, datad=>nx28679z51);
   ix28679z52992 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(1), dataa=>d(1), datab=>nx28679z3, datac=>
      nx28679z48, datad=>nx28679z49);
   ix28679z52989 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(2), dataa=>d(2), datab=>nx28679z3, datac=>
      nx28679z46, datad=>nx28679z47);
   ix28679z52986 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(3), dataa=>d(3), datab=>nx28679z3, datac=>
      nx28679z44, datad=>nx28679z45);
   ix28679z52983 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(4), dataa=>d(4), datab=>nx28679z3, datac=>
      nx28679z42, datad=>nx28679z43);
   ix28679z52980 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(5), dataa=>d(5), datab=>nx28679z3, datac=>
      nx28679z40, datad=>nx28679z41);
   ix28679z52977 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(6), dataa=>d(6), datab=>nx28679z3, datac=>
      nx28679z38, datad=>nx28679z39);
   ix28679z52974 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_add1(7), dataa=>d(7), datab=>nx28679z3, datac=>
      nx28679z36, datad=>nx28679z37);
   ix28679z52971 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(0), dataa=>f(0), datab=>nx28679z3, datac=>
      nx28679z34, datad=>nx28679z35);
   ix28679z52968 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(1), dataa=>f(1), datab=>nx28679z3, datac=>
      nx28679z32, datad=>nx28679z33);
   ix28679z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(2), dataa=>f(2), datab=>nx28679z3, datac=>
      nx28679z30, datad=>nx28679z31);
   ix28679z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(3), dataa=>f(3), datab=>nx28679z3, datac=>
      nx28679z28, datad=>nx28679z29);
   ix28679z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(4), dataa=>f(4), datab=>nx28679z3, datac=>
      nx28679z26, datad=>nx28679z27);
   ix28679z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(5), dataa=>f(5), datab=>nx28679z3, datac=>
      nx28679z24, datad=>nx28679z25);
   ix28679z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(6), dataa=>f(6), datab=>nx28679z3, datac=>
      nx28679z22, datad=>nx28679z23);
   ix28679z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max2(7), dataa=>f(7), datab=>nx28679z3, datac=>
      nx28679z20, datad=>nx28679z21);
   ix28679z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(0), dataa=>c(0), datab=>nx28679z3, datac=>
      nx28679z18, datad=>nx28679z19);
   ix28679z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(1), dataa=>c(1), datab=>nx28679z3, datac=>
      nx28679z16, datad=>nx28679z17);
   ix28679z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(2), dataa=>c(2), datab=>nx28679z3, datac=>
      nx28679z14, datad=>nx28679z15);
   ix28679z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(3), dataa=>c(3), datab=>nx28679z3, datac=>
      nx28679z12, datad=>nx28679z13);
   ix28679z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(4), dataa=>c(4), datab=>nx28679z3, datac=>
      nx28679z10, datad=>nx28679z11);
   ix28679z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(5), dataa=>c(5), datab=>nx28679z3, datac=>
      nx28679z8, datad=>nx28679z9);
   ix28679z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(6), dataa=>c(6), datab=>nx28679z3, datac=>
      nx28679z6, datad=>nx28679z7);
   ix28679z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>i_max1(7), dataa=>c(7), datab=>nx28679z3, datac=>
      nx28679z4, datad=>nx28679z5);
   ix54114z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>mem_wren(1), dataa=>i_valid, datab=>
      o_row_EXMPLR337(0));
   ix51243z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>mem_wren(0), dataa=>i_valid, datab=>
      o_row_EXMPLR337(0));
   ix63886z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(0), dataa=>o_edge_EXMPLR319(2), datab=>
      r8(0));
   ix62889z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(1), dataa=>o_edge_EXMPLR319(2), datab=>
      r8(1));
   ix61892z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(2), dataa=>o_edge_EXMPLR319(2), datab=>
      r8(2));
end main ;

