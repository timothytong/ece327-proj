
-- 
-- Definition of  top_kirsch
-- 
--      Wed Mar 23 21:05:41 2016
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

entity select_3_3 is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_3_3 ;

architecture BEHAVIORAL of select_3_3 is 
   component sim_select
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_select
      generic map (size => 3) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_3u_3u is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_3u_3u ;

architecture BEHAVIORAL of mux_3u_3u is 
   component sim_mux
      generic (size : integer := 3;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_mux
      generic map (size => 3,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity mux_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end mux_4u_4u ;

architecture BEHAVIORAL of mux_4u_4u is 
   component sim_mux
      generic (size : integer := 4;
         sizead : integer := 2) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_mux
      generic map (size => 4,
         sizead => 2) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_4u_4u ;

architecture BEHAVIORAL of and_4u_4u is 
   component sim_and
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_and
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_11u_11u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_11u_11u_0_0 ;

architecture BEHAVIORAL of inc_11u_11u_0_0 is 
   component sim_inc
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix27 : sim_inc
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_12u_12u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_12u_12u_0_0 ;

architecture BEHAVIORAL of inc_12u_12u_0_0 is 
   component sim_inc
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_inc
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity dec_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end dec_4u_4u_0_0 ;

architecture BEHAVIORAL of dec_4u_4u_0_0 is 
   component sim_dec
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_dec
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_4u_4u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_4u_4u_0_0 ;

architecture BEHAVIORAL of inc_4u_4u_0_0 is 
   component sim_inc
      generic (size : integer := 4) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_inc
      generic map (size => 4) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_8u_8u ;

architecture BEHAVIORAL of eq_8u_8u is 
   component sim_eq
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_eq
      generic map (size => 8) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity eq_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end eq_9u_9u ;

architecture BEHAVIORAL of eq_9u_9u is 
   component sim_eq
      generic (size : integer := 9) ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix15 : sim_eq
      generic map (size => 9) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_16u_16u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_16u_16u_0_0 ;

architecture BEHAVIORAL of inc_16u_16u_0_0 is 
   component sim_inc
      generic (size : integer := 16) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix37 : sim_inc
      generic map (size => 16) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_16u_16u is 
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_16u_16u ;

architecture BEHAVIORAL of and_16u_16u is 
   component sim_and
      generic (size : integer := 16) ;
      
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_and
      generic map (size => 16) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

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
library modgen_sim; 
use  modgen_sim.all; 

entity or_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_4u_4u ;

architecture BEHAVIORAL of or_4u_4u is 
   component sim_or
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_or
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_5u_5u is 
   port (
      a : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_5u_5u ;

architecture BEHAVIORAL of or_5u_5u is 
   component sim_or
      generic (size : integer := 5) ;
      
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix10 : sim_or
      generic map (size => 5) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_3u_3u is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_3u_3u ;

architecture BEHAVIORAL of or_3u_3u is 
   component sim_or
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix8 : sim_or
      generic map (size => 3) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11_cx0_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_11_cx0_UARTS ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11_cx0_UARTS is 
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
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, sclear_and_0_dup_136, sclear_and_1_dup_137, 
      sclear_and_2_dup_138, sclear_and_3_dup_139, sclear_and_4_dup_140, 
      sclear_and_5_dup_141, sclear_and_6_dup_142, sclear_and_7_dup_143, 
      sclear_and_8_dup_144, sclear_and_9_dup_145, sclear_and_10_dup_146, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(10) <= nx47 ;
   q(9) <= nx46 ;
   q(8) <= nx45 ;
   q(7) <= nx44 ;
   q(6) <= nx43 ;
   q(5) <= nx42 ;
   q(4) <= nx41 ;
   q(3) <= nx40 ;
   q(2) <= nx39 ;
   q(1) <= nx38 ;
   q(0) <= nx37 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_10_dup_146,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_9_dup_145,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_8_dup_144,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_7_dup_143,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_6_dup_142,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_5_dup_141,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_4_dup_140,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_3_dup_139,GND,aclear,clock,nx40) ;
   DFFPC (sclear_and_2_dup_138,GND,aclear,clock,nx39) ;
   DFFPC (sclear_and_1_dup_137,GND,aclear,clock,nx38) ;
   DFFPC (sclear_and_0_dup_136,GND,aclear,clock,nx37) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx47, a(9)=>nx46, a(8)
      =>nx45, a(7)=>nx44, a(6)=>nx43, a(5)=>nx42, a(4)=>nx41, a(3)=>nx40, 
      a(2)=>nx39, a(1)=>nx38, a(0)=>nx37, d(10)=>inc_d_10, d(9)=>inc_d_9, 
      d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>
      inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, 
      cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_136 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_137 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_138 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_139 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_140 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_141 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_142 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_143 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_144 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_145 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_146 <= inc_d_10 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12_cx1_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_12_cx1_UARTS ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12_cx1_UARTS is 
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
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, 
      nx49, nx50, nx51, sclear_and_0_dup_147, sclear_and_1_dup_148, 
      sclear_and_2_dup_149, sclear_and_3_dup_150, sclear_and_4_dup_151, 
      sclear_and_5_dup_152, sclear_and_6_dup_153, sclear_and_7_dup_154, 
      sclear_and_8_dup_155, sclear_and_9_dup_156, sclear_and_10_dup_157, 
      sclear_and_11_dup_158, inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, 
      inc_d_5, inc_d_6, inc_d_7, inc_d_8, inc_d_9, inc_d_10, inc_d_11, 
      NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(11) <= nx51 ;
   q(10) <= nx50 ;
   q(9) <= nx49 ;
   q(8) <= nx48 ;
   q(7) <= nx47 ;
   q(6) <= nx46 ;
   q(5) <= nx45 ;
   q(4) <= nx44 ;
   q(3) <= nx43 ;
   q(2) <= nx42 ;
   q(1) <= nx41 ;
   q(0) <= nx40 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPC (sclear_and_11_dup_158,GND,aclear,clock,nx51) ;
   DFFPC (sclear_and_10_dup_157,GND,aclear,clock,nx50) ;
   DFFPC (sclear_and_9_dup_156,GND,aclear,clock,nx49) ;
   DFFPC (sclear_and_8_dup_155,GND,aclear,clock,nx48) ;
   DFFPC (sclear_and_7_dup_154,GND,aclear,clock,nx47) ;
   DFFPC (sclear_and_6_dup_153,GND,aclear,clock,nx46) ;
   DFFPC (sclear_and_5_dup_152,GND,aclear,clock,nx45) ;
   DFFPC (sclear_and_4_dup_151,GND,aclear,clock,nx44) ;
   DFFPC (sclear_and_3_dup_150,GND,aclear,clock,nx43) ;
   DFFPC (sclear_and_2_dup_149,GND,aclear,clock,nx42) ;
   DFFPC (sclear_and_1_dup_148,GND,aclear,clock,nx41) ;
   DFFPC (sclear_and_0_dup_147,GND,aclear,clock,nx40) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx51, a(10)=>nx50, a(9)
      =>nx49, a(8)=>nx48, a(7)=>nx47, a(6)=>nx46, a(5)=>nx45, a(4)=>nx44, 
      a(3)=>nx43, a(2)=>nx42, a(1)=>nx41, a(0)=>nx40, d(11)=>inc_d_11, d(10)
      =>inc_d_10, d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, 
      d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>
      inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_147 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_148 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_149 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_150 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_151 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_152 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_153 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_154 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_155 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_156 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_157 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_158 <= inc_d_11 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS ;

architecture INTERFACE of 
   counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS is 
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
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx17, nx18, nx19, nx20, nx22, sload_mux_0_dup_53, 
      sload_mux_1_dup_54, sload_mux_2_dup_55, sload_mux_3_dup_56, dec_d_0, 
      dec_d_1, dec_d_2, dec_d_3: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sload ;
   nx22 <= clk_en AND nx20 ;
   DFFPCE (sload_mux_3_dup_56,GND,aclear,nx22,clock,nx19) ;
   DFFPCE (sload_mux_2_dup_55,GND,aclear,nx22,clock,nx18) ;
   DFFPCE (sload_mux_1_dup_54,GND,aclear,nx22,clock,nx17) ;
   DFFPCE (sload_mux_0_dup_53,GND,aclear,nx22,clock,nx16) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>dec_d_3, d(2)=>dec_d_2, d(1)=>dec_d_1, d(0)=>
      dec_d_0, cout=>DANGLING(0,0));
   sload_mux_0_dup_53 <= data(0) when sload = '1' else dec_d_0 ;
   sload_mux_1_dup_54 <= data(1) when sload = '1' else dec_d_1 ;
   sload_mux_2_dup_55 <= data(2) when sload = '1' else dec_d_2 ;
   sload_mux_3_dup_56 <= data(3) when sload = '1' else dec_d_3 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS ;

architecture INTERFACE of 
   counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx16, nx17, nx18, nx19, nx24, nx26, sclear_and_0_dup_59, 
      sclear_and_1_dup_60, sclear_and_2_dup_61, sclear_and_3_dup_62, inc_d_0, 
      inc_d_1, inc_d_2, inc_d_3, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(3) <= nx19 ;
   q(2) <= nx18 ;
   q(1) <= nx17 ;
   q(0) <= nx16 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx24 <= cnt_en OR sclear ;
   nx26 <= nx24 AND clk_en ;
   DFFPCE (sclear_and_3_dup_62,GND,aclear,nx26,clock,nx19) ;
   DFFPCE (sclear_and_2_dup_61,GND,aclear,nx26,clock,nx18) ;
   DFFPCE (sclear_and_1_dup_60,GND,aclear,nx26,clock,nx17) ;
   DFFPCE (sclear_and_0_dup_59,GND,aclear,nx26,clock,nx16) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx19, a(2)=>nx18, a(1)=>
      nx17, a(0)=>nx16, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>
      inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_59 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_60 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_61 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_62 <= inc_d_3 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11_cx0_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_12_cx1_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
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
   signal RxRDY_EXMPLR98: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal RxDivisor_4: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal RxFSM: std_logic_vector (5 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal PWR, rtlc8n72: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n163, rtlc14n167, rtlc14n218, 
      not_TxFSM_1, not_rtlcn20, not_TopTx, rtlc14n223, rtlc14_X_0_n224, 
      rtlc14n234, not_rtlc14_X_0_n224, rtlc14n289, not_rtlcn22, 
      not_rtlc14n167, not_rtlcn24, not_Rx_r, not_Rx, rtlc17n282, rtlc17n287, 
      not_TopRx, rtlc17n335, rtlc17n414, not_rtlc17n287, rtlc17n432, 
      not_rtlcn26, rtlcn20, rtlcn22, rtlcn24, rtlcn26, not_TxFSM_0, rtlcn52, 
      rtlcn58, rtlcn63, rtlcn68, rtlcn72, rtlcn78, rtlcn92, not_rtlcn132, 
      not_RxFSM_0, not_rtlcs5, rtlcn113, rtlcn114, rtlcn115, rtlcn116, 
      not_rtlc14n289, rtlcn132, not_RxFSM_4, rtlcs0, rtlcs1, rtlcs3, rtlcs4, 
      rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, not_RxDiv_9, 
      not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, not_TxDiv_6, not_TxDiv_2, 
      not_TxBitCnt_3, not_TxBitCnt_2, not_TxBitCnt_1, not_rtlc17n335, rtlcs6, 
      rtlcs7, rtlc14_109_or_0_nx0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   TxBusy <= GND ;
   RxRDY <= RxRDY_EXMPLR98 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n72 <= RxFSM(0) OR rtlcs0 ;
   rtlc14n289 <= rtlcs4 OR rtlc14n218 ;
   rtlc14n163 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n223 <= not_TopTx AND TxFSM(1) ;
   rtlc14n218 <= TxFSM(1) AND TxFSM(0) ;
   not_rtlc14_X_0_n224 <= NOT rtlc14_X_0_n224 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n234 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n282 <= not_TopRx OR not_Rx_r ;
   not_TopRx <= NOT TopRx ;
   rtlc17n335 <= not_TopRx AND RxFSM(3) ;
   not_Rx <= NOT Rx ;
   not_rtlcn20 <= NOT rtlcn20 ;
   rtlcn20 <= TxFSM(1) OR TxFSM(0) ;
   rtlc_82_select_1 : select_3_3 port map ( a(2)=>RxFSM(0), a(1)=>
      not_rtlcn132, a(0)=>RxFSM(5), b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>
      not_Rx, d=>rtlcn26);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_127_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n167);
   rtlc_128_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn22);
   rtlc_129_mux_5 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n163, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn24);
   not_Rx_r <= NOT Rx_r ;
   not_LD <= NOT LD ;
   not_RxFSM_0 <= NOT RxFSM(0) ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn52 <= not_rtlcs5 AND RxFSM(2) ;
   rtlcn113 <= not_Rx_r AND RxFSM(1) ;
   rtlcn58 <= RxFSM(3) OR rtlcn113 ;
   rtlcn114 <= RxFSM(4) AND Rx_r ;
   rtlcn63 <= RxFSM(5) OR rtlcn114 ;
   rtlcn68 <= rtlcs5 AND RxFSM(2) ;
   rtlcn72 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn115 <= RxFSM(4) AND not_Rx_r ;
   rtlcn116 <= Rx_r AND RxFSM(1) ;
   rtlcn78 <= rtlcn115 OR rtlcn116 ;
   not_rtlc14n289 <= NOT rtlc14n289 ;
   not_rtlcn132 <= NOT rtlcn132 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(0) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(1) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(2) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(7) ;
   not_rtlcn24 <= NOT rtlcn24 ;
   not_rtlc14n167 <= NOT rtlc14n167 ;
   not_rtlcn22 <= NOT rtlcn22 ;
   not_rtlcn26 <= NOT rtlcn26 ;
   rtlc17n432 <= RxRDY_EXMPLR98 OR RxFSM(5) ;
   not_RxFSM_4 <= NOT RxFSM(4) ;
   not_rtlc17n287 <= NOT rtlc17n287 ;
   rtlcn132 <= RxFSM(0) OR RxFSM(5) ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_356_and_7 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_366_and_8 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   rtlc17n287 <= rtlc17n282 OR not_RxFSM_4 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_377_and_9 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_382_and_10 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   rtlc17n414 <= TopRx AND RxFSM(3) ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11_cx0_UARTS
       port map ( clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>
      RxDiv(8), q(7)=>RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>
      RxDiv(4), q(3)=>RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>
      RxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(10)=>
      DANGLING(0,0), data(9)=>DANGLING(0,1), data(8)=>DANGLING(0,2), data(7)
      =>DANGLING(0,3), data(6)=>DANGLING(0,4), data(5)=>DANGLING(0,5), 
      data(4)=>DANGLING(0,6), data(3)=>DANGLING(0,7), data(2)=>DANGLING(0,8), 
      data(1)=>DANGLING(0,9), data(0)=>DANGLING(0,10), aset=>GND, sclear=>
      rtlc8n72, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12_cx1_UARTS
       port map ( clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>
      TxDiv(9), q(8)=>TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>
      TxDiv(5), q(4)=>TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>
      TxDiv(1), q(0)=>TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, 
      data(11)=>DANGLING(0,11), data(10)=>DANGLING(0,12), data(9)=>
      DANGLING(0,13), data(8)=>DANGLING(0,14), data(7)=>DANGLING(0,15), 
      data(6)=>DANGLING(0,16), data(5)=>DANGLING(0,17), data(4)=>
      DANGLING(0,18), data(3)=>DANGLING(0,19), data(2)=>DANGLING(0,20), 
      data(1)=>DANGLING(0,21), data(0)=>DANGLING(0,22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : 
      counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4_cx2_UARTS port map ( 
      clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>TxBitCnt(1), 
      q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n224, aclear=>RST, sload=>
      rtlc14n234, data(3)=>PWR, data(2)=>GND, data(1)=>GND, data(0)=>PWR, 
      aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   not_rtlc17n335 <= NOT rtlc17n335 ;
   modgen_counter_RxBitCnt : 
      counter_up_cnt_en_sclear_aclear_clock_clk_en_0_4_cx3_UARTS port map ( 
      clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>RxBitCnt(1), 
      q(0)=>RxBitCnt(0), clk_en=>not_rtlc17n335, aclear=>RST, sload=>GND, 
      data(3)=>DANGLING(0,23), data(2)=>DANGLING(0,24), data(1)=>
      DANGLING(0,25), data(0)=>DANGLING(0,26), aset=>GND, sclear=>RxFSM(0), 
      updn=>PWR, cnt_en=>RxFSM(3));
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>RxDivisor_4, 
      b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, b(2)=>RxDivisor_4, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      RxDivisor_4, b(5)=>RxDivisor_4, b(4)=>RxDivisor_4, b(3)=>RxDivisor_4, 
      b(2)=>GND, b(1)=>GND, b(0)=>RxDivisor_4, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,RxDivisor_4) ;
   DFFPC (rtlcn72,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n289,GND,RST,not_rtlcn24,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn24,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n167,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n167,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n167,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n167,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n167,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n167,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n167,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n167,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn22,CLK,Tx) ;
   DFFPCE (rtlcn78,GND,RST,not_rtlcn26,CLK,RxFSM(5)) ;
   DFFPCE (rtlcn68,GND,RST,not_rtlcn26,CLK,RxFSM(4)) ;
   DFFPCE (rtlcn52,GND,RST,not_rtlcn26,CLK,RxFSM(3)) ;
   DFFPCE (rtlcn58,GND,RST,not_rtlcn26,CLK,RxFSM(2)) ;
   DFFPCE (RxFSM(0),GND,RST,not_rtlcn26,CLK,RxFSM(1)) ;
   DFFPCE (rtlcn63,RST,GND,not_rtlcn26,CLK,RxFSM(0)) ;
   DFFPCE (RxFSM(5),GND,RST,rtlc17n432,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n287,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n287,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n287,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n287,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n287,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n287,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n287,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n287,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n414,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n414,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n414,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n414,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n414,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n414,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n414,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n414,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn92,GND,RST,CLK,RxRDY_EXMPLR98) ;
   rtlc14_109_or_0_nx0 <= rtlc14n218 OR not_rtlcn20 ;
   rtlc14_X_0_n224 <= rtlc14_109_or_0_nx0 OR rtlc14n223 ;
   rtlcn92 <= rtlcn114 AND TopRx ;
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart
    is 
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
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx52, nx53, nx54, nx55, nx56, nx57, nx58, nx59, nx60, 
      nx61, nx62, nx63, nx64, nx65, nx66, nx67, sclear_and_0_dup_191, 
      sclear_and_1_dup_192, sclear_and_2_dup_193, sclear_and_3_dup_194, 
      sclear_and_4_dup_195, sclear_and_5_dup_196, sclear_and_6_dup_197, 
      sclear_and_7_dup_198, sclear_and_8_dup_199, sclear_and_9_dup_200, 
      sclear_and_10_dup_201, sclear_and_11_dup_202, sclear_and_12_dup_203, 
      sclear_and_13_dup_204, sclear_and_14_dup_205, sclear_and_15_dup_206, 
      inc_d_0, inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, 
      inc_d_8, inc_d_9, inc_d_10, inc_d_11, inc_d_12, inc_d_13, inc_d_14, 
      inc_d_15, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(15) <= nx67 ;
   q(14) <= nx66 ;
   q(13) <= nx65 ;
   q(12) <= nx64 ;
   q(11) <= nx63 ;
   q(10) <= nx62 ;
   q(9) <= nx61 ;
   q(8) <= nx60 ;
   q(7) <= nx59 ;
   q(6) <= nx58 ;
   q(5) <= nx57 ;
   q(4) <= nx56 ;
   q(3) <= nx55 ;
   q(2) <= nx54 ;
   q(1) <= nx53 ;
   q(0) <= nx52 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPCE (sclear_and_15_dup_206,GND,GND,clk_en,clock,nx67) ;
   DFFPCE (sclear_and_14_dup_205,GND,GND,clk_en,clock,nx66) ;
   DFFPCE (sclear_and_13_dup_204,GND,GND,clk_en,clock,nx65) ;
   DFFPCE (sclear_and_12_dup_203,GND,GND,clk_en,clock,nx64) ;
   DFFPCE (sclear_and_11_dup_202,GND,GND,clk_en,clock,nx63) ;
   DFFPCE (sclear_and_10_dup_201,GND,GND,clk_en,clock,nx62) ;
   DFFPCE (sclear_and_9_dup_200,GND,GND,clk_en,clock,nx61) ;
   DFFPCE (sclear_and_8_dup_199,GND,GND,clk_en,clock,nx60) ;
   DFFPCE (sclear_and_7_dup_198,GND,GND,clk_en,clock,nx59) ;
   DFFPCE (sclear_and_6_dup_197,GND,GND,clk_en,clock,nx58) ;
   DFFPCE (sclear_and_5_dup_196,GND,GND,clk_en,clock,nx57) ;
   DFFPCE (sclear_and_4_dup_195,GND,GND,clk_en,clock,nx56) ;
   DFFPCE (sclear_and_3_dup_194,GND,GND,clk_en,clock,nx55) ;
   DFFPCE (sclear_and_2_dup_193,GND,GND,clk_en,clock,nx54) ;
   DFFPCE (sclear_and_1_dup_192,GND,GND,clk_en,clock,nx53) ;
   DFFPCE (sclear_and_0_dup_191,GND,GND,clk_en,clock,nx52) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx67, a(14)=>nx66, 
      a(13)=>nx65, a(12)=>nx64, a(11)=>nx63, a(10)=>nx62, a(9)=>nx61, a(8)=>
      nx60, a(7)=>nx59, a(6)=>nx58, a(5)=>nx57, a(4)=>nx56, a(3)=>nx55, a(2)
      =>nx54, a(1)=>nx53, a(0)=>nx52, d(15)=>inc_d_15, d(14)=>inc_d_14, 
      d(13)=>inc_d_13, d(12)=>inc_d_12, d(11)=>inc_d_11, d(10)=>inc_d_10, 
      d(9)=>inc_d_9, d(8)=>inc_d_8, d(7)=>inc_d_7, d(6)=>inc_d_6, d(5)=>
      inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, d(2)=>inc_d_2, d(1)=>inc_d_1, 
      d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_191 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_192 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_193 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_194 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_195 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_196 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_197 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_198 <= inc_d_7 AND NOT_sclear ;
   sclear_and_8_dup_199 <= inc_d_8 AND NOT_sclear ;
   sclear_and_9_dup_200 <= inc_d_9 AND NOT_sclear ;
   sclear_and_10_dup_201 <= inc_d_10 AND NOT_sclear ;
   sclear_and_11_dup_202 <= inc_d_11 AND NOT_sclear ;
   sclear_and_12_dup_203 <= inc_d_12 AND NOT_sclear ;
   sclear_and_13_dup_204 <= inc_d_13 AND NOT_sclear ;
   sclear_and_14_dup_205 <= inc_d_14 AND NOT_sclear ;
   sclear_and_15_dup_206 <= inc_d_15 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity uw_uart is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      kirschout : IN std_logic ;
      kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
      o_valid : IN std_logic ;
      i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      o_pixavail : OUT std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic) ;
end uw_uart ;

architecture main of uw_uart is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
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
   signal o_pixavail_EXMPLR152: std_logic ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, rawrx, GND, sdout_6, sdout_4, sdout_3, sdout_2, 
      sdout_1, sdout_0: std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, PWR, not_o_pixavail: std_logic ;
   
   signal mdata_7n2ss1: std_logic_vector (3 DOWNTO 0) ;
   
   signal mdata_7n5ss1_6, mdata_7n5ss1_4, mdata_7n5ss1_3, mdata_7n5ss1_2, 
      mdata_7n5ss1_1, mdata_7n5ss1_0, rtlc7n92, rtlc7n115, not_rxerr, 
      not_rtlcn58, rtlc7n145, rtlc7n148, rtlc7_X_0_n181, rtlc7n221, 
      not_dsend, rtlc10n48, not_rtlc10n48, rtlc10n75, rtlcn4, rtlcn5, 
      rtlcn13, not_rtlcn60, rtlcn47, rtlcn58, rtlcn60, rtlcn61, 
      not_rtlc7n148, not_state, rtlcn65, not_rtlc7n92, not_rtlcn73, 
      not_o_valid, rtlcn73, rtlcn74, not_rtlc7n145, not_rst, not_i_mode_1, 
      rtlcn79, not_waitcount_15, not_waitcount_14, not_waitcount_13, 
      not_waitcount_12, not_waitcount_11, not_waitcount_10, not_waitcount_9, 
      not_waitcount_8, not_waitcount_7, not_waitcount_4, not_waitcount_3, 
      not_waitcount_1, not_waitcount_0, rtlcn122, rtlc7_72_or_13_nx0: 
   std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_pixavail <= o_pixavail_EXMPLR152 ;
   GND <= '0' ;
   PWR <= '1' ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_6, Din(6)=>
      GND, Din(5)=>sdout_4, Din(4)=>GND, Din(3)=>sdout_3, Din(2)=>sdout_2, 
      Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>rawrx, Baud=>PWR, 
      Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)=>sdin(5), Dout(4)=>sdin(4), 
      Dout(3)=>sdin(3), Dout(2)=>sdin(2), Dout(1)=>sdin(1), Dout(0)=>sdin(0), 
      Tx=>txflex, TxBusy=>DANGLING(0,0), RxErr=>rxerr, RxRDY=>rxrdy);
   not_rxerr <= NOT rxerr ;
   rtlc7n92 <= o_pixavail_EXMPLR152 OR ack ;
   not_rtlcn58 <= NOT rtlcn58 ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR152 ;
   not_rtlc7n148 <= NOT rtlc7n148 ;
   rtlcn5 <= not_rtlc7n148 AND rtlc7n92 ;
   rtlcn58 <= rtlc7n115 OR o_valid ;
   not_state <= NOT state ;
   rtlcn13 <= not_state AND dsend ;
   rtlcn65 <= rtlc7n92 AND not_rtlcn58 ;
   not_rtlc7n92 <= NOT rtlc7n92 ;
   rtlcn61 <= rtlcn65 OR not_rtlcn73 ;
   rtlcn60 <= not_rtlc7n148 AND rtlcn61 ;
   not_rtlcn60 <= NOT rtlcn60 ;
   not_o_valid <= NOT o_valid ;
   rtlcn47 <= not_rtlc7n92 OR not_o_valid ;
   not_rtlcn73 <= NOT rtlcn73 ;
   rtlc7n145 <= not_rtlcn58 when rtlc7n92 = '1' else not_rxerr ;
   rtlcn4 <= rxrdy OR o_pixavail_EXMPLR152 ;
   not_rtlc7n145 <= NOT rtlc7n145 ;
   rtlcn74 <= not_rtlc7n145 OR rtlc7n148 ;
   not_rst <= NOT rst ;
   rtlc7n221 <= not_rst AND rtlcn74 ;
   rtlc10n75 <= dsend OR state ;
   not_dsend <= NOT dsend ;
   not_rtlc10n48 <= NOT rtlc10n48 ;
   mdata_7n2ss1(0) <= kirschout OR not_o_valid ;
   not_i_mode_1 <= NOT i_mode(1) ;
   rtlc7n148 <= not_i_mode_1 AND i_mode(0) ;
   mdata_7n5ss1_0 <= mdata_7n2ss1(0) AND rtlcn5 ;
   rtlcn73 <= rtlc7n92 OR rxerr ;
   rtlc10n48 <= not_dsend OR state ;
   mdata_7n2ss1(1) <= kirschdir(0) OR not_o_valid ;
   mdata_7n5ss1_1 <= mdata_7n2ss1(1) AND rtlcn5 ;
   mdata_7n2ss1(2) <= kirschdir(1) OR not_o_valid ;
   mdata_7n5ss1_2 <= mdata_7n2ss1(2) AND rtlcn5 ;
   mdata_7n2ss1(3) <= kirschdir(2) OR not_o_valid ;
   mdata_7n5ss1_3 <= mdata_7n2ss1(3) AND rtlcn5 ;
   mdata_7n5ss1_4 <= rtlcn47 OR rtlc7n148 ;
   mdata_7n5ss1_6 <= rtlcn47 AND not_rtlc7n148 ;
   rawrx <= rxflex AND not_rst ;
   datain(0) <= rdata(0) AND o_pixavail_EXMPLR152 ;
   datain(1) <= rdata(1) AND o_pixavail_EXMPLR152 ;
   datain(2) <= rdata(2) AND o_pixavail_EXMPLR152 ;
   datain(3) <= rdata(3) AND o_pixavail_EXMPLR152 ;
   datain(4) <= rdata(4) AND o_pixavail_EXMPLR152 ;
   datain(5) <= rdata(5) AND o_pixavail_EXMPLR152 ;
   datain(6) <= rdata(6) AND o_pixavail_EXMPLR152 ;
   datain(7) <= rdata(7) AND o_pixavail_EXMPLR152 ;
   rtlcn79 <= rst OR rtlc7n92 ;
   modgen_counter_waitcount : 
      counter_up_sclear_clock_clk_en_0_16_cx4_uw_uart port map ( clock=>clk, 
      q(15)=>waitcount(15), q(14)=>waitcount(14), q(13)=>waitcount(13), 
      q(12)=>waitcount(12), q(11)=>waitcount(11), q(10)=>waitcount(10), q(9)
      =>waitcount(9), q(8)=>waitcount(8), q(7)=>waitcount(7), q(6)=>
      waitcount(6), q(5)=>waitcount(5), q(4)=>waitcount(4), q(3)=>
      waitcount(3), q(2)=>waitcount(2), q(1)=>waitcount(1), q(0)=>
      waitcount(0), clk_en=>rtlcn79, aclear=>GND, sload=>GND, data(15)=>
      DANGLING(0,1), data(14)=>DANGLING(0,2), data(13)=>DANGLING(0,3), 
      data(12)=>DANGLING(0,4), data(11)=>DANGLING(0,5), data(10)=>
      DANGLING(0,6), data(9)=>DANGLING(0,7), data(8)=>DANGLING(0,8), data(7)
      =>DANGLING(0,9), data(6)=>DANGLING(0,10), data(5)=>DANGLING(0,11), 
      data(4)=>DANGLING(0,12), data(3)=>DANGLING(0,13), data(2)=>
      DANGLING(0,14), data(1)=>DANGLING(0,15), data(0)=>DANGLING(0,16), aset
      =>GND, sclear=>rtlc7_X_0_n181, updn=>PWR, cnt_en=>PWR);
   not_waitcount_15 <= NOT waitcount(15) ;
   not_waitcount_14 <= NOT waitcount(14) ;
   not_waitcount_13 <= NOT waitcount(13) ;
   not_waitcount_12 <= NOT waitcount(12) ;
   not_waitcount_11 <= NOT waitcount(11) ;
   not_waitcount_10 <= NOT waitcount(10) ;
   not_waitcount_9 <= NOT waitcount(9) ;
   not_waitcount_8 <= NOT waitcount(8) ;
   not_waitcount_7 <= NOT waitcount(7) ;
   not_waitcount_4 <= NOT waitcount(4) ;
   not_waitcount_3 <= NOT waitcount(3) ;
   not_waitcount_1 <= NOT waitcount(1) ;
   not_waitcount_0 <= NOT waitcount(0) ;
   rtlc_318_and_14 : and_16u_16u port map ( a(15)=>not_waitcount_15, a(14)=>
      not_waitcount_14, a(13)=>not_waitcount_13, a(12)=>not_waitcount_12, 
      a(11)=>not_waitcount_11, a(10)=>not_waitcount_10, a(9)=>
      not_waitcount_9, a(8)=>not_waitcount_8, a(7)=>not_waitcount_7, a(6)=>
      waitcount(6), a(5)=>waitcount(5), a(4)=>not_waitcount_4, a(3)=>
      not_waitcount_3, a(2)=>waitcount(2), a(1)=>not_waitcount_1, a(0)=>
      not_waitcount_0, d=>rtlc7n115);
   rtlcn122 <= not_o_pixavail AND rtlcn4 ;
   DFFPCE (mdata_7n5ss1_6,GND,GND,rtlc7n221,clk,mdata_7) ;
   DFFPCE (mdata_7n5ss1_4,GND,GND,rtlc7n221,clk,mdata_5) ;
   DFFPCE (mdata_7n5ss1_3,GND,GND,rtlc7n221,clk,mdata_3) ;
   DFFPCE (mdata_7n5ss1_2,GND,GND,rtlc7n221,clk,mdata_2) ;
   DFFPCE (mdata_7n5ss1_1,GND,GND,rtlc7n221,clk,mdata_1) ;
   DFFPCE (mdata_7n5ss1_0,GND,GND,rtlc7n221,clk,mdata_0) ;
   DFFRSE (not_rtlcn60,GND,rst,PWR,clk,dsend) ;
   DFFPCE (sdin(7),GND,rst,rxrdy,clk,rdata(7)) ;
   DFFPCE (sdin(6),GND,rst,rxrdy,clk,rdata(6)) ;
   DFFPCE (sdin(5),GND,rst,rxrdy,clk,rdata(5)) ;
   DFFPCE (sdin(4),GND,rst,rxrdy,clk,rdata(4)) ;
   DFFPCE (sdin(3),GND,rst,rxrdy,clk,rdata(3)) ;
   DFFPCE (sdin(2),GND,rst,rxrdy,clk,rdata(2)) ;
   DFFPCE (sdin(1),GND,rst,rxrdy,clk,rdata(1)) ;
   DFFPCE (sdin(0),GND,rst,rxrdy,clk,rdata(0)) ;
   DFFPCE (not_state,GND,rst,rtlc10n75,clk,ld_sdout) ;
   DFFPCE (mdata_7,GND,rst,not_rtlc10n48,clk,sdout_6) ;
   DFFPCE (mdata_5,GND,rst,not_rtlc10n48,clk,sdout_4) ;
   DFFPCE (mdata_3,GND,rst,not_rtlc10n48,clk,sdout_3) ;
   DFFPCE (mdata_2,GND,rst,not_rtlc10n48,clk,sdout_2) ;
   DFFPCE (mdata_1,GND,rst,not_rtlc10n48,clk,sdout_1) ;
   DFFPCE (mdata_0,GND,rst,not_rtlc10n48,clk,sdout_0) ;
   DFFPC (rtlcn13,GND,rst,clk,state) ;
   DFFRSE (rtlcn65,GND,rst,PWR,clk,ack) ;
   DFFPC (rtlcn122,GND,rst,clk,o_pixavail_EXMPLR152) ;
   rtlc7_72_or_13_nx0 <= rst OR o_valid ;
   rtlc7_X_0_n181 <= rtlc7_72_or_13_nx0 OR rtlc7n115 ;
end main ;

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
   signal nx4, o_max_dir_2_EXMPLR185: std_logic ;

begin
   o_max_dir(2) <= o_max_dir_2_EXMPLR185 ;
   rtlc0_copy_n22_gt_15 : gt_8u_8u port map ( a(7)=>i_pix1(7), a(6)=>
      i_pix1(6), a(5)=>i_pix1(5), a(4)=>i_pix1(4), a(3)=>i_pix1(3), a(2)=>
      i_pix1(2), a(1)=>i_pix1(1), a(0)=>i_pix1(0), b(7)=>i_pix2(7), b(6)=>
      i_pix2(6), b(5)=>i_pix2(5), b(4)=>i_pix2(4), b(3)=>i_pix2(3), b(2)=>
      i_pix2(2), b(1)=>i_pix2(1), b(0)=>i_pix2(0), d=>nx4);
   rtlc2_15_gt_16 : gt_8u_8u port map ( a(7)=>i_pix2(7), a(6)=>i_pix2(6), 
      a(5)=>i_pix2(5), a(4)=>i_pix2(4), a(3)=>i_pix2(3), a(2)=>i_pix2(2), 
      a(1)=>i_pix2(1), a(0)=>i_pix2(0), b(7)=>i_pix1(7), b(6)=>i_pix1(6), 
      b(5)=>i_pix1(5), b(4)=>i_pix1(4), b(3)=>i_pix1(3), b(2)=>i_pix1(2), 
      b(1)=>i_pix1(1), b(0)=>i_pix1(0), d=>o_max_dir_2_EXMPLR185);
   o_max_pix(0) <= i_pix1(0) when nx4 = '1' else i_pix2(0) ;
   o_max_pix(1) <= i_pix1(1) when nx4 = '1' else i_pix2(1) ;
   o_max_pix(2) <= i_pix1(2) when nx4 = '1' else i_pix2(2) ;
   o_max_pix(3) <= i_pix1(3) when nx4 = '1' else i_pix2(3) ;
   o_max_pix(4) <= i_pix1(4) when nx4 = '1' else i_pix2(4) ;
   o_max_pix(5) <= i_pix1(5) when nx4 = '1' else i_pix2(5) ;
   o_max_pix(6) <= i_pix1(6) when nx4 = '1' else i_pix2(6) ;
   o_max_pix(7) <= i_pix1(7) when nx4 = '1' else i_pix2(7) ;
   o_max_dir(0) <= i_dir2(0) when o_max_dir_2_EXMPLR185 = '1' else i_dir1(0)
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

architecture main_unfold_1434 of stage1_hardware is 
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
   signal o_add_op12_stage1_EXMPLR251: std_logic_vector (8 DOWNTO 0) ;
   
   signal custom_max_pix_output: std_logic_vector (7 DOWNTO 0) ;
   
   signal GND, i_dir2_stage1_2_EXMPLR245: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_add_op12_stage1(8) <= o_add_op12_stage1_EXMPLR251(8) ;
   o_add_op12_stage1(7) <= o_add_op12_stage1_EXMPLR251(7) ;
   o_add_op12_stage1(6) <= o_add_op12_stage1_EXMPLR251(6) ;
   o_add_op12_stage1(5) <= o_add_op12_stage1_EXMPLR251(5) ;
   o_add_op12_stage1(4) <= o_add_op12_stage1_EXMPLR251(4) ;
   o_add_op12_stage1(3) <= o_add_op12_stage1_EXMPLR251(3) ;
   o_add_op12_stage1(2) <= o_add_op12_stage1_EXMPLR251(2) ;
   o_add_op12_stage1(1) <= o_add_op12_stage1_EXMPLR251(1) ;
   o_add_op12_stage1(0) <= o_add_op12_stage1_EXMPLR251(0) ;
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
      =>i_dir1_stage1(0), i_dir2(2)=>i_dir2_stage1_2_EXMPLR245, i_dir2(1)=>
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
      o_add_op12_stage1_EXMPLR251(7), d(6)=>o_add_op12_stage1_EXMPLR251(6), 
      d(5)=>o_add_op12_stage1_EXMPLR251(5), d(4)=>
      o_add_op12_stage1_EXMPLR251(4), d(3)=>o_add_op12_stage1_EXMPLR251(3), 
      d(2)=>o_add_op12_stage1_EXMPLR251(2), d(1)=>
      o_add_op12_stage1_EXMPLR251(1), d(0)=>o_add_op12_stage1_EXMPLR251(0), 
      cout=>o_add_op12_stage1_EXMPLR251(8));
   o_max_add_stage1_add9_1 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, 
      a(7)=>custom_max_pix_output(7), a(6)=>custom_max_pix_output(6), a(5)=>
      custom_max_pix_output(5), a(4)=>custom_max_pix_output(4), a(3)=>
      custom_max_pix_output(3), a(2)=>custom_max_pix_output(2), a(1)=>
      custom_max_pix_output(1), a(0)=>custom_max_pix_output(0), b(8)=>
      o_add_op12_stage1_EXMPLR251(8), b(7)=>o_add_op12_stage1_EXMPLR251(7), 
      b(6)=>o_add_op12_stage1_EXMPLR251(6), b(5)=>
      o_add_op12_stage1_EXMPLR251(5), b(4)=>o_add_op12_stage1_EXMPLR251(4), 
      b(3)=>o_add_op12_stage1_EXMPLR251(3), b(2)=>
      o_add_op12_stage1_EXMPLR251(2), b(1)=>o_add_op12_stage1_EXMPLR251(1), 
      b(0)=>o_add_op12_stage1_EXMPLR251(0), d(8)=>o_max_add_stage1(8), d(7)
      =>o_max_add_stage1(7), d(6)=>o_max_add_stage1(6), d(5)=>
      o_max_add_stage1(5), d(4)=>o_max_add_stage1(4), d(3)=>
      o_max_add_stage1(3), d(2)=>o_max_add_stage1(2), d(1)=>
      o_max_add_stage1(1), d(0)=>o_max_add_stage1(0), cout=>
      o_max_add_stage1(9));
   i_dir2_stage1_2_EXMPLR245 <= '1' ;
end main_unfold_1434 ;

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
   rtlc0_copy_n24_gt_19 : gt_10u_10u port map ( a(9)=>i_pix1(9), a(8)=>
      i_pix1(8), a(7)=>i_pix1(7), a(6)=>i_pix1(6), a(5)=>i_pix1(5), a(4)=>
      i_pix1(4), a(3)=>i_pix1(3), a(2)=>i_pix1(2), a(1)=>i_pix1(1), a(0)=>
      i_pix1(0), b(9)=>i_pix2(9), b(8)=>i_pix2(8), b(7)=>i_pix2(7), b(6)=>
      i_pix2(6), b(5)=>i_pix2(5), b(4)=>i_pix2(4), b(3)=>i_pix2(3), b(2)=>
      i_pix2(2), b(1)=>i_pix2(1), b(0)=>i_pix2(0), d=>nx4);
   rtlc2_15_gt_20 : gt_10u_10u port map ( a(9)=>i_pix2(9), a(8)=>i_pix2(8), 
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

entity counter_up_cnt_en_sclear_clock_0_8_cx5_kirsch_8_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8_cx5_kirsch_8_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx5_kirsch_8_8
    is 
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

entity counter_up_cnt_en_sclear_clock_0_8_cx6_kirsch_8_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8_cx6_kirsch_8_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx6_kirsch_8_8
    is 
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

entity ram_new_0_work_kirsch_8_8_main_unfold_1777 is 
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
end ram_new_0_work_kirsch_8_8_main_unfold_1777 ;

architecture INTERFACE of ram_new_0_work_kirsch_8_8_main_unfold_1777 is 
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

entity ram_new_1_work_kirsch_8_8_main_unfold_1777 is 
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
end ram_new_1_work_kirsch_8_8_main_unfold_1777 ;

architecture INTERFACE of ram_new_1_work_kirsch_8_8_main_unfold_1777 is 
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

entity kirsch_8_8 is 
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
end kirsch_8_8 ;

architecture main_unfold_1777 of kirsch_8_8 is 
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
   component counter_up_cnt_en_sclear_clock_0_8_cx5_kirsch_8_8
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
   component counter_up_cnt_en_sclear_clock_0_8_cx6_kirsch_8_8
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
   component ram_new_0_work_kirsch_8_8_main_unfold_1777
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
   component ram_new_1_work_kirsch_8_8_main_unfold_1777
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
   signal o_valid_EXMPLR525, o_edge_EXMPLR526: std_logic ;
   
   signal o_mode_EXMPLR544: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR545: std_logic_vector (7 DOWNTO 0) ;
   
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
   
   signal debug_num_5_0_EXMPLR540, sub_out_12, sub_out_11, sub_out_10, 
      sub_out_9, sub_out_8, sub_out_7: std_logic ;
   
   signal r8: std_logic_vector (2 DOWNTO 0) ;
   
   signal debug_num_5_1_EXMPLR541, not_o_row_0, not_valid_0, 
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
   
   signal rtlcn4, rtlc_300_or_59_nx0, NOT_r6_0: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_valid <= o_valid_EXMPLR525 ;
   o_edge <= o_edge_EXMPLR526 ;
   o_mode(1) <= o_mode_EXMPLR544(1) ;
   o_mode(0) <= o_mode_EXMPLR544(0) ;
   o_row(7) <= o_row_EXMPLR545(7) ;
   o_row(6) <= o_row_EXMPLR545(6) ;
   o_row(5) <= o_row_EXMPLR545(5) ;
   o_row(4) <= o_row_EXMPLR545(4) ;
   o_row(3) <= o_row_EXMPLR545(3) ;
   o_row(2) <= o_row_EXMPLR545(2) ;
   o_row(1) <= o_row_EXMPLR545(1) ;
   o_row(0) <= o_row_EXMPLR545(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR540 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR540 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR540 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR540 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR540 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR540 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR540 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR540 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR540 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR541 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR541 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR541 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR540 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR540 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR541 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR540 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR540 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR540 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR541 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR541 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR541 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR541 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR541 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR540 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR541 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR541 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR540 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR540 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR541 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR541 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR541 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR540 ;
   debug_num_5_0_EXMPLR540 <= '0' ;
   debug_num_5_1_EXMPLR541 <= '1' ;
   stage1 : stage1_hardware port map ( i_dir1_stage1(2)=>
      debug_num_5_0_EXMPLR540, i_dir1_stage1(1)=>debug_num_5_0_EXMPLR540, 
      i_dir1_stage1(0)=>rtlc5n38, i_dir2_stage1(2)=>debug_num_5_1_EXMPLR541, 
      i_dir2_stage1(1)=>debug_num_5_0_EXMPLR540, i_dir2_stage1(0)=>rtlcn4, 
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
   not_o_row_0 <= NOT o_row_EXMPLR545(0) ;
   mem_wren(1) <= o_row_EXMPLR545(0) AND i_valid ;
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
   c_13n1ss1(0) <= mem_out_1(0) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(0) ;
   c_13n1ss1(1) <= mem_out_1(1) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(1) ;
   c_13n1ss1(2) <= mem_out_1(2) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(2) ;
   c_13n1ss1(3) <= mem_out_1(3) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(3) ;
   c_13n1ss1(4) <= mem_out_1(4) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(4) ;
   c_13n1ss1(5) <= mem_out_1(5) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(5) ;
   c_13n1ss1(6) <= mem_out_1(6) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(6) ;
   c_13n1ss1(7) <= mem_out_1(7) when o_row_EXMPLR545(0) = '1' else 
   mem_out_0(7) ;
   d_13n1ss1(0) <= mem_out_0(0) when o_row_EXMPLR545(0) = '1' else 
   mem_out_1(0) ;
   d_13n1ss1(1) <= mem_out_0(1) when o_row_EXMPLR545(0) = '1' else 
   mem_out_1(1) ;
   d_13n1ss1(2) <= mem_out_0(2) when o_row_EXMPLR545(0) = '1' else 
   mem_out_1(2) ;
   d_13n1ss1(3) <= mem_out_0(3) when o_row_EXMPLR545(0) = '1' else 
   mem_out_1(3) ;
   d_13n1ss1(4) <= mem_out_0(4) when o_row_EXMPLR545(0) = '1' else 
   mem_out_1(4) ;
   d_13n1ss1(5) <= mem_out_0(5) when o_row_EXMPLR545(0) = '1' else 
   mem_out_1(5) ;
   d_13n1ss1(6) <= mem_out_0(6) when o_row_EXMPLR545(0) = '1' else 
   mem_out_1(6) ;
   d_13n1ss1(7) <= mem_out_0(7) when o_row_EXMPLR545(0) = '1' else 
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
   o_dir(0) <= r8(0) AND o_edge_EXMPLR526 ;
   o_dir(1) <= r8(1) AND o_edge_EXMPLR526 ;
   o_dir(2) <= r8(2) AND o_edge_EXMPLR526 ;
   not_o_mode_1 <= NOT o_mode_EXMPLR544(1) ;
   rtlcs0 <= not_o_mode_1 AND o_mode_EXMPLR544(0) ;
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8_cx5_kirsch_8_8
       port map ( clock=>i_clock, q(7)=>o_row_EXMPLR545(7), q(6)=>
      o_row_EXMPLR545(6), q(5)=>o_row_EXMPLR545(5), q(4)=>o_row_EXMPLR545(4), 
      q(3)=>o_row_EXMPLR545(3), q(2)=>o_row_EXMPLR545(2), q(1)=>
      o_row_EXMPLR545(1), q(0)=>o_row_EXMPLR545(0), clk_en=>
      debug_num_5_1_EXMPLR541, aclear=>debug_num_5_0_EXMPLR540, sload=>
      debug_num_5_0_EXMPLR540, data(7)=>DANGLING(0,1), data(6)=>
      DANGLING(0,2), data(5)=>DANGLING(0,3), data(4)=>DANGLING(0,4), data(3)
      =>DANGLING(0,5), data(2)=>DANGLING(0,6), data(1)=>DANGLING(0,7), 
      data(0)=>DANGLING(0,8), aset=>debug_num_5_0_EXMPLR540, sclear=>i_reset, 
      updn=>debug_num_5_1_EXMPLR541, cnt_en=>rtlcn9);
   modgen_counter_column : counter_up_cnt_en_sclear_clock_0_8_cx6_kirsch_8_8
       port map ( clock=>i_clock, q(7)=>column(7), q(6)=>column(6), q(5)=>
      column(5), q(4)=>column(4), q(3)=>column(3), q(2)=>column(2), q(1)=>
      column(1), q(0)=>column(0), clk_en=>debug_num_5_1_EXMPLR541, aclear=>
      debug_num_5_0_EXMPLR540, sload=>debug_num_5_0_EXMPLR540, data(7)=>
      DANGLING(0,9), data(6)=>DANGLING(0,10), data(5)=>DANGLING(0,11), 
      data(4)=>DANGLING(0,12), data(3)=>DANGLING(0,13), data(2)=>
      DANGLING(0,14), data(1)=>DANGLING(0,15), data(0)=>DANGLING(0,16), aset
      =>debug_num_5_0_EXMPLR540, sclear=>rtlc14n147, updn=>
      debug_num_5_1_EXMPLR541, cnt_en=>valid(0));
   not_rtlcn1880 <= NOT rtlcn1880 ;
   DFFRSE (debug_num_5_1_EXMPLR541,debug_num_5_0_EXMPLR540,i_reset,rtlcn3,
   i_clock,o_mode_EXMPLR544(1)) ;
   DFFRSE (i_valid,i_reset,debug_num_5_0_EXMPLR540,rtlcn3,i_clock,
   o_mode_EXMPLR544(0)) ;
   DFFRSE (i_pixel(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(7))
    ;
   DFFRSE (i_pixel(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(6))
    ;
   DFFRSE (i_pixel(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(5))
    ;
   DFFRSE (i_pixel(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(4))
    ;
   DFFRSE (i_pixel(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(3))
    ;
   DFFRSE (i_pixel(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(2))
    ;
   DFFRSE (i_pixel(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(1))
    ;
   DFFRSE (i_pixel(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,e(0))
    ;
   DFFRSE (e(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(7)) ;
   DFFRSE (e(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(6)) ;
   DFFRSE (e(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(5)) ;
   DFFRSE (e(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(4)) ;
   DFFRSE (e(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(3)) ;
   DFFRSE (e(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(2)) ;
   DFFRSE (e(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(1)) ;
   DFFRSE (e(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,f(0)) ;
   DFFRSE (f(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(7)) ;
   DFFRSE (f(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(6)) ;
   DFFRSE (f(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(5)) ;
   DFFRSE (f(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(4)) ;
   DFFRSE (f(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(3)) ;
   DFFRSE (f(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(2)) ;
   DFFRSE (f(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(1)) ;
   DFFRSE (f(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,g(0)) ;
   DFFRSE (d_13n1ss1(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(7)
   ) ;
   DFFRSE (d_13n1ss1(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(6)
   ) ;
   DFFRSE (d_13n1ss1(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(5)
   ) ;
   DFFRSE (d_13n1ss1(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(4)
   ) ;
   DFFRSE (d_13n1ss1(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(3)
   ) ;
   DFFRSE (d_13n1ss1(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(2)
   ) ;
   DFFRSE (d_13n1ss1(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(1)
   ) ;
   DFFRSE (d_13n1ss1(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,d(0)
   ) ;
   DFFRSE (d(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(7)) ;
   DFFRSE (d(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(6)) ;
   DFFRSE (d(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(5)) ;
   DFFRSE (d(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(4)) ;
   DFFRSE (d(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(3)) ;
   DFFRSE (d(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(2)) ;
   DFFRSE (d(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(1)) ;
   DFFRSE (d(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,i(0)) ;
   DFFRSE (i(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(7)) ;
   DFFRSE (i(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(6)) ;
   DFFRSE (i(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(5)) ;
   DFFRSE (i(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(4)) ;
   DFFRSE (i(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(3)) ;
   DFFRSE (i(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(2)) ;
   DFFRSE (i(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(1)) ;
   DFFRSE (i(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,h(0)) ;
   DFFRSE (c_13n1ss1(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(7)
   ) ;
   DFFRSE (c_13n1ss1(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(6)
   ) ;
   DFFRSE (c_13n1ss1(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(5)
   ) ;
   DFFRSE (c_13n1ss1(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(4)
   ) ;
   DFFRSE (c_13n1ss1(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(3)
   ) ;
   DFFRSE (c_13n1ss1(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(2)
   ) ;
   DFFRSE (c_13n1ss1(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(1)
   ) ;
   DFFRSE (c_13n1ss1(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,c(0)
   ) ;
   DFFRSE (c(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(7)) ;
   DFFRSE (c(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(6)) ;
   DFFRSE (c(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(5)) ;
   DFFRSE (c(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(4)) ;
   DFFRSE (c(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(3)) ;
   DFFRSE (c(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(2)) ;
   DFFRSE (c(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(1)) ;
   DFFRSE (c(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,b(0)) ;
   DFFRSE (b(7),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(7)) ;
   DFFRSE (b(6),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(6)) ;
   DFFRSE (b(5),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(5)) ;
   DFFRSE (b(4),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(4)) ;
   DFFRSE (b(3),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(3)) ;
   DFFRSE (b(2),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(2)) ;
   DFFRSE (b(1),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(1)) ;
   DFFRSE (b(0),debug_num_5_0_EXMPLR540,i_reset,i_valid,i_clock,a(0)) ;
   DFFPCE (row_valid1(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(7)) ;
   DFFPCE (row_valid1(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(6)) ;
   DFFPCE (row_valid1(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(5)) ;
   DFFPCE (row_valid1(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(4)) ;
   DFFPCE (row_valid1(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(3)) ;
   DFFPCE (row_valid1(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(2)) ;
   DFFPCE (row_valid1(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(1)) ;
   DFFPCE (row_valid1(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,row_valid2(0)) ;
   DFFPCE (column_valid1(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(7)) ;
   DFFPCE (column_valid1(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(6)) ;
   DFFPCE (column_valid1(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(5)) ;
   DFFPCE (column_valid1(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(4)) ;
   DFFPCE (column_valid1(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(3)) ;
   DFFPCE (column_valid1(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(2)) ;
   DFFPCE (column_valid1(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(1)) ;
   DFFPCE (column_valid1(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(4),i_clock,column_valid2(0)) ;
   DFFPCE (o_row_EXMPLR545(7),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(7)) ;
   DFFPCE (o_row_EXMPLR545(6),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(6)) ;
   DFFPCE (o_row_EXMPLR545(5),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(5)) ;
   DFFPCE (o_row_EXMPLR545(4),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(4)) ;
   DFFPCE (o_row_EXMPLR545(3),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(3)) ;
   DFFPCE (o_row_EXMPLR545(2),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(2)) ;
   DFFPCE (o_row_EXMPLR545(1),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(1)) ;
   DFFPCE (o_row_EXMPLR545(0),debug_num_5_0_EXMPLR540,
   debug_num_5_0_EXMPLR540,valid(0),i_clock,row_valid1(0)) ;
   DFFPCE (column(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(7)) ;
   DFFPCE (column(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(6)) ;
   DFFPCE (column(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(5)) ;
   DFFPCE (column(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(4)) ;
   DFFPCE (column(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(3)) ;
   DFFPCE (column(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(2)) ;
   DFFPCE (column(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(1)) ;
   DFFPCE (column(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(0),i_clock,column_valid1(0)) ;
   DFFRSE (valid(5),debug_num_5_0_EXMPLR540,i_reset,debug_num_5_1_EXMPLR541,
   i_clock,valid(6)) ;
   DFFRSE (valid(4),debug_num_5_0_EXMPLR540,i_reset,debug_num_5_1_EXMPLR541,
   i_clock,valid(5)) ;
   DFFRSE (valid(3),debug_num_5_0_EXMPLR540,i_reset,debug_num_5_1_EXMPLR541,
   i_clock,valid(4)) ;
   DFFRSE (valid(2),debug_num_5_0_EXMPLR540,i_reset,debug_num_5_1_EXMPLR541,
   i_clock,valid(3)) ;
   DFFRSE (valid(1),debug_num_5_0_EXMPLR540,i_reset,debug_num_5_1_EXMPLR541,
   i_clock,valid(2)) ;
   DFFRSE (valid(0),debug_num_5_0_EXMPLR540,i_reset,debug_num_5_1_EXMPLR541,
   i_clock,valid(1)) ;
   DFFRSE (i_valid,debug_num_5_0_EXMPLR540,i_reset,debug_num_5_1_EXMPLR541,
   i_clock,valid(0)) ;
   DFFPC (o_add2(9),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(9)) ;
   DFFPC (o_add2(8),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(8)) ;
   DFFPC (o_add2(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(7)) ;
   DFFPC (o_add2(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(6)) ;
   DFFPC (o_add2(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(5)) ;
   DFFPC (o_add2(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(4)) ;
   DFFPC (o_add2(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(3)) ;
   DFFPC (o_add2(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(2)) ;
   DFFPC (o_add2(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(1)) ;
   DFFPC (o_add2(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r3(0)) ;
   DFFPC (o_add1(8),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(8)) ;
   DFFPC (o_add1(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(7)) ;
   DFFPC (o_add1(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(6)) ;
   DFFPC (o_add1(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(5)) ;
   DFFPC (o_add1(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(4)) ;
   DFFPC (o_add1(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(3)) ;
   DFFPC (o_add1(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(2)) ;
   DFFPC (o_add1(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(1)) ;
   DFFPC (o_add1(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r2(0)) ;
   DFFPC (o_dir1_2,debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r1(2)) ;
   DFFPC (not_rtlc5n40,debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   i_clock,r1(1)) ;
   DFFPC (o_dir1_0,debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r1(0)) ;
   DFFPCE (r2(8),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(8)) ;
   DFFPCE (r2(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(7)) ;
   DFFPCE (r2(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(6)) ;
   DFFPCE (r2(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(5)) ;
   DFFPCE (r2(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(4)) ;
   DFFPCE (r2(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(3)) ;
   DFFPCE (r2(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(2)) ;
   DFFPCE (r2(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(1)) ;
   DFFPCE (r2(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_add(0)) ;
   DFFPCE (r1(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_dir(2)) ;
   DFFPCE (r1(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_dir(1)) ;
   DFFPCE (r1(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_dir(0)) ;
   DFFPCE (r3(9),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(9)) ;
   DFFPCE (r3(8),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(8)) ;
   DFFPCE (r3(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(7)) ;
   DFFPCE (r3(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(6)) ;
   DFFPCE (r3(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(5)) ;
   DFFPCE (r3(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(4)) ;
   DFFPCE (r3(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(3)) ;
   DFFPCE (r3(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(2)) ;
   DFFPCE (r3(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(1)) ;
   DFFPCE (r3(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(1),
   i_clock,temp_max(0)) ;
   DFFPC (o_add3(12),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(12)) ;
   DFFPC (o_add3(11),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(11)) ;
   DFFPC (o_add3(10),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(10)) ;
   DFFPC (o_add3(9),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(9)) ;
   DFFPC (o_add3(8),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(8)) ;
   DFFPC (o_add3(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(7)) ;
   DFFPC (o_add3(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(6)) ;
   DFFPC (o_add3(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(5)) ;
   DFFPC (o_add3(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(4)) ;
   DFFPC (o_add3(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(3)) ;
   DFFPC (o_add3(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(2)) ;
   DFFPC (o_add3(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(1)) ;
   DFFPC (o_add3(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   r6(0)) ;
   DFFPCE (o_dir2(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r5(2)) ;
   DFFPCE (o_dir2(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r5(1)) ;
   DFFPCE (o_dir2(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r5(0)) ;
   DFFPCE (o_max1(9),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(9)) ;
   DFFPCE (o_max1(8),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(8)) ;
   DFFPCE (o_max1(7),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(7)) ;
   DFFPCE (o_max1(6),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(6)) ;
   DFFPCE (o_max1(5),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(5)) ;
   DFFPCE (o_max1(4),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(4)) ;
   DFFPCE (o_max1(3),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(3)) ;
   DFFPCE (o_max1(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(2)) ;
   DFFPCE (o_max1(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(1)) ;
   DFFPCE (o_max1(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   not_valid_5,i_clock,r4(0)) ;
   DFFPCE (rtlc20n140,debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,
   valid(6),i_clock,o_edge_EXMPLR526) ;
   DFFPCE (r5(2),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(6),
   i_clock,r8(2)) ;
   DFFPCE (r5(1),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(6),
   i_clock,r8(1)) ;
   DFFPCE (r5(0),debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,valid(6),
   i_clock,r8(0)) ;
   DFFPC (rtlc21n57,debug_num_5_0_EXMPLR540,debug_num_5_0_EXMPLR540,i_clock,
   o_valid_EXMPLR525) ;
   rtlcn4 <= not_valid_0 AND not_valid_1 ;
   rtlc5_P9_SS0_n35 <= rtlcn4 AND not_valid_2 ;
   rtlc5_P8_SS0_n32 <= rtlcn4 AND valid(2) ;
   rtlc_300_or_59_nx0 <= i_valid OR rtlc12n82 ;
   rtlcn3 <= rtlc_300_or_59_nx0 OR rtlcs0 ;
   NOT_r6_0 <= NOT r6(0) ;
   sub_out_sub13_0 : sub_12u_12u_12u_0 port map ( cin=>NOT_r6_0, a(11)=>
      r4(9), a(10)=>r4(8), a(9)=>r4(7), a(8)=>r4(6), a(7)=>r4(5), a(6)=>
      r4(4), a(5)=>r4(3), a(4)=>r4(2), a(3)=>r4(1), a(2)=>r4(0), a(1)=>
      debug_num_5_0_EXMPLR540, a(0)=>debug_num_5_0_EXMPLR540, b(11)=>r6(12), 
      b(10)=>r6(11), b(9)=>r6(10), b(8)=>r6(9), b(7)=>r6(8), b(6)=>r6(7), 
      b(5)=>r6(6), b(4)=>r6(5), b(3)=>r6(4), b(2)=>r6(3), b(1)=>r6(2), b(0)
      =>r6(1), d(11)=>sub_out_12, d(10)=>sub_out_11, d(9)=>sub_out_10, d(8)
      =>sub_out_9, d(7)=>sub_out_8, d(6)=>sub_out_7, d(5)=>DANGLING(0,17), 
      d(4)=>DANGLING(0,18), d(3)=>DANGLING(0,19), d(2)=>DANGLING(0,20), d(1)
      =>DANGLING(0,21), d(0)=>DANGLING(0,22), cout=>rtlcn1880);
   mem : ram_new_0_work_kirsch_8_8_main_unfold_1777 port map ( wr_data1(7)=>
      i_pixel(7), wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), 
      wr_data1(4)=>i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>
      i_pixel(2), wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), 
      rd_data1(7)=>mem_out_0(7), rd_data1(6)=>mem_out_0(6), rd_data1(5)=>
      mem_out_0(5), rd_data1(4)=>mem_out_0(4), rd_data1(3)=>mem_out_0(3), 
      rd_data1(2)=>mem_out_0(2), rd_data1(1)=>mem_out_0(1), rd_data1(0)=>
      mem_out_0(0), addr1(7)=>column(7), addr1(6)=>column(6), addr1(5)=>
      column(5), addr1(4)=>column(4), addr1(3)=>column(3), addr1(2)=>
      column(2), addr1(1)=>column(1), addr1(0)=>column(0), wr_clk1=>i_clock, 
      rd_clk1=>i_clock, wr_ena1=>mem_wren(0), rd_ena1=>
      debug_num_5_1_EXMPLR541, ena1=>debug_num_5_1_EXMPLR541, rst1=>
      debug_num_5_0_EXMPLR540, regce1=>debug_num_5_1_EXMPLR541, regrst1=>
      debug_num_5_0_EXMPLR540);
   mem_0 : ram_new_1_work_kirsch_8_8_main_unfold_1777 port map ( wr_data1(7)
      =>i_pixel(7), wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), 
      wr_data1(4)=>i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>
      i_pixel(2), wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), 
      rd_data1(7)=>mem_out_1(7), rd_data1(6)=>mem_out_1(6), rd_data1(5)=>
      mem_out_1(5), rd_data1(4)=>mem_out_1(4), rd_data1(3)=>mem_out_1(3), 
      rd_data1(2)=>mem_out_1(2), rd_data1(1)=>mem_out_1(1), rd_data1(0)=>
      mem_out_1(0), addr1(7)=>column(7), addr1(6)=>column(6), addr1(5)=>
      column(5), addr1(4)=>column(4), addr1(3)=>column(3), addr1(2)=>
      column(2), addr1(1)=>column(1), addr1(0)=>column(0), wr_clk1=>i_clock, 
      rd_clk1=>i_clock, wr_ena1=>mem_wren(1), rd_ena1=>
      debug_num_5_1_EXMPLR541, ena1=>debug_num_5_1_EXMPLR541, rst1=>
      debug_num_5_0_EXMPLR540, regce1=>debug_num_5_1_EXMPLR541, regrst1=>
      debug_num_5_0_EXMPLR540);
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
      a(0)=>o_valid_EXMPLR525, d=>rtlc12n82);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity top_kirsch is 
   port (
      nrst : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_nrst : OUT std_logic ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (16 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_sevenseg_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_5 : OUT std_logic_vector (7 DOWNTO 0)) ;
end top_kirsch ;

architecture main of top_kirsch is 
   component uw_uart
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         kirschout : IN std_logic ;
         kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
         o_valid : IN std_logic ;
         i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         o_pixavail : OUT std_logic ;
         rxflex : IN std_logic ;
         txflex : OUT std_logic) ;
   end component ;
   component kirsch_8_8
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
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
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
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_mode_EXMPLR570: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR566, pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_sevenseg_7_EXMPLR567, rtlc1n224, rtlc1n225, rtlc1n228, rtlc1n230, 
      rtlc1n232, rtlc1n233, rtlc1n236, rtlc1n144, rtlc1n145, rtlc1n148, 
      rtlc1n150, rtlc1n152, rtlc1n153, rtlc1n156, not_rtlc1n224, 
      not_rtlc1n225, not_rtlc1n233, not_rtlc1n144, not_rtlc1n145, 
      not_rtlc1n153, rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs5, rtlcs8, 
      rtlcs9, rtlcs10, rtlcs11, rtlcs13, rtlcs15, rtlcs16, rtlcs17, rtlcs18, 
      rtlcs19, rtlcs20, rtlcs22, rtlcs23, rtlcs24, rtlcs25, rtlcs27, rtlcs29, 
      rtlcs31, rtlcs32, rtlcs33, rtlcs34, rtlcs35, rtlcs36, rtlcs37, rtlcs40, 
      rtlcs41, rtlcs42, rtlcs43, rtlcs45, rtlcs47, rtlcs48, rtlcs49, rtlcs50, 
      rtlcs51, rtlcs52, rtlcs54, rtlcs55, rtlcs56, rtlcs57, rtlcs59, rtlcs61, 
      rtlcs63, rtlcs256, rtlcs257, not_rowcount_2, not_rowcount_0, 
      not_rowcount_3, not_rowcount_1, not_rowcount_6, not_rowcount_4, 
      not_rowcount_7, not_rowcount_5, debug_led_red_0_EXMPLR568, 
      rtlc_108_or_76_nx0, rtlc_170_or_82_nx0, rtlc_898_and_120_nx0, 
      rtlc_914_and_121_nx0, rtlc_937_and_122_nx0, rtlc_953_and_123_nx0: 
   std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_sevenseg(15) <= o_sevenseg_7_EXMPLR567 ;
   o_sevenseg(7) <= o_sevenseg_7_EXMPLR567 ;
   o_mode(1) <= o_mode_EXMPLR570(1) ;
   o_mode(0) <= o_mode_EXMPLR570(0) ;
   o_nrst <= o_nrst_EXMPLR566 ;
   debug_led_red(16) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(15) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(14) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(13) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(12) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(11) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(10) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(9) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(8) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(7) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(6) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(5) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(4) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(3) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(2) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(1) <= debug_led_red_0_EXMPLR568 ;
   debug_led_red(0) <= debug_led_red_0_EXMPLR568 ;
   debug_led_grn(5) <= debug_led_red_0_EXMPLR568 ;
   debug_led_grn(4) <= debug_led_red_0_EXMPLR568 ;
   debug_led_grn(3) <= debug_led_red_0_EXMPLR568 ;
   debug_led_grn(2) <= debug_led_red_0_EXMPLR568 ;
   debug_led_grn(1) <= debug_led_red_0_EXMPLR568 ;
   debug_led_grn(0) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_0(7) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_0(6) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_0(5) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_0(4) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_0(3) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_0(2) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_0(1) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_0(0) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_1(7) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_1(6) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_1(5) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_1(4) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_1(3) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_1(2) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_1(1) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_1(0) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_2(7) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_2(6) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_2(5) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_2(4) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_2(3) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_2(2) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_2(1) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_2(0) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_3(7) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_3(6) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_3(5) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_3(4) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_3(3) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_3(2) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_3(1) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_3(0) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_4(7) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_4(6) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_4(5) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_4(4) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_4(3) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_4(2) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_4(1) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_4(0) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_5(7) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_5(6) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_5(5) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_5(4) <= o_sevenseg_7_EXMPLR567 ;
   debug_sevenseg_5(3) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_5(2) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_5(1) <= debug_led_red_0_EXMPLR568 ;
   debug_sevenseg_5(0) <= debug_led_red_0_EXMPLR568 ;
   o_sevenseg_7_EXMPLR567 <= '1' ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>o_nrst_EXMPLR566, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>o_mode_EXMPLR570(1), i_mode(0)
      =>o_mode_EXMPLR570(0), datain(7)=>pixel(7), datain(6)=>pixel(6), 
      datain(5)=>pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), 
      datain(2)=>pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), 
      o_pixavail=>pixavail, rxflex=>rxflex, txflex=>txflex);
   u_kirsch : kirsch_8_8 port map ( i_clock=>clk, i_reset=>o_nrst_EXMPLR566, 
      i_valid=>pixavail, i_pixel(7)=>pixel(7), i_pixel(6)=>pixel(6), 
      i_pixel(5)=>pixel(5), i_pixel(4)=>pixel(4), i_pixel(3)=>pixel(3), 
      i_pixel(2)=>pixel(2), i_pixel(1)=>pixel(1), i_pixel(0)=>pixel(0), 
      o_valid=>o_valid, o_edge=>kirschout, o_dir(2)=>dir(2), o_dir(1)=>
      dir(1), o_dir(0)=>dir(0), o_mode(1)=>o_mode_EXMPLR570(1), o_mode(0)=>
      o_mode_EXMPLR570(0), o_row(7)=>rowcount(7), o_row(6)=>rowcount(6), 
      o_row(5)=>rowcount(5), o_row(4)=>rowcount(4), o_row(3)=>rowcount(3), 
      o_row(2)=>rowcount(2), o_row(1)=>rowcount(1), o_row(0)=>rowcount(0), 
      debug_key(3)=>DANGLING(0,0), debug_key(2)=>DANGLING(0,1), debug_key(1)
      =>DANGLING(0,2), debug_switch(17)=>DANGLING(0,3), debug_switch(16)=>
      DANGLING(0,4), debug_switch(15)=>DANGLING(0,5), debug_switch(14)=>
      DANGLING(0,6), debug_switch(13)=>DANGLING(0,7), debug_switch(12)=>
      DANGLING(0,8), debug_switch(11)=>DANGLING(0,9), debug_switch(10)=>
      DANGLING(0,10), debug_switch(9)=>DANGLING(0,11), debug_switch(8)=>
      DANGLING(0,12), debug_switch(7)=>DANGLING(0,13), debug_switch(6)=>
      DANGLING(0,14), debug_switch(5)=>DANGLING(0,15), debug_switch(4)=>
      DANGLING(0,16), debug_switch(3)=>DANGLING(0,17), debug_switch(2)=>
      DANGLING(0,18), debug_switch(1)=>DANGLING(0,19), debug_switch(0)=>
      DANGLING(0,20), debug_led_red(17)=>DANGLING(0,21), debug_led_red(16)=>
      DANGLING(0,22), debug_led_red(15)=>DANGLING(0,23), debug_led_red(14)=>
      DANGLING(0,24), debug_led_red(13)=>DANGLING(0,25), debug_led_red(12)=>
      DANGLING(0,26), debug_led_red(11)=>DANGLING(0,27), debug_led_red(10)=>
      DANGLING(0,28), debug_led_red(9)=>DANGLING(0,29), debug_led_red(8)=>
      DANGLING(0,30), debug_led_red(7)=>DANGLING(0,31), debug_led_red(6)=>
      DANGLING(0,32), debug_led_red(5)=>DANGLING(0,33), debug_led_red(4)=>
      DANGLING(0,34), debug_led_red(3)=>DANGLING(0,35), debug_led_red(2)=>
      DANGLING(0,36), debug_led_red(1)=>DANGLING(0,37), debug_led_red(0)=>
      DANGLING(0,38), debug_led_grn(5)=>DANGLING(0,39), debug_led_grn(4)=>
      DANGLING(0,40), debug_led_grn(3)=>DANGLING(0,41), debug_led_grn(2)=>
      DANGLING(0,42), debug_led_grn(1)=>DANGLING(0,43), debug_led_grn(0)=>
      DANGLING(0,44), debug_num_0(3)=>DANGLING(0,45), debug_num_0(2)=>
      DANGLING(0,46), debug_num_0(1)=>DANGLING(0,47), debug_num_0(0)=>
      DANGLING(0,48), debug_num_1(3)=>DANGLING(0,49), debug_num_1(2)=>
      DANGLING(0,50), debug_num_1(1)=>DANGLING(0,51), debug_num_1(0)=>
      DANGLING(0,52), debug_num_2(3)=>DANGLING(0,53), debug_num_2(2)=>
      DANGLING(0,54), debug_num_2(1)=>DANGLING(0,55), debug_num_2(0)=>
      DANGLING(0,56), debug_num_3(3)=>DANGLING(0,57), debug_num_3(2)=>
      DANGLING(0,58), debug_num_3(1)=>DANGLING(0,59), debug_num_3(0)=>
      DANGLING(0,60), debug_num_4(3)=>DANGLING(0,61), debug_num_4(2)=>
      DANGLING(0,62), debug_num_4(1)=>DANGLING(0,63), debug_num_4(0)=>
      DANGLING(0,64), debug_num_5(3)=>DANGLING(0,65), debug_num_5(2)=>
      DANGLING(0,66), debug_num_5(1)=>DANGLING(0,67), debug_num_5(0)=>
      DANGLING(0,68));
   o_nrst_EXMPLR566 <= NOT nrst ;
   rtlc1_100_or_64 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs5, a(1)=>
      rtlcs17, a(0)=>rtlcs24, d=>rtlc1n236);
   rtlc1_20_or_65 : or_4u_4u port map ( a(3)=>rtlcs34, a(2)=>rtlcs37, a(1)=>
      rtlcs49, a(0)=>rtlcs56, d=>rtlc1n156);
   rtlc_71_or_72 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs1, a(2)=>
      rtlcs3, a(1)=>rtlcs16, a(0)=>rtlcs31, d=>rtlc1n224);
   rtlc_77_or_73 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs8, a(2)=>
      rtlcs15, a(1)=>rtlcs16, a(0)=>rtlcs20, d=>rtlc1n225);
   rtlc_99_or_75 : or_4u_4u port map ( a(3)=>rtlcs9, a(2)=>rtlcs17, a(1)=>
      rtlcs19, a(0)=>rtlcs23, d=>rtlc1n230);
   rtlc_114_or_77 : or_5u_5u port map ( a(4)=>rtlcs4, a(3)=>rtlcs10, a(2)=>
      rtlcs18, a(1)=>rtlcs22, a(0)=>rtlcs27, d=>rtlc1n233);
   rtlc_133_or_78 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs33, a(2)=>
      rtlcs35, a(1)=>rtlcs48, a(0)=>rtlcs63, d=>rtlc1n144);
   rtlc_139_or_79 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs40, a(2)=>
      rtlcs47, a(1)=>rtlcs48, a(0)=>rtlcs52, d=>rtlc1n145);
   rtlc_161_or_81 : or_4u_4u port map ( a(3)=>rtlcs41, a(2)=>rtlcs49, a(1)=>
      rtlcs51, a(0)=>rtlcs55, d=>rtlc1n150);
   rtlc_176_or_83 : or_5u_5u port map ( a(4)=>rtlcs36, a(3)=>rtlcs42, a(2)=>
      rtlcs50, a(1)=>rtlcs54, a(0)=>rtlcs59, d=>rtlc1n153);
   not_rtlc1n224 <= NOT rtlc1n224 ;
   not_rtlc1n225 <= NOT rtlc1n225 ;
   not_rtlc1n233 <= NOT rtlc1n233 ;
   not_rtlc1n144 <= NOT rtlc1n144 ;
   not_rtlc1n145 <= NOT rtlc1n145 ;
   not_rtlc1n153 <= NOT rtlc1n153 ;
   rtlcs2 <= rtlcs3 AND rtlcs1 ;
   rtlcs5 <= rowcount(2) AND rtlcs4 ;
   rtlcs4 <= not_rowcount_1 AND rtlcs1 ;
   rtlcs9 <= rtlcs8 AND rtlcs10 ;
   rtlcs11 <= rowcount(2) AND rtlcs8 ;
   rtlcs13 <= rowcount(3) AND rtlcs15 ;
   rtlcs17 <= rtlcs15 AND rtlcs18 ;
   rtlcs18 <= not_rowcount_3 AND rtlcs20 ;
   rtlcs24 <= rtlcs25 AND rtlcs23 ;
   rtlcs23 <= rowcount(0) AND rtlcs22 ;
   rtlcs27 <= rowcount(1) AND rtlcs25 ;
   rtlcs256 <= rtlcs10 AND not_rowcount_3 ;
   rtlcs29 <= rtlcs256 AND rtlcs31 ;
   rtlcs34 <= rtlcs35 AND rtlcs33 ;
   rtlcs37 <= rowcount(6) AND rtlcs36 ;
   rtlcs36 <= not_rowcount_5 AND rtlcs33 ;
   rtlcs41 <= rtlcs40 AND rtlcs42 ;
   rtlcs43 <= rowcount(6) AND rtlcs40 ;
   rtlcs45 <= rowcount(7) AND rtlcs47 ;
   rtlcs49 <= rtlcs47 AND rtlcs50 ;
   rtlcs50 <= not_rowcount_7 AND rtlcs52 ;
   rtlcs56 <= rtlcs57 AND rtlcs55 ;
   rtlcs55 <= rowcount(4) AND rtlcs54 ;
   rtlcs59 <= rowcount(5) AND rtlcs57 ;
   rtlcs257 <= rtlcs42 AND not_rowcount_7 ;
   rtlcs61 <= rtlcs257 AND rtlcs63 ;
   not_rowcount_2 <= NOT rowcount(2) ;
   rtlcs0 <= rowcount(3) AND not_rowcount_2 ;
   rtlcs3 <= not_rowcount_2 AND rowcount(1) ;
   rtlcs1 <= rowcount(3) AND rowcount(0) ;
   not_rowcount_0 <= NOT rowcount(0) ;
   rtlcs31 <= rowcount(1) AND not_rowcount_0 ;
   not_rowcount_3 <= NOT rowcount(3) ;
   not_rowcount_1 <= NOT rowcount(1) ;
   rtlcs8 <= rowcount(3) AND rowcount(1) ;
   rtlcs15 <= rowcount(2) AND not_rowcount_0 ;
   rtlcs20 <= not_rowcount_1 AND not_rowcount_0 ;
   rtlcs25 <= not_rowcount_3 AND rowcount(0) ;
   rtlcs22 <= not_rowcount_2 AND not_rowcount_1 ;
   rtlcs10 <= not_rowcount_2 AND not_rowcount_0 ;
   not_rowcount_6 <= NOT rowcount(6) ;
   rtlcs32 <= rowcount(7) AND not_rowcount_6 ;
   rtlcs35 <= not_rowcount_6 AND rowcount(5) ;
   rtlcs33 <= rowcount(7) AND rowcount(4) ;
   not_rowcount_4 <= NOT rowcount(4) ;
   rtlcs63 <= rowcount(5) AND not_rowcount_4 ;
   not_rowcount_7 <= NOT rowcount(7) ;
   not_rowcount_5 <= NOT rowcount(5) ;
   rtlcs40 <= rowcount(7) AND rowcount(5) ;
   rtlcs47 <= rowcount(6) AND not_rowcount_4 ;
   rtlcs52 <= not_rowcount_5 AND not_rowcount_4 ;
   rtlcs57 <= not_rowcount_7 AND rowcount(4) ;
   rtlcs54 <= not_rowcount_6 AND not_rowcount_5 ;
   rtlcs42 <= not_rowcount_6 AND not_rowcount_4 ;
   DFFPC (rtlc1n156,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(14)) ;
   debug_led_red_0_EXMPLR568 <= '0' ;
   DFFPC (not_rtlc1n153,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,
   clk,o_sevenseg(13)) ;
   DFFPC (rtlc1n152,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(12)) ;
   DFFPC (rtlc1n150,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(11)) ;
   DFFPC (rtlc1n148,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(10)) ;
   DFFPC (not_rtlc1n145,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,
   clk,o_sevenseg(9)) ;
   DFFPC (not_rtlc1n144,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,
   clk,o_sevenseg(8)) ;
   DFFPC (rtlc1n236,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(6)) ;
   DFFPC (not_rtlc1n233,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,
   clk,o_sevenseg(5)) ;
   DFFPC (rtlc1n232,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(4)) ;
   DFFPC (rtlc1n230,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(3)) ;
   DFFPC (rtlc1n228,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,clk,
   o_sevenseg(2)) ;
   DFFPC (not_rtlc1n225,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,
   clk,o_sevenseg(1)) ;
   DFFPC (not_rtlc1n224,debug_led_red_0_EXMPLR568,debug_led_red_0_EXMPLR568,
   clk,o_sevenseg(0)) ;
   rtlc_108_or_76_nx0 <= rtlcs11 OR rtlcs13 ;
   rtlc1n232 <= rtlc_108_or_76_nx0 OR rtlcs29 ;
   rtlc_170_or_82_nx0 <= rtlcs43 OR rtlcs45 ;
   rtlc1n152 <= rtlc_170_or_82_nx0 OR rtlcs61 ;
   rtlc_898_and_120_nx0 <= not_rowcount_3 AND rowcount(2) ;
   rtlcs16 <= rtlc_898_and_120_nx0 AND not_rowcount_1 ;
   rtlc_914_and_121_nx0 <= rowcount(2) AND rowcount(1) ;
   rtlcs19 <= rtlc_914_and_121_nx0 AND rowcount(0) ;
   rtlc_937_and_122_nx0 <= not_rowcount_7 AND rowcount(6) ;
   rtlcs48 <= rtlc_937_and_122_nx0 AND not_rowcount_5 ;
   rtlc_953_and_123_nx0 <= rowcount(6) AND rowcount(5) ;
   rtlcs51 <= rtlc_953_and_123_nx0 AND rowcount(4) ;
   modgen_or_0 : or_3u_3u port map ( a(2)=>rtlcs16, a(1)=>rtlcs23, a(0)=>
      rtlcs25, d=>rtlc1n228);
   modgen_or_1 : or_3u_3u port map ( a(2)=>rtlcs48, a(1)=>rtlcs55, a(0)=>
      rtlcs57, d=>rtlc1n148);
end main ;

