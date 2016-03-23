
-- 
-- Definition of  kirsch
-- 
--      Wed Mar 23 19:25:19 2016
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8u_8u ;

architecture BEHAVIORAL of gt_8u_8u is 
   component sim_gt
      generic (size : integer := 8;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_gt
      generic map (size => 8,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_8u_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8u_8u_8u_0_0 ;

architecture BEHAVIORAL of add_8u_8u_8u_0_0 is 
   component sim_add
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_add
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_9u_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9u_9u_9u_0_0 ;

architecture BEHAVIORAL of add_9u_9u_9u_0_0 is 
   component sim_add
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix31 : sim_add
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_10u_10u is 
   port (
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_10u_10u ;

architecture BEHAVIORAL of gt_10u_10u is 
   component sim_gt
      generic (size : integer := 10;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix25 : sim_gt
      generic map (size => 10,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_13u_13u_13u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      d : OUT std_logic_vector (12 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_13u_13u_13u_0_0 ;

architecture BEHAVIORAL of add_13u_13u_13u_0_0 is 
   component sim_add
      generic (size : integer := 13) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic_vector (12 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix44 : sim_add
      generic map (size => 13) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_4_4 is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_4_4 ;

architecture BEHAVIORAL of select_4_4 is 
   component sim_select
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_select
      generic map (size => 4) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_8u_8u_0_0 ;

architecture BEHAVIORAL of inc_8u_8u_0_0 is 
   component sim_inc
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_inc
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity sub_12u_12u_12u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_12u_12u_12u_0 ;

architecture BEHAVIORAL of sub_12u_12u_12u_0 is 
   component sim_sub
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix40 : sim_sub
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   port (
      clk : IN std_logic ;
      we : IN std_logic ;
      address : IN std_logic_vector (7 DOWNTO 0) ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
end clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F ;

architecture BEHAVIORAL of clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   component sim_ram
      generic (size : integer := 8;
         sizead : integer := 8;
         numwords : integer := 256;
         use_clk : string := "true";
         use_clk2 : string := "false";
         use_data2 : string := "false";
         use_addr2 : string := "true";
         use_addr3 : string := "false";
         use_addr4 : string := "false";
         use_we : string := "true";
         use_we2 : string := "false";
         use_q2 : string := "false";
         use_raminit : string := "false") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0) ;
         clk2 : IN std_logic ;
         data2 : IN std_logic_vector (7 DOWNTO 0) ;
         addr3 : IN std_logic_vector (7 DOWNTO 0) ;
         addr4 : IN std_logic_vector (7 DOWNTO 0) ;
         we2 : IN std_logic ;
         q2 : OUT std_logic_vector (7 DOWNTO 0) ;
         q3 : OUT std_logic_vector (7 DOWNTO 0) ;
         q4 : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;type DANGLING_type is array (0 downto 0,511 downto 0) of 
   std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   ix0 : sim_ram
      generic map (size => 8,
         sizead => 8,
         numwords => 256,
         use_clk => "true",
         use_clk2 => "false",
         use_data2 => "false",
         use_addr2 => "true",
         use_addr3 => "false",
         use_addr4 => "false",
         use_we => "true",
         use_we2 => "false",
         use_q2 => "false",
         use_raminit => "false") 
       port map ( clk=>clk, we=>we, address=>address, data=>data, q=>q, 
      addr2=>addr2, clk2=>DANGLING(0,0), data2(7)=>DANGLING(0,1), data2(6)=>
      DANGLING(0,2), data2(5)=>DANGLING(0,3), data2(4)=>DANGLING(0,4), 
      data2(3)=>DANGLING(0,5), data2(2)=>DANGLING(0,6), data2(1)=>
      DANGLING(0,7), data2(0)=>DANGLING(0,8), addr3(7)=>DANGLING(0,9), 
      addr3(6)=>DANGLING(0,10), addr3(5)=>DANGLING(0,11), addr3(4)=>
      DANGLING(0,12), addr3(3)=>DANGLING(0,13), addr3(2)=>DANGLING(0,14), 
      addr3(1)=>DANGLING(0,15), addr3(0)=>DANGLING(0,16), addr4(7)=>
      DANGLING(0,17), addr4(6)=>DANGLING(0,18), addr4(5)=>DANGLING(0,19), 
      addr4(4)=>DANGLING(0,20), addr4(3)=>DANGLING(0,21), addr4(2)=>
      DANGLING(0,22), addr4(1)=>DANGLING(0,23), addr4(0)=>DANGLING(0,24), 
      we2=>DANGLING(0,25), q2(7)=>DANGLING(0,26), q2(6)=>DANGLING(0,27), 
      q2(5)=>DANGLING(0,28), q2(4)=>DANGLING(0,29), q2(3)=>DANGLING(0,30), 
      q2(2)=>DANGLING(0,31), q2(1)=>DANGLING(0,32), q2(0)=>DANGLING(0,33), 
      q3(7)=>DANGLING(0,34), q3(6)=>DANGLING(0,35), q3(5)=>DANGLING(0,36), 
      q3(4)=>DANGLING(0,37), q3(3)=>DANGLING(0,38), q3(2)=>DANGLING(0,39), 
      q3(1)=>DANGLING(0,40), q3(0)=>DANGLING(0,41), q4(7)=>DANGLING(0,42), 
      q4(6)=>DANGLING(0,43), q4(5)=>DANGLING(0,44), q4(4)=>DANGLING(0,45), 
      q4(3)=>DANGLING(0,46), q4(2)=>DANGLING(0,47), q4(1)=>DANGLING(0,48), 
      q4(0)=>DANGLING(0,49));
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_6u_6u is 
   port (
      a : IN std_logic_vector (5 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_6u_6u ;

architecture BEHAVIORAL of or_6u_6u is 
   component sim_or
      generic (size : integer := 6) ;
      
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_or
      generic map (size => 6) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_7u_7u ;

architecture BEHAVIORAL of or_7u_7u is 
   component sim_or
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_or
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_9u_9u ;

architecture BEHAVIORAL of and_9u_9u is 
   component sim_and
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_and
      generic map (size => 9) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_17u_17u is 
   port (
      a : IN std_logic_vector (16 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_17u_17u ;

architecture BEHAVIORAL of and_17u_17u is 
   component sim_and
      generic (size : integer := 17) ;
      
      port (
         a : IN std_logic_vector (16 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix22 : sim_and
      generic map (size => 17) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component gt_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal nx4, o_max_dir_2_EXMPLR27: std_logic ;

begin
   o_max_dir(2) <= o_max_dir_2_EXMPLR27 ;
   rtlc0_copy_n22_gt_0 : gt_8u_8u port map ( a(7)=>i_pix1(7), a(6)=>
      i_pix1(6), a(5)=>i_pix1(5), a(4)=>i_pix1(4), a(3)=>i_pix1(3), a(2)=>
      i_pix1(2), a(1)=>i_pix1(1), a(0)=>i_pix1(0), b(7)=>i_pix2(7), b(6)=>
      i_pix2(6), b(5)=>i_pix2(5), b(4)=>i_pix2(4), b(3)=>i_pix2(3), b(2)=>
      i_pix2(2), b(1)=>i_pix2(1), b(0)=>i_pix2(0), d=>nx4);
   rtlc2_15_gt_1 : gt_8u_8u port map ( a(7)=>i_pix2(7), a(6)=>i_pix2(6), 
      a(5)=>i_pix2(5), a(4)=>i_pix2(4), a(3)=>i_pix2(3), a(2)=>i_pix2(2), 
      a(1)=>i_pix2(1), a(0)=>i_pix2(0), b(7)=>i_pix1(7), b(6)=>i_pix1(6), 
      b(5)=>i_pix1(5), b(4)=>i_pix1(4), b(3)=>i_pix1(3), b(2)=>i_pix1(2), 
      b(1)=>i_pix1(1), b(0)=>i_pix1(0), d=>o_max_dir_2_EXMPLR27);
   o_max_pix(0) <= i_pix1(0) when nx4 = '1' else i_pix2(0) ;
   o_max_pix(1) <= i_pix1(1) when nx4 = '1' else i_pix2(1) ;
   o_max_pix(2) <= i_pix1(2) when nx4 = '1' else i_pix2(2) ;
   o_max_pix(3) <= i_pix1(3) when nx4 = '1' else i_pix2(3) ;
   o_max_pix(4) <= i_pix1(4) when nx4 = '1' else i_pix2(4) ;
   o_max_pix(5) <= i_pix1(5) when nx4 = '1' else i_pix2(5) ;
   o_max_pix(6) <= i_pix1(6) when nx4 = '1' else i_pix2(6) ;
   o_max_pix(7) <= i_pix1(7) when nx4 = '1' else i_pix2(7) ;
   o_max_dir(0) <= i_dir2(0) when o_max_dir_2_EXMPLR27 = '1' else i_dir1(0)
    ;
   o_max_dir(1) <= '0' ;
end main_unfold_1856 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal o_add_op12_stage1_EXMPLR93: std_logic_vector (8 DOWNTO 0) ;
   
   signal custom_max_pix_output: std_logic_vector (7 DOWNTO 0) ;
   
   signal GND, i_dir2_stage1_2_EXMPLR87: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_add_op12_stage1(8) <= o_add_op12_stage1_EXMPLR93(8) ;
   o_add_op12_stage1(7) <= o_add_op12_stage1_EXMPLR93(7) ;
   o_add_op12_stage1(6) <= o_add_op12_stage1_EXMPLR93(6) ;
   o_add_op12_stage1(5) <= o_add_op12_stage1_EXMPLR93(5) ;
   o_add_op12_stage1(4) <= o_add_op12_stage1_EXMPLR93(4) ;
   o_add_op12_stage1(3) <= o_add_op12_stage1_EXMPLR93(3) ;
   o_add_op12_stage1(2) <= o_add_op12_stage1_EXMPLR93(2) ;
   o_add_op12_stage1(1) <= o_add_op12_stage1_EXMPLR93(1) ;
   o_add_op12_stage1(0) <= o_add_op12_stage1_EXMPLR93(0) ;
   o_max_dir_stage1(1) <= GND ;
   GND <= '0' ;
   u_max1 : custom_max_8 port map ( i_pix1(7)=>i_pix1_stage1(7), i_pix1(6)=>
      i_pix1_stage1(6), i_pix1(5)=>i_pix1_stage1(5), i_pix1(4)=>
      i_pix1_stage1(4), i_pix1(3)=>i_pix1_stage1(3), i_pix1(2)=>
      i_pix1_stage1(2), i_pix1(1)=>i_pix1_stage1(1), i_pix1(0)=>
      i_pix1_stage1(0), i_pix2(7)=>i_pix2_stage1(7), i_pix2(6)=>
      i_pix2_stage1(6), i_pix2(5)=>i_pix2_stage1(5), i_pix2(4)=>
      i_pix2_stage1(4), i_pix2(3)=>i_pix2_stage1(3), i_pix2(2)=>
      i_pix2_stage1(2), i_pix2(1)=>i_pix2_stage1(1), i_pix2(0)=>
      i_pix2_stage1(0), i_dir1(2)=>GND, i_dir1(1)=>DANGLING(0,0), i_dir1(0)
      =>i_dir1_stage1(0), i_dir2(2)=>i_dir2_stage1_2_EXMPLR87, i_dir2(1)=>
      GND, i_dir2(0)=>i_dir2_stage1(0), o_max_dir(2)=>o_max_dir_stage1(2), 
      o_max_dir(1)=>DANGLING(0,1), o_max_dir(0)=>o_max_dir_stage1(0), 
      o_max_pix(7)=>custom_max_pix_output(7), o_max_pix(6)=>
      custom_max_pix_output(6), o_max_pix(5)=>custom_max_pix_output(5), 
      o_max_pix(4)=>custom_max_pix_output(4), o_max_pix(3)=>
      custom_max_pix_output(3), o_max_pix(2)=>custom_max_pix_output(2), 
      o_max_pix(1)=>custom_max_pix_output(1), o_max_pix(0)=>
      custom_max_pix_output(0));
   o_add_op12_stage1_add8_0 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>
      i_add_op1_stage1(7), a(6)=>i_add_op1_stage1(6), a(5)=>
      i_add_op1_stage1(5), a(4)=>i_add_op1_stage1(4), a(3)=>
      i_add_op1_stage1(3), a(2)=>i_add_op1_stage1(2), a(1)=>
      i_add_op1_stage1(1), a(0)=>i_add_op1_stage1(0), b(7)=>
      i_add_op2_stage1(7), b(6)=>i_add_op2_stage1(6), b(5)=>
      i_add_op2_stage1(5), b(4)=>i_add_op2_stage1(4), b(3)=>
      i_add_op2_stage1(3), b(2)=>i_add_op2_stage1(2), b(1)=>
      i_add_op2_stage1(1), b(0)=>i_add_op2_stage1(0), d(7)=>
      o_add_op12_stage1_EXMPLR93(7), d(6)=>o_add_op12_stage1_EXMPLR93(6), 
      d(5)=>o_add_op12_stage1_EXMPLR93(5), d(4)=>
      o_add_op12_stage1_EXMPLR93(4), d(3)=>o_add_op12_stage1_EXMPLR93(3), 
      d(2)=>o_add_op12_stage1_EXMPLR93(2), d(1)=>
      o_add_op12_stage1_EXMPLR93(1), d(0)=>o_add_op12_stage1_EXMPLR93(0), 
      cout=>o_add_op12_stage1_EXMPLR93(8));
   o_max_add_stage1_add9_1 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, 
      a(7)=>custom_max_pix_output(7), a(6)=>custom_max_pix_output(6), a(5)=>
      custom_max_pix_output(5), a(4)=>custom_max_pix_output(4), a(3)=>
      custom_max_pix_output(3), a(2)=>custom_max_pix_output(2), a(1)=>
      custom_max_pix_output(1), a(0)=>custom_max_pix_output(0), b(8)=>
      o_add_op12_stage1_EXMPLR93(8), b(7)=>o_add_op12_stage1_EXMPLR93(7), 
      b(6)=>o_add_op12_stage1_EXMPLR93(6), b(5)=>
      o_add_op12_stage1_EXMPLR93(5), b(4)=>o_add_op12_stage1_EXMPLR93(4), 
      b(3)=>o_add_op12_stage1_EXMPLR93(3), b(2)=>
      o_add_op12_stage1_EXMPLR93(2), b(1)=>o_add_op12_stage1_EXMPLR93(1), 
      b(0)=>o_add_op12_stage1_EXMPLR93(0), d(8)=>o_max_add_stage1(8), d(7)=>
      o_max_add_stage1(7), d(6)=>o_max_add_stage1(6), d(5)=>
      o_max_add_stage1(5), d(4)=>o_max_add_stage1(4), d(3)=>
      o_max_add_stage1(3), d(2)=>o_max_add_stage1(2), d(1)=>
      o_max_add_stage1(1), d(0)=>o_max_add_stage1(0), cout=>
      o_max_add_stage1(9));
   i_dir2_stage1_2_EXMPLR87 <= '1' ;
end main_unfold_1260 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component gt_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal nx4, nx7: std_logic ;

begin
   rtlc0_copy_n24_gt_4 : gt_10u_10u port map ( a(9)=>i_pix1(9), a(8)=>
      i_pix1(8), a(7)=>i_pix1(7), a(6)=>i_pix1(6), a(5)=>i_pix1(5), a(4)=>
      i_pix1(4), a(3)=>i_pix1(3), a(2)=>i_pix1(2), a(1)=>i_pix1(1), a(0)=>
      i_pix1(0), b(9)=>i_pix2(9), b(8)=>i_pix2(8), b(7)=>i_pix2(7), b(6)=>
      i_pix2(6), b(5)=>i_pix2(5), b(4)=>i_pix2(4), b(3)=>i_pix2(3), b(2)=>
      i_pix2(2), b(1)=>i_pix2(1), b(0)=>i_pix2(0), d=>nx4);
   rtlc2_15_gt_5 : gt_10u_10u port map ( a(9)=>i_pix2(9), a(8)=>i_pix2(8), 
      a(7)=>i_pix2(7), a(6)=>i_pix2(6), a(5)=>i_pix2(5), a(4)=>i_pix2(4), 
      a(3)=>i_pix2(3), a(2)=>i_pix2(2), a(1)=>i_pix2(1), a(0)=>i_pix2(0), 
      b(9)=>i_pix1(9), b(8)=>i_pix1(8), b(7)=>i_pix1(7), b(6)=>i_pix1(6), 
      b(5)=>i_pix1(5), b(4)=>i_pix1(4), b(3)=>i_pix1(3), b(2)=>i_pix1(2), 
      b(1)=>i_pix1(1), b(0)=>i_pix1(0), d=>nx7);
   o_max_pix(0) <= i_pix1(0) when nx4 = '1' else i_pix2(0) ;
   o_max_pix(1) <= i_pix1(1) when nx4 = '1' else i_pix2(1) ;
   o_max_pix(2) <= i_pix1(2) when nx4 = '1' else i_pix2(2) ;
   o_max_pix(3) <= i_pix1(3) when nx4 = '1' else i_pix2(3) ;
   o_max_pix(4) <= i_pix1(4) when nx4 = '1' else i_pix2(4) ;
   o_max_pix(5) <= i_pix1(5) when nx4 = '1' else i_pix2(5) ;
   o_max_pix(6) <= i_pix1(6) when nx4 = '1' else i_pix2(6) ;
   o_max_pix(7) <= i_pix1(7) when nx4 = '1' else i_pix2(7) ;
   o_max_pix(8) <= i_pix1(8) when nx4 = '1' else i_pix2(8) ;
   o_max_pix(9) <= i_pix1(9) when nx4 = '1' else i_pix2(9) ;
   o_max_dir(0) <= i_dir2(0) when nx7 = '1' else i_dir1(0) ;
   o_max_dir(1) <= i_dir2(1) when nx7 = '1' else i_dir1(1) ;
   o_max_dir(2) <= i_dir2(2) when nx7 = '1' else i_dir1(2) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component add_13u_13u_13u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic_vector (12 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   GND <= '0' ;
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
   o_add_op12_stage2_add13_0 : add_13u_13u_13u_0_0 port map ( cin=>GND, 
      a(12)=>i_add_op1_stage2(12), a(11)=>i_add_op1_stage2(11), a(10)=>
      i_add_op1_stage2(10), a(9)=>i_add_op1_stage2(9), a(8)=>
      i_add_op1_stage2(8), a(7)=>i_add_op1_stage2(7), a(6)=>
      i_add_op1_stage2(6), a(5)=>i_add_op1_stage2(5), a(4)=>
      i_add_op1_stage2(4), a(3)=>i_add_op1_stage2(3), a(2)=>
      i_add_op1_stage2(2), a(1)=>i_add_op1_stage2(1), a(0)=>
      i_add_op1_stage2(0), b(12)=>i_add_op2_stage2(12), b(11)=>
      i_add_op2_stage2(11), b(10)=>i_add_op2_stage2(10), b(9)=>
      i_add_op2_stage2(9), b(8)=>i_add_op2_stage2(8), b(7)=>
      i_add_op2_stage2(7), b(6)=>i_add_op2_stage2(6), b(5)=>
      i_add_op2_stage2(5), b(4)=>i_add_op2_stage2(4), b(3)=>
      i_add_op2_stage2(3), b(2)=>i_add_op2_stage2(2), b(1)=>
      i_add_op2_stage2(1), b(0)=>i_add_op2_stage2(0), d(12)=>
      o_add_op12_stage2(12), d(11)=>o_add_op12_stage2(11), d(10)=>
      o_add_op12_stage2(10), d(9)=>o_add_op12_stage2(9), d(8)=>
      o_add_op12_stage2(8), d(7)=>o_add_op12_stage2(7), d(6)=>
      o_add_op12_stage2(6), d(5)=>o_add_op12_stage2(5), d(4)=>
      o_add_op12_stage2(4), d(3)=>o_add_op12_stage2(3), d(2)=>
      o_add_op12_stage2(2), d(1)=>o_add_op12_stage2(1), d(0)=>
      o_add_op12_stage2(0), cout=>DANGLING(0,0));
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_work_kirsch_main is 
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
end ram_new_0_work_kirsch_main ;

architecture INTERFACE of ram_new_0_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_1_work_kirsch_main is 
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
end ram_new_1_work_kirsch_main ;

architecture INTERFACE of ram_new_1_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen) ;
   mem_0 : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we
      =>nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>
      wr_data1(7), data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>
      wr_data1(4), data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>
      wr_data1(1), data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>
      rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), 
      q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs38_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs41_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs43_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs45_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs47_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs49_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs51_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs53_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component select_4_4
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component ram_new_0_work_kirsch_main
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
   component ram_new_1_work_kirsch_main
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
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_17u_17u
      port (
         a : IN std_logic_vector (16 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_valid_EXMPLR367, o_edge_EXMPLR368: std_logic ;
   
   signal o_mode_EXMPLR386: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR387: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_wren: std_logic_vector (0 TO 1) ;
   
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
   
   signal i_max1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_max2: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_add1: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_add2: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal o_add2: std_logic_vector (9 DOWNTO 0) ;
   
   signal o_dir1_2, o_dir1_0: std_logic ;
   
   signal r1: std_logic_vector (2 DOWNTO 0) ;
   
   signal r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal r3: std_logic_vector (9 DOWNTO 0) ;
   
   signal temp_max: std_logic_vector (9 DOWNTO 0) ;
   
   signal temp_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal temp_add: std_logic_vector (8 DOWNTO 0) ;
   
   signal i_max3: std_logic_vector (9 DOWNTO 0) ;
   
   signal i_dir3: std_logic_vector (2 DOWNTO 0) ;
   
   signal i_add3: std_logic_vector (12 DOWNTO 0) ;
   
   signal i_add4: std_logic_vector (12 DOWNTO 0) ;
   
   signal o_max1: std_logic_vector (9 DOWNTO 0) ;
   
   signal o_dir2: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_add3: std_logic_vector (12 DOWNTO 0) ;
   
   signal r4: std_logic_vector (9 DOWNTO 0) ;
   
   signal r5: std_logic_vector (2 DOWNTO 0) ;
   
   signal r6: std_logic_vector (12 DOWNTO 0) ;
   
   signal debug_num_5_0_EXMPLR382, sub_out_12, sub_out_11, sub_out_10, 
      sub_out_9, sub_out_8, sub_out_7: std_logic ;
   
   signal r8: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_num_5_1_EXMPLR383, not_o_row_0, not_valid_0, 
      rtlc1_P5_SS0_n21, not_valid_1, not_valid_2, rtlc5_P8_SS0_n32, 
      rtlc5_P9_SS0_n35, rtlc5n38, rtlc5n40, not_valid_5, rtlc12n82: 
   std_logic ;
   
   signal c_13n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal d_13n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc14n147, rtlc20n137, rtlc20n138, rtlc20n140, rtlc21n47, 
      rtlc21n57, rtlcn0, rtlcn1, rtlcn3, rtlcn6, rtlcn8, rtlcn9, 
      not_rtlc5n40, rtlcs0, not_o_mode_1, not_rtlcn1880, rtlcn1880: 
   std_logic ;
   
   signal mem_out_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_out_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlcn4, rtlc_300_or_44_nx0, NOT_r6_0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_valid <= o_valid_EXMPLR367 ;
   o_edge <= o_edge_EXMPLR368 ;
   o_mode(1) <= o_mode_EXMPLR386(1) ;
   o_mode(0) <= o_mode_EXMPLR386(0) ;
   o_row(7) <= o_row_EXMPLR387(7) ;
   o_row(6) <= o_row_EXMPLR387(6) ;
   o_row(5) <= o_row_EXMPLR387(5) ;
   o_row(4) <= o_row_EXMPLR387(4) ;
   o_row(3) <= o_row_EXMPLR387(3) ;
   o_row(2) <= o_row_EXMPLR387(2) ;
   o_row(1) <= o_row_EXMPLR387(1) ;
   o_row(0) <= o_row_EXMPLR387(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR382 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR382 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR382 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR382 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR382 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR382 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR382 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR382 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR382 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR383 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR383 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR383 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR382 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR382 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR383 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR382 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR382 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR382 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR383 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR383 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR383 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR383 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR383 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR382 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR383 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR383 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR382 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR382 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR383 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR383 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR383 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR382 ;
   debug_num_5_0_EXMPLR382 <= '0' ;
   debug_num_5_1_EXMPLR383 <= '1' ;
   stage1 : stage1_hardware port map ( i_dir1_stage1(2)=>
      debug_num_5_0_EXMPLR382, i_dir1_stage1(1)=>debug_num_5_0_EXMPLR382, 
      i_dir1_stage1(0)=>rtlc5n38, i_dir2_stage1(2)=>debug_num_5_1_EXMPLR383, 
      i_dir2_stage1(1)=>debug_num_5_0_EXMPLR382, i_dir2_stage1(0)=>rtlcn4, 
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
   mem_wren(0) <= not_o_row_0 AND i_valid ;
   not_o_row_0 <= NOT o_row_EXMPLR387(0) ;
   mem_wren(1) <= o_row_EXMPLR387(0) AND i_valid ;
   i_max1_select_0Bus26_0 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(0), b(2)=>a(0), b(1)=>c(0), b(0)=>e(0), d=>i_max1(0));
   i_max1_select_0Bus26_1 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(1), b(2)=>a(1), b(1)=>c(1), b(0)=>e(1), d=>i_max1(1));
   i_max1_select_0Bus26_2 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(2), b(2)=>a(2), b(1)=>c(2), b(0)=>e(2), d=>i_max1(2));
   i_max1_select_0Bus26_3 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(3), b(2)=>a(3), b(1)=>c(3), b(0)=>e(3), d=>i_max1(3));
   i_max1_select_0Bus26_4 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(4), b(2)=>a(4), b(1)=>c(4), b(0)=>e(4), d=>i_max1(4));
   i_max1_select_0Bus26_5 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(5), b(2)=>a(5), b(1)=>c(5), b(0)=>e(5), d=>i_max1(5));
   i_max1_select_0Bus26_6 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(6), b(2)=>a(6), b(1)=>c(6), b(0)=>e(6), d=>i_max1(6));
   i_max1_select_0Bus26_7 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>g(7), b(2)=>a(7), b(1)=>c(7), b(0)=>e(7), d=>i_max1(7));
   not_valid_2 <= NOT valid(2) ;
   not_valid_1 <= NOT valid(1) ;
   not_valid_0 <= NOT valid(0) ;
   rtlc1_P5_SS0_n21 <= not_valid_0 AND valid(1) ;
   i_max2_select_8Bus27_0 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(0), b(2)=>d(0), b(1)=>f(0), b(0)=>h(0), d=>i_max2(0));
   i_max2_select_8Bus27_1 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(1), b(2)=>d(1), b(1)=>f(1), b(0)=>h(1), d=>i_max2(1));
   i_max2_select_8Bus27_2 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(2), b(2)=>d(2), b(1)=>f(2), b(0)=>h(2), d=>i_max2(2));
   i_max2_select_8Bus27_3 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(3), b(2)=>d(3), b(1)=>f(3), b(0)=>h(3), d=>i_max2(3));
   i_max2_select_8Bus27_4 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(4), b(2)=>d(4), b(1)=>f(4), b(0)=>h(4), d=>i_max2(4));
   i_max2_select_8Bus27_5 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(5), b(2)=>d(5), b(1)=>f(5), b(0)=>h(5), d=>i_max2(5));
   i_max2_select_8Bus27_6 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(6), b(2)=>d(6), b(1)=>f(6), b(0)=>h(6), d=>i_max2(6));
   i_max2_select_8Bus27_7 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>b(7), b(2)=>d(7), b(1)=>f(7), b(0)=>h(7), d=>i_max2(7));
   i_add1_select_16Bus28_0 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(0), b(2)=>b(0), b(1)=>d(0), b(0)=>f(0), d=>i_add1(0));
   i_add1_select_16Bus28_1 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(1), b(2)=>b(1), b(1)=>d(1), b(0)=>f(1), d=>i_add1(1));
   i_add1_select_16Bus28_2 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(2), b(2)=>b(2), b(1)=>d(2), b(0)=>f(2), d=>i_add1(2));
   i_add1_select_16Bus28_3 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(3), b(2)=>b(3), b(1)=>d(3), b(0)=>f(3), d=>i_add1(3));
   i_add1_select_16Bus28_4 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(4), b(2)=>b(4), b(1)=>d(4), b(0)=>f(4), d=>i_add1(4));
   i_add1_select_16Bus28_5 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(5), b(2)=>b(5), b(1)=>d(5), b(0)=>f(5), d=>i_add1(5));
   i_add1_select_16Bus28_6 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(6), b(2)=>b(6), b(1)=>d(6), b(0)=>f(6), d=>i_add1(6));
   i_add1_select_16Bus28_7 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>a(7), b(2)=>b(7), b(1)=>d(7), b(0)=>f(7), d=>i_add1(7));
   i_add2_select_24Bus29_0 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(0), b(2)=>c(0), b(1)=>e(0), b(0)=>g(0), d=>i_add2(0));
   i_add2_select_24Bus29_1 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(1), b(2)=>c(1), b(1)=>e(1), b(0)=>g(1), d=>i_add2(1));
   i_add2_select_24Bus29_2 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(2), b(2)=>c(2), b(1)=>e(2), b(0)=>g(2), d=>i_add2(2));
   i_add2_select_24Bus29_3 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(3), b(2)=>c(3), b(1)=>e(3), b(0)=>g(3), d=>i_add2(3));
   i_add2_select_24Bus29_4 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(4), b(2)=>c(4), b(1)=>e(4), b(0)=>g(4), d=>i_add2(4));
   i_add2_select_24Bus29_5 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(5), b(2)=>c(5), b(1)=>e(5), b(0)=>g(5), d=>i_add2(5));
   i_add2_select_24Bus29_6 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(6), b(2)=>c(6), b(1)=>e(6), b(0)=>g(6), d=>i_add2(6));
   i_add2_select_24Bus29_7 : select_4_4 port map ( a(3)=>valid(0), a(2)=>
      rtlc1_P5_SS0_n21, a(1)=>rtlc5_P8_SS0_n32, a(0)=>rtlc5_P9_SS0_n35, b(3)
      =>h(7), b(2)=>c(7), b(1)=>e(7), b(0)=>g(7), d=>i_add2(7));
   rtlc20n137 <= sub_out_7 AND sub_out_8 ;
   rtlc20n140 <= rtlc20n138 AND rtlcn1880 ;
   rtlc21n47 <= valid(6) AND rtlcn0 ;
   rtlc21n57 <= rtlc21n47 AND rtlcn1 ;
   rtlcn6 <= not_valid_1 AND valid(2) ;
   rtlc5n40 <= valid(0) OR rtlcn6 ;
   rtlcn8 <= not_valid_1 AND not_valid_2 ;
   rtlc5n38 <= valid(0) OR rtlcn8 ;
   rtlc14n147 <= i_reset OR rtlcn9 ;
   not_rtlc5n40 <= NOT rtlc5n40 ;
   i_dir3(0) <= temp_dir(0) when valid(2) = '1' else r5(0) ;
   i_dir3(1) <= temp_dir(1) when valid(2) = '1' else r5(1) ;
   i_dir3(2) <= temp_dir(2) when valid(2) = '1' else r5(2) ;
   i_max3(0) <= temp_max(0) when valid(2) = '1' else r4(0) ;
   i_max3(1) <= temp_max(1) when valid(2) = '1' else r4(1) ;
   i_max3(2) <= temp_max(2) when valid(2) = '1' else r4(2) ;
   i_max3(3) <= temp_max(3) when valid(2) = '1' else r4(3) ;
   i_max3(4) <= temp_max(4) when valid(2) = '1' else r4(4) ;
   i_max3(5) <= temp_max(5) when valid(2) = '1' else r4(5) ;
   i_max3(6) <= temp_max(6) when valid(2) = '1' else r4(6) ;
   i_max3(7) <= temp_max(7) when valid(2) = '1' else r4(7) ;
   i_max3(8) <= temp_max(8) when valid(2) = '1' else r4(8) ;
   i_max3(9) <= temp_max(9) when valid(2) = '1' else r4(9) ;
   i_add3(1) <= r6(0) when valid(5) = '1' else r2(1) ;
   i_add3(2) <= r6(1) when valid(5) = '1' else r2(2) ;
   i_add3(3) <= r6(2) when valid(5) = '1' else r2(3) ;
   i_add3(4) <= r6(3) when valid(5) = '1' else r2(4) ;
   i_add3(5) <= r6(4) when valid(5) = '1' else r2(5) ;
   i_add3(6) <= r6(5) when valid(5) = '1' else r2(6) ;
   i_add3(7) <= r6(6) when valid(5) = '1' else r2(7) ;
   i_add3(8) <= r6(7) when valid(5) = '1' else r2(8) ;
   i_add4(0) <= temp_add(0) when valid(2) = '1' else r6(0) ;
   i_add4(1) <= temp_add(1) when valid(2) = '1' else r6(1) ;
   i_add4(2) <= temp_add(2) when valid(2) = '1' else r6(2) ;
   i_add4(3) <= temp_add(3) when valid(2) = '1' else r6(3) ;
   i_add4(4) <= temp_add(4) when valid(2) = '1' else r6(4) ;
   i_add4(5) <= temp_add(5) when valid(2) = '1' else r6(5) ;
   i_add4(6) <= temp_add(6) when valid(2) = '1' else r6(6) ;
   i_add4(7) <= temp_add(7) when valid(2) = '1' else r6(7) ;
   i_add4(8) <= temp_add(8) when valid(2) = '1' else r6(8) ;
   c_13n1ss1(0) <= mem_out_1(0) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(0) ;
   c_13n1ss1(1) <= mem_out_1(1) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(1) ;
   c_13n1ss1(2) <= mem_out_1(2) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(2) ;
   c_13n1ss1(3) <= mem_out_1(3) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(3) ;
   c_13n1ss1(4) <= mem_out_1(4) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(4) ;
   c_13n1ss1(5) <= mem_out_1(5) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(5) ;
   c_13n1ss1(6) <= mem_out_1(6) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(6) ;
   c_13n1ss1(7) <= mem_out_1(7) when o_row_EXMPLR387(0) = '1' else 
   mem_out_0(7) ;
   d_13n1ss1(0) <= mem_out_0(0) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(0) ;
   d_13n1ss1(1) <= mem_out_0(1) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(1) ;
   d_13n1ss1(2) <= mem_out_0(2) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(2) ;
   d_13n1ss1(3) <= mem_out_0(3) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(3) ;
   d_13n1ss1(4) <= mem_out_0(4) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(4) ;
   d_13n1ss1(5) <= mem_out_0(5) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(5) ;
   d_13n1ss1(6) <= mem_out_0(6) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(6) ;
   d_13n1ss1(7) <= mem_out_0(7) when o_row_EXMPLR387(0) = '1' else 
   mem_out_1(7) ;
   not_valid_5 <= NOT valid(5) ;
   i_add3(0) <= r2(0) AND not_valid_5 ;
   i_add3(9) <= r6(8) AND valid(5) ;
   i_add3(10) <= r6(9) AND valid(5) ;
   i_add3(11) <= r6(10) AND valid(5) ;
   i_add3(12) <= r6(11) AND valid(5) ;
   i_add4(9) <= r6(9) AND not_valid_2 ;
   i_add4(10) <= r6(10) AND not_valid_2 ;
   i_add4(11) <= r6(11) AND not_valid_2 ;
   i_add4(12) <= r6(12) AND not_valid_2 ;
   o_dir(0) <= r8(0) AND o_edge_EXMPLR368 ;
   o_dir(1) <= r8(1) AND o_edge_EXMPLR368 ;
   o_dir(2) <= r8(2) AND o_edge_EXMPLR368 ;
   not_o_mode_1 <= NOT o_mode_EXMPLR386(1) ;
   rtlcs0 <= not_o_mode_1 AND o_mode_EXMPLR386(0) ;
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch
       port map ( clock=>i_clock, q(7)=>o_row_EXMPLR387(7), q(6)=>
      o_row_EXMPLR387(6), q(5)=>o_row_EXMPLR387(5), q(4)=>o_row_EXMPLR387(4), 
      q(3)=>o_row_EXMPLR387(3), q(2)=>o_row_EXMPLR387(2), q(1)=>
      o_row_EXMPLR387(1), q(0)=>o_row_EXMPLR387(0), clk_en=>
      debug_num_5_1_EXMPLR383, aclear=>debug_num_5_0_EXMPLR382, sload=>
      debug_num_5_0_EXMPLR382, data(7)=>DANGLING(0,1), data(6)=>
      DANGLING(0,2), data(5)=>DANGLING(0,3), data(4)=>DANGLING(0,4), data(3)
      =>DANGLING(0,5), data(2)=>DANGLING(0,6), data(1)=>DANGLING(0,7), 
      data(0)=>DANGLING(0,8), aset=>debug_num_5_0_EXMPLR382, sclear=>i_reset, 
      updn=>debug_num_5_1_EXMPLR383, cnt_en=>rtlcn9);
   modgen_counter_column : counter_up_cnt_en_sclear_clock_0_8_cx1_kirsch
       port map ( clock=>i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>
      column(5), q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>
      column(1), q(0)=>column(0), clk_en=>debug_num_5_1_EXMPLR383, aclear=>
      debug_num_5_0_EXMPLR382, sload=>debug_num_5_0_EXMPLR382, data(7)=>
      DANGLING(0,9), data(6)=>DANGLING(0,10), data(5)=>DANGLING(0,11), 
      data(4)=>DANGLING(0,12), data(3)=>DANGLING(0,13), data(2)=>
      DANGLING(0,14), data(1)=>DANGLING(0,15), data(0)=>DANGLING(0,16), aset
      =>debug_num_5_0_EXMPLR382, sclear=>rtlc14n147, updn=>
      debug_num_5_1_EXMPLR383, cnt_en=>valid(0));
   not_rtlcn1880 <= NOT rtlcn1880 ;
   DFFRSE (debug_num_5_1_EXMPLR383,debug_num_5_0_EXMPLR382,i_reset,rtlcn3,
   i_clock,o_mode_EXMPLR386(1)) ;
   DFFRSE (i_valid,i_reset,debug_num_5_0_EXMPLR382,rtlcn3,i_clock,
   o_mode_EXMPLR386(0)) ;
   DFFRSE (i_pixel(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(7))
    ;
   DFFRSE (i_pixel(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(6))
    ;
   DFFRSE (i_pixel(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(5))
    ;
   DFFRSE (i_pixel(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(4))
    ;
   DFFRSE (i_pixel(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(3))
    ;
   DFFRSE (i_pixel(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(2))
    ;
   DFFRSE (i_pixel(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(1))
    ;
   DFFRSE (i_pixel(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,e(0))
    ;
   DFFRSE (e(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(7)) ;
   DFFRSE (e(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(6)) ;
   DFFRSE (e(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(5)) ;
   DFFRSE (e(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(4)) ;
   DFFRSE (e(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(3)) ;
   DFFRSE (e(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(2)) ;
   DFFRSE (e(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(1)) ;
   DFFRSE (e(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,f(0)) ;
   DFFRSE (f(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(7)) ;
   DFFRSE (f(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(6)) ;
   DFFRSE (f(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(5)) ;
   DFFRSE (f(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(4)) ;
   DFFRSE (f(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(3)) ;
   DFFRSE (f(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(2)) ;
   DFFRSE (f(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(1)) ;
   DFFRSE (f(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,g(0)) ;
   DFFRSE (d_13n1ss1(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(7)
   ) ;
   DFFRSE (d_13n1ss1(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(6)
   ) ;
   DFFRSE (d_13n1ss1(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(5)
   ) ;
   DFFRSE (d_13n1ss1(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(4)
   ) ;
   DFFRSE (d_13n1ss1(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(3)
   ) ;
   DFFRSE (d_13n1ss1(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(2)
   ) ;
   DFFRSE (d_13n1ss1(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(1)
   ) ;
   DFFRSE (d_13n1ss1(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,d(0)
   ) ;
   DFFRSE (d(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(7)) ;
   DFFRSE (d(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(6)) ;
   DFFRSE (d(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(5)) ;
   DFFRSE (d(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(4)) ;
   DFFRSE (d(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(3)) ;
   DFFRSE (d(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(2)) ;
   DFFRSE (d(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(1)) ;
   DFFRSE (d(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,i(0)) ;
   DFFRSE (i(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(7)) ;
   DFFRSE (i(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(6)) ;
   DFFRSE (i(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(5)) ;
   DFFRSE (i(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(4)) ;
   DFFRSE (i(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(3)) ;
   DFFRSE (i(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(2)) ;
   DFFRSE (i(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(1)) ;
   DFFRSE (i(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,h(0)) ;
   DFFRSE (c_13n1ss1(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(7)
   ) ;
   DFFRSE (c_13n1ss1(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(6)
   ) ;
   DFFRSE (c_13n1ss1(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(5)
   ) ;
   DFFRSE (c_13n1ss1(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(4)
   ) ;
   DFFRSE (c_13n1ss1(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(3)
   ) ;
   DFFRSE (c_13n1ss1(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(2)
   ) ;
   DFFRSE (c_13n1ss1(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(1)
   ) ;
   DFFRSE (c_13n1ss1(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,c(0)
   ) ;
   DFFRSE (c(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(7)) ;
   DFFRSE (c(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(6)) ;
   DFFRSE (c(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(5)) ;
   DFFRSE (c(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(4)) ;
   DFFRSE (c(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(3)) ;
   DFFRSE (c(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(2)) ;
   DFFRSE (c(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(1)) ;
   DFFRSE (c(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,b(0)) ;
   DFFRSE (b(7),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(7)) ;
   DFFRSE (b(6),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(6)) ;
   DFFRSE (b(5),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(5)) ;
   DFFRSE (b(4),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(4)) ;
   DFFRSE (b(3),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(3)) ;
   DFFRSE (b(2),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(2)) ;
   DFFRSE (b(1),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(1)) ;
   DFFRSE (b(0),debug_num_5_0_EXMPLR382,i_reset,i_valid,i_clock,a(0)) ;
   DFFPCE (row_valid1(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(7)) ;
   DFFPCE (row_valid1(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(6)) ;
   DFFPCE (row_valid1(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(5)) ;
   DFFPCE (row_valid1(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(4)) ;
   DFFPCE (row_valid1(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(3)) ;
   DFFPCE (row_valid1(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(2)) ;
   DFFPCE (row_valid1(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(1)) ;
   DFFPCE (row_valid1(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,row_valid2(0)) ;
   DFFPCE (column_valid1(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(7)) ;
   DFFPCE (column_valid1(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(6)) ;
   DFFPCE (column_valid1(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(5)) ;
   DFFPCE (column_valid1(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(4)) ;
   DFFPCE (column_valid1(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(3)) ;
   DFFPCE (column_valid1(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(2)) ;
   DFFPCE (column_valid1(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(1)) ;
   DFFPCE (column_valid1(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(4),i_clock,column_valid2(0)) ;
   DFFPCE (o_row_EXMPLR387(7),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(7)) ;
   DFFPCE (o_row_EXMPLR387(6),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(6)) ;
   DFFPCE (o_row_EXMPLR387(5),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(5)) ;
   DFFPCE (o_row_EXMPLR387(4),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(4)) ;
   DFFPCE (o_row_EXMPLR387(3),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(3)) ;
   DFFPCE (o_row_EXMPLR387(2),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(2)) ;
   DFFPCE (o_row_EXMPLR387(1),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(1)) ;
   DFFPCE (o_row_EXMPLR387(0),debug_num_5_0_EXMPLR382,
   debug_num_5_0_EXMPLR382,valid(0),i_clock,row_valid1(0)) ;
   DFFPCE (column(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(7)) ;
   DFFPCE (column(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(6)) ;
   DFFPCE (column(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(5)) ;
   DFFPCE (column(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(4)) ;
   DFFPCE (column(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(3)) ;
   DFFPCE (column(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(2)) ;
   DFFPCE (column(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(1)) ;
   DFFPCE (column(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(0),i_clock,column_valid1(0)) ;
   DFFRSE (valid(5),debug_num_5_0_EXMPLR382,i_reset,debug_num_5_1_EXMPLR383,
   i_clock,valid(6)) ;
   DFFRSE (valid(4),debug_num_5_0_EXMPLR382,i_reset,debug_num_5_1_EXMPLR383,
   i_clock,valid(5)) ;
   DFFRSE (valid(3),debug_num_5_0_EXMPLR382,i_reset,debug_num_5_1_EXMPLR383,
   i_clock,valid(4)) ;
   DFFRSE (valid(2),debug_num_5_0_EXMPLR382,i_reset,debug_num_5_1_EXMPLR383,
   i_clock,valid(3)) ;
   DFFRSE (valid(1),debug_num_5_0_EXMPLR382,i_reset,debug_num_5_1_EXMPLR383,
   i_clock,valid(2)) ;
   DFFRSE (valid(0),debug_num_5_0_EXMPLR382,i_reset,debug_num_5_1_EXMPLR383,
   i_clock,valid(1)) ;
   DFFRSE (i_valid,debug_num_5_0_EXMPLR382,i_reset,debug_num_5_1_EXMPLR383,
   i_clock,valid(0)) ;
   DFFPC (o_add2(9),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(9)) ;
   DFFPC (o_add2(8),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(8)) ;
   DFFPC (o_add2(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(7)) ;
   DFFPC (o_add2(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(6)) ;
   DFFPC (o_add2(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(5)) ;
   DFFPC (o_add2(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(4)) ;
   DFFPC (o_add2(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(3)) ;
   DFFPC (o_add2(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(2)) ;
   DFFPC (o_add2(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(1)) ;
   DFFPC (o_add2(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r3(0)) ;
   DFFPC (o_add1(8),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(8)) ;
   DFFPC (o_add1(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(7)) ;
   DFFPC (o_add1(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(6)) ;
   DFFPC (o_add1(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(5)) ;
   DFFPC (o_add1(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(4)) ;
   DFFPC (o_add1(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(3)) ;
   DFFPC (o_add1(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(2)) ;
   DFFPC (o_add1(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(1)) ;
   DFFPC (o_add1(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r2(0)) ;
   DFFPC (o_dir1_2,debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r1(2)) ;
   DFFPC (not_rtlc5n40,debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   i_clock,r1(1)) ;
   DFFPC (o_dir1_0,debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r1(0)) ;
   DFFPCE (r2(8),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(8)) ;
   DFFPCE (r2(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(7)) ;
   DFFPCE (r2(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(6)) ;
   DFFPCE (r2(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(5)) ;
   DFFPCE (r2(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(4)) ;
   DFFPCE (r2(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(3)) ;
   DFFPCE (r2(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(2)) ;
   DFFPCE (r2(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(1)) ;
   DFFPCE (r2(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_add(0)) ;
   DFFPCE (r1(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_dir(2)) ;
   DFFPCE (r1(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_dir(1)) ;
   DFFPCE (r1(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_dir(0)) ;
   DFFPCE (r3(9),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(9)) ;
   DFFPCE (r3(8),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(8)) ;
   DFFPCE (r3(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(7)) ;
   DFFPCE (r3(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(6)) ;
   DFFPCE (r3(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(5)) ;
   DFFPCE (r3(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(4)) ;
   DFFPCE (r3(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(3)) ;
   DFFPCE (r3(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(2)) ;
   DFFPCE (r3(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(1)) ;
   DFFPCE (r3(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(1),
   i_clock,temp_max(0)) ;
   DFFPC (o_add3(12),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(12)) ;
   DFFPC (o_add3(11),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(11)) ;
   DFFPC (o_add3(10),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(10)) ;
   DFFPC (o_add3(9),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(9)) ;
   DFFPC (o_add3(8),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(8)) ;
   DFFPC (o_add3(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(7)) ;
   DFFPC (o_add3(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(6)) ;
   DFFPC (o_add3(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(5)) ;
   DFFPC (o_add3(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(4)) ;
   DFFPC (o_add3(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(3)) ;
   DFFPC (o_add3(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(2)) ;
   DFFPC (o_add3(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(1)) ;
   DFFPC (o_add3(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   r6(0)) ;
   DFFPCE (o_dir2(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r5(2)) ;
   DFFPCE (o_dir2(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r5(1)) ;
   DFFPCE (o_dir2(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r5(0)) ;
   DFFPCE (o_max1(9),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(9)) ;
   DFFPCE (o_max1(8),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(8)) ;
   DFFPCE (o_max1(7),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(7)) ;
   DFFPCE (o_max1(6),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(6)) ;
   DFFPCE (o_max1(5),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(5)) ;
   DFFPCE (o_max1(4),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(4)) ;
   DFFPCE (o_max1(3),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(3)) ;
   DFFPCE (o_max1(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(2)) ;
   DFFPCE (o_max1(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(1)) ;
   DFFPCE (o_max1(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   not_valid_5,i_clock,r4(0)) ;
   DFFPCE (rtlc20n140,debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,
   valid(6),i_clock,o_edge_EXMPLR368) ;
   DFFPCE (r5(2),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(6),
   i_clock,r8(2)) ;
   DFFPCE (r5(1),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(6),
   i_clock,r8(1)) ;
   DFFPCE (r5(0),debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,valid(6),
   i_clock,r8(0)) ;
   DFFPC (rtlc21n57,debug_num_5_0_EXMPLR382,debug_num_5_0_EXMPLR382,i_clock,
   o_valid_EXMPLR367) ;
   rtlcn4 <= not_valid_0 AND not_valid_1 ;
   rtlc5_P9_SS0_n35 <= rtlcn4 AND not_valid_2 ;
   rtlc5_P8_SS0_n32 <= rtlcn4 AND valid(2) ;
   rtlc_300_or_44_nx0 <= i_valid OR rtlc12n82 ;
   rtlcn3 <= rtlc_300_or_44_nx0 OR rtlcs0 ;
   NOT_r6_0 <= NOT r6(0) ;
   sub_out_sub13_0 : sub_12u_12u_12u_0 port map ( cin=>NOT_r6_0, a(11)=>
      r4(9), a(10)=>r4(8), a(9)=>r4(7), a(8)=>r4(6), a(7)=>r4(5), a(6)=>
      r4(4), a(5)=>r4(3), a(4)=>r4(2), a(3)=>r4(1), a(2)=>r4(0), a(1)=>
      debug_num_5_0_EXMPLR382, a(0)=>debug_num_5_0_EXMPLR382, b(11)=>r6(12), 
      b(10)=>r6(11), b(9)=>r6(10), b(8)=>r6(9), b(7)=>r6(8), b(6)=>r6(7), 
      b(5)=>r6(6), b(4)=>r6(5), b(3)=>r6(4), b(2)=>r6(3), b(1)=>r6(2), b(0)
      =>r6(1), d(11)=>sub_out_12, d(10)=>sub_out_11, d(9)=>sub_out_10, d(8)
      =>sub_out_9, d(7)=>sub_out_8, d(6)=>sub_out_7, d(5)=>DANGLING(0,17), 
      d(4)=>DANGLING(0,18), d(3)=>DANGLING(0,19), d(2)=>DANGLING(0,20), d(1)
      =>DANGLING(0,21), d(0)=>DANGLING(0,22), cout=>rtlcn1880);
   mem : ram_new_0_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      mem_out_0(7), rd_data1(6)=>mem_out_0(6), rd_data1(5)=>mem_out_0(5), 
      rd_data1(4)=>mem_out_0(4), rd_data1(3)=>mem_out_0(3), rd_data1(2)=>
      mem_out_0(2), rd_data1(1)=>mem_out_0(1), rd_data1(0)=>mem_out_0(0), 
      addr1(7)=>column(7), addr1(6)=>column(6), addr1(5)=>column(5), 
      addr1(4)=>column(4), addr1(3)=>column(3), addr1(2)=>column(2), 
      addr1(1)=>column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>
      i_clock, wr_ena1=>mem_wren(0), rd_ena1=>debug_num_5_1_EXMPLR383, ena1
      =>debug_num_5_1_EXMPLR383, rst1=>debug_num_5_0_EXMPLR382, regce1=>
      debug_num_5_1_EXMPLR383, regrst1=>debug_num_5_0_EXMPLR382);
   mem_0 : ram_new_1_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      mem_out_1(7), rd_data1(6)=>mem_out_1(6), rd_data1(5)=>mem_out_1(5), 
      rd_data1(4)=>mem_out_1(4), rd_data1(3)=>mem_out_1(3), rd_data1(2)=>
      mem_out_1(2), rd_data1(1)=>mem_out_1(1), rd_data1(0)=>mem_out_1(0), 
      addr1(7)=>column(7), addr1(6)=>column(6), addr1(5)=>column(5), 
      addr1(4)=>column(4), addr1(3)=>column(3), addr1(2)=>column(2), 
      addr1(1)=>column(1), addr1(0)=>column(0), wr_clk1=>i_clock, rd_clk1=>
      i_clock, wr_ena1=>mem_wren(1), rd_ena1=>debug_num_5_1_EXMPLR383, ena1
      =>debug_num_5_1_EXMPLR383, rst1=>debug_num_5_0_EXMPLR382, regce1=>
      debug_num_5_1_EXMPLR383, regrst1=>debug_num_5_0_EXMPLR382);
   modgen_or_0 : or_6u_6u port map ( a(5)=>sub_out_9, a(4)=>sub_out_10, a(3)
      =>sub_out_11, a(2)=>sub_out_12, a(1)=>not_rtlcn1880, a(0)=>rtlc20n137, 
      d=>rtlc20n138);
   modgen_or_1 : or_7u_7u port map ( a(6)=>row_valid2(2), a(5)=>
      row_valid2(3), a(4)=>row_valid2(4), a(3)=>row_valid2(5), a(2)=>
      row_valid2(6), a(1)=>row_valid2(7), a(0)=>row_valid2(1), d=>rtlcn0);
   modgen_or_2 : or_7u_7u port map ( a(6)=>column_valid2(2), a(5)=>
      column_valid2(3), a(4)=>column_valid2(4), a(3)=>column_valid2(5), a(2)
      =>column_valid2(6), a(1)=>column_valid2(7), a(0)=>column_valid2(1), d
      =>rtlcn1);
   modgen_and_3 : and_9u_9u port map ( a(8)=>column(7), a(7)=>column(6), 
      a(6)=>column(5), a(5)=>column(4), a(4)=>column(3), a(3)=>column(2), 
      a(2)=>column(1), a(1)=>column(0), a(0)=>valid(0), d=>rtlcn9);
   modgen_and_5 : and_17u_17u port map ( a(16)=>row_valid2(7), a(15)=>
      row_valid2(6), a(14)=>row_valid2(5), a(13)=>row_valid2(4), a(12)=>
      row_valid2(3), a(11)=>row_valid2(2), a(10)=>row_valid2(1), a(9)=>
      row_valid2(0), a(8)=>column_valid2(7), a(7)=>column_valid2(6), a(6)=>
      column_valid2(5), a(5)=>column_valid2(4), a(4)=>column_valid2(3), a(3)
      =>column_valid2(2), a(2)=>column_valid2(1), a(1)=>column_valid2(0), 
      a(0)=>o_valid_EXMPLR367, d=>rtlc12n82);
end main ;

