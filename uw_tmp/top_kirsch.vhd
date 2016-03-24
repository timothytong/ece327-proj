
-- 
-- Definition of  top_kirsch
-- 
--      Wed Mar 23 21:05:46 2016
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
   signal RxErr_EXMPLR34, RxRDY_EXMPLR35: std_logic ;
   
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
   
   signal inc_d_0, nx52268z1, inc_d_1, nx54262z2, inc_d_2, nx54262z1, 
      inc_d_3, nx58250z4, inc_d_4, nx58250z3, inc_d_5, nx58250z2, inc_d_6, 
      nx58250z1, inc_d_7, nx17096z3, inc_d_8, nx17096z2, inc_d_9, nx17096z1, 
      inc_d_10, inc_d_0_dup_95, nx12704z1, inc_d_1_dup_97, nx28532z7, 
      inc_d_2_dup_99, nx28532z6, inc_d_3_dup_101, nx28532z5, inc_d_4_dup_103, 
      nx28532z4, inc_d_5_dup_105, nx28532z3, inc_d_6_dup_107, nx28532z2, 
      inc_d_7_dup_109, nx28532z1, inc_d_8_dup_111, nx18093z3, 
      inc_d_9_dup_113, nx18093z2, inc_d_10_dup_114, nx18093z1, inc_d_11, PWR, 
      nx53265z1, nx35603z1, nx54636z2, nx15541z1, nx13547z1, nx14544z1, 
      nx12550z1, nx34394z1, nx30017z1, nx32400z1, nx11553z1, nx15376z1, 
      nx4608z1, nx5605z1, nx48926z2, nx48926z1, nx49923z1, nx50920z1, 
      nx51917z1, nx11364z2, nx11364z1, nx10367z1, nx9370z1, nx8373z1, a_3, 
      nx50920z2, nx32400z2, nx8373z2, nx15541z2, nx4608z2, nx27627z2, 
      nx15541z3, nx53265z3, nx53265z5, nx32400z3, nx32400z4, nx32400z5, 
      nx53265z6, nx34394z2, nx51917z2, nx4608z3, nx13547z2, nx32400z6, 
      nx53265z4, nx27627z3, NOT_Tx_Reg_7, NOT_Din_7, NOT_Tx_Reg_6, NOT_Din_5, 
      NOT_Tx_Reg_5, NOT_Tx_Reg_4, NOT_Din_3, NOT_Tx_Reg_3, NOT_Din_2, 
      NOT_Tx_Reg_2, NOT_Din_1, nx27627z4, NOT_Din_0, nx18332z1, nx27627z1, 
      nx54636z1, NOT_Rx, NOT_Tx_Reg_8, NOT_Tx_Reg_14n6ss1_8, nx53265z2, 
      nx16538z1: std_logic ;

begin
   RxErr <= RxErr_EXMPLR34 ;
   RxRDY <= RxRDY_EXMPLR35 ;
   TxBusy <= '0';
   PWR <= '1';
   NOT_Din_7 <= NOT Din(7);
   NOT_Din_5 <= NOT Din(5);
   NOT_Din_3 <= NOT Din(3);
   NOT_Din_2 <= NOT Din(2);
   NOT_Din_1 <= NOT Din(1);
   NOT_Din_0 <= NOT Din(0);
   Tx <= NOT nx18332z1;
   Rx_r <= NOT nx54636z1;
   NOT_Rx <= NOT Rx;
   RxFSM(0) <= NOT nx53265z2;
   reg_q_9_dup_1 : cycloneii_lcell_ff port map ( regout=>TxDiv(9), datain=>
      inc_d_9_dup_113, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>RxDiv(9), datain=>inc_d_9, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_8_dup_2 : cycloneii_lcell_ff port map ( regout=>TxDiv(8), datain=>
      inc_d_8_dup_111, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>RxDiv(8), datain=>inc_d_8, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_7_dup_3 : cycloneii_lcell_ff port map ( regout=>TxDiv(7), datain=>
      inc_d_7_dup_109, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>RxDiv(7), datain=>inc_d_7, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_6_dup_4 : cycloneii_lcell_ff port map ( regout=>TxDiv(6), datain=>
      inc_d_6_dup_107, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>RxDiv(6), datain=>inc_d_6, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_5_dup_5 : cycloneii_lcell_ff port map ( regout=>TxDiv(5), datain=>
      inc_d_5_dup_105, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>RxDiv(5), datain=>inc_d_5, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_4_dup_6 : cycloneii_lcell_ff port map ( regout=>TxDiv(4), datain=>
      inc_d_4_dup_103, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>RxDiv(4), datain=>inc_d_4, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_3_dup_7 : cycloneii_lcell_ff port map ( regout=>TxDiv(3), datain=>
      inc_d_3_dup_101, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>RxDiv(3), datain=>inc_d_3, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_2_dup_8 : cycloneii_lcell_ff port map ( regout=>TxDiv(2), datain=>
      inc_d_2_dup_99, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>RxDiv(2), datain=>inc_d_2, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>TxDiv(11), datain=>
      inc_d_11, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_10_dup_0 : cycloneii_lcell_ff port map ( regout=>TxDiv(10), datain
      =>inc_d_10_dup_114, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>RxDiv(10), datain=>
      inc_d_10, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_1_dup_9 : cycloneii_lcell_ff port map ( regout=>TxDiv(1), datain=>
      inc_d_1_dup_97, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>RxDiv(1), datain=>inc_d_1, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_q_0_dup_10 : cycloneii_lcell_ff port map ( regout=>TxDiv(0), datain=>
      inc_d_0_dup_95, clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx32400z1);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>RxDiv(0), datain=>inc_d_0, 
      clk=>CLK, ena=>PWR, aclr=>RST, sclr=>nx53265z1);
   reg_Tx_Reg_8 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_8, datain
      =>NOT_Tx_Reg_14n6ss1_8, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_7 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_7, datain
      =>NOT_Din_7, sdata=>NOT_Tx_Reg_8, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_6 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_6, datain
      =>NOT_Din_5, sdata=>NOT_Tx_Reg_7, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_5 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_5, datain
      =>NOT_Din_5, sdata=>NOT_Tx_Reg_6, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_4, datain
      =>NOT_Din_3, sdata=>NOT_Tx_Reg_5, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_3, datain
      =>NOT_Din_2, sdata=>NOT_Tx_Reg_4, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>NOT_Tx_Reg_2, datain
      =>NOT_Din_1, sdata=>NOT_Tx_Reg_3, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>nx27627z4, datain=>
      NOT_Din_0, sdata=>NOT_Tx_Reg_2, clk=>CLK, ena=>nx35603z1, aclr=>RST, 
      sload=>TxFSM(1));
   reg_Tx_Reg_0 : cycloneii_lcell_ff port map ( regout=>nx18332z1, datain=>
      nx27627z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK, aclr=>RST);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK, aclr=>RST);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK, aclr=>RST);
   reg_Rx_r : cycloneii_lcell_ff port map ( regout=>nx54636z1, datain=>
      NOT_Rx, clk=>CLK, aclr=>RST);
   reg_Rx_Reg_7 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(7), datain=>
      Rx_r, clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_Rx_Reg_6 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(6), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_Rx_Reg_5 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(5), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_Rx_Reg_4 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(4), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_Rx_Reg_3 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(3), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_Rx_Reg_2 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(2), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_Rx_Reg_1 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(1), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_Rx_Reg_0 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(0), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx54636z2, aclr=>RST);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR35, datain
      =>nx30017z1, clk=>CLK, aclr=>RST);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM(5), datain=>
      nx11553z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_4 : cycloneii_lcell_ff port map ( regout=>RxFSM(4), datain=>
      nx12550z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM(3), datain=>
      nx13547z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM(2), datain=>
      nx14544z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM(1), datain=>
      RxFSM(0), clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>nx53265z2, datain=>
      nx16538z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR34, datain
      =>nx15376z1, clk=>CLK, aclr=>RST);
   reg_RxDivisor_4 : cycloneii_lcell_ff port map ( regout=>RxDivisor_4, 
      datain=>PWR, clk=>CLK, aclr=>RST);
   reg_Dout_7 : cycloneii_lcell_ff port map ( regout=>Dout(7), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_6 : cycloneii_lcell_ff port map ( regout=>Dout(6), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_5 : cycloneii_lcell_ff port map ( regout=>Dout(5), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_4 : cycloneii_lcell_ff port map ( regout=>Dout(4), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_3 : cycloneii_lcell_ff port map ( regout=>Dout(3), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_2 : cycloneii_lcell_ff port map ( regout=>Dout(2), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_1 : cycloneii_lcell_ff port map ( regout=>Dout(1), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_0 : cycloneii_lcell_ff port map ( regout=>Dout(0), datain=>
      Rx_Reg(0), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK, ena=>nx48926z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK, ena=>nx11364z2, aclr=>RST);
   ix18093z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, dataa=>TxDiv(11), datad=>PWR, cin=>
      nx18093z1);
   ix18093z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9_dup_113, cout=>nx18093z2, dataa=>TxDiv(9), 
      datad=>PWR, cin=>nx18093z3);
   ix28532z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8_dup_111, cout=>nx18093z3, dataa=>TxDiv(8), 
      datad=>PWR, cin=>nx28532z1);
   ix28532z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_109, cout=>nx28532z1, dataa=>TxDiv(7), 
      datad=>PWR, cin=>nx28532z2);
   ix28532z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_107, cout=>nx28532z2, dataa=>TxDiv(6), 
      datad=>PWR, cin=>nx28532z3);
   ix54262z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx54262z1, dataa=>RxDiv(2), datad
      =>PWR, cin=>nx54262z2);
   ix28532z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_105, cout=>nx28532z3, dataa=>TxDiv(5), 
      datad=>PWR, cin=>nx28532z4);
   ix28532z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_103, cout=>nx28532z4, dataa=>TxDiv(4), 
      datad=>PWR, cin=>nx28532z5);
   ix28532z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_101, cout=>nx28532z5, dataa=>TxDiv(3), 
      datad=>PWR, cin=>nx28532z6);
   ix28532z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_99, cout=>nx28532z6, dataa=>TxDiv(2), 
      datad=>PWR, cin=>nx28532z7);
   ix12704z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_97, cout=>nx28532z7, dataa=>TxDiv(1), 
      datad=>PWR, cin=>nx12704z1);
   ix12704z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx12704z1, dataa=>TxDiv(0), datad=>PWR);
   ix17415z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0_dup_95, datad=>TxDiv(0));
   ix17096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, dataa=>RxDiv(10), datad=>PWR, cin=>
      nx17096z1);
   ix17096z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx17096z1, dataa=>RxDiv(9), datad
      =>PWR, cin=>nx17096z2);
   ix17096z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx17096z2, dataa=>RxDiv(8), datad
      =>PWR, cin=>nx17096z3);
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx17096z3, dataa=>RxDiv(7), datad
      =>PWR, cin=>nx58250z1);
   ix58250z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx58250z1, dataa=>RxDiv(6), datad
      =>PWR, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx58250z2, dataa=>RxDiv(5), datad
      =>PWR, cin=>nx58250z3);
   ix18093z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10_dup_114, cout=>nx18093z1, dataa=>
      TxDiv(10), datad=>PWR, cin=>nx18093z2);
   ix52268z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx54262z2, dataa=>RxDiv(1), datad
      =>PWR, cin=>nx52268z1);
   ix52268z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx52268z1, dataa=>RxDiv(0), datad=>PWR);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx58250z3, dataa=>RxDiv(4), datad
      =>PWR, cin=>nx58250z4);
   ix54262z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx58250z4, dataa=>RxDiv(3), datad
      =>PWR, cin=>nx54262z1);
   ix51271z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0, datad=>RxDiv(0));
   ix27627z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx27627z3, dataa=>nx27627z4, datab=>TopTx, datac
      =>TxFSM(1), datad=>TxFSM(0));
   ix53265z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx53265z4, dataa=>RxDiv(2), datab=>RxDiv(1));
   ix32400z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx32400z6, dataa=>TxDiv(3), datab=>TxDiv(2));
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2)
   );
   ix4608z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>nx4608z3, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>TxBitCnt(1), datad=>TxBitCnt(0));
   ix51917z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx51917z2, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0));
   ix34394z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx34394z2, dataa=>RxDiv(2), datab=>RxDiv(1), 
      datac=>RxDiv(0), datad=>nx53265z2);
   ix53265z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx53265z6, dataa=>RxDiv(10), datab=>RxDiv(9), 
      datac=>RxDiv(8), datad=>RxDiv(5));
   ix32400z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z5, dataa=>TxDiv(11), datab=>TxDiv(10), 
      datac=>TxDiv(9), datad=>TxDiv(6));
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z4, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(5), datad=>TxDiv(4));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx32400z3, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(5), datad=>TxDiv(4));
   ix53265z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8001") 
       port map ( combout=>nx53265z5, dataa=>RxDivisor_4, datab=>RxDiv(7), 
      datac=>RxDiv(6), datad=>RxDiv(4));
   ix53265z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0900") 
       port map ( combout=>nx53265z3, dataa=>RxDivisor_4, datab=>RxDiv(3), 
      datac=>RxDiv(0), datad=>nx53265z4);
   ix15541z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"ac00") 
       port map ( combout=>nx15541z3, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM(5), datad=>nx53265z2);
   ix27627z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"300b") 
       port map ( combout=>nx27627z2, dataa=>LD, datab=>nx18332z1, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix4608z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3335") 
       port map ( combout=>nx4608z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix15541z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx15541z2, dataa=>Rx, datab=>RxFSM(5));
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx8373z2, dataa=>RxBitCnt(1), datab=>RxBitCnt(0)
   );
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"9180") 
       port map ( combout=>nx32400z2, dataa=>RxDivisor_4, datab=>TxDiv(0), 
      datac=>nx32400z3, datad=>nx32400z4);
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix34394z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>a_3, dataa=>RxDivisor_4, datab=>RxDiv(3));
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a060") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>nx53265z2, datad=>nx8373z2);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a00") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>RxBitCnt(1), 
      datac=>RxBitCnt(0), datad=>nx53265z2);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6060") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>nx53265z2);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx11364z1, dataa=>RxBitCnt(0), datab=>nx53265z2);
   ix11364z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8b8b") 
       port map ( combout=>nx11364z2, dataa=>TopRx, datab=>RxFSM(3), datac=>
      nx53265z2);
   ix51917z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3bce") 
       port map ( combout=>nx51917z1, dataa=>TopTx, datab=>TxBitCnt(3), 
      datac=>TxFSM(1), datad=>nx51917z2);
   ix50920z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00a9") 
       port map ( combout=>nx50920z1, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0), datad=>nx50920z2);
   ix49923z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c341") 
       port map ( combout=>nx49923z1, dataa=>TopTx, datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0), datad=>TxFSM(1));
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3b3b") 
       port map ( combout=>nx48926z1, dataa=>TopTx, datab=>TxBitCnt(0), 
      datac=>TxFSM(1));
   ix48926z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx48926z2, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c6c") 
       port map ( combout=>nx5605z1, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix4608z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c1c3") 
       port map ( combout=>nx4608z1, dataa=>TxFSM(1), datab=>TxFSM(0), datac
      =>nx4608z2, datad=>nx4608z3);
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR34, datab=>
      RxRDY_EXMPLR35, datac=>RxFSM(5));
   ix27627z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"000e") 
       port map ( combout=>nx27627z1, dataa=>nx18332z1, datab=>TopTx, datac
      =>nx27627z2, datad=>nx27627z3);
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx11553z1, dataa=>nx54636z1, datab=>RxFSM(4), 
      datac=>RxFSM(1));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4000") 
       port map ( combout=>nx32400z1, dataa=>TxDiv(1), datab=>nx32400z2, 
      datac=>nx32400z5, datad=>nx32400z6);
   ix30017z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx30017z1, dataa=>TopRx, datab=>nx54636z1, datac
      =>RxFSM(4));
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx34394z1, dataa=>a_3, datab=>nx53265z5, datac=>
      nx53265z6, datad=>nx34394z2);
   ix12550z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1000") 
       port map ( combout=>nx12550z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>RxFSM(2), datad=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2323") 
       port map ( combout=>nx16538z1, dataa=>nx54636z1, datab=>RxFSM(5), 
      datac=>RxFSM(4));
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx14544z1, dataa=>nx54636z1, datab=>RxFSM(3), 
      datac=>RxFSM(1));
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e0f0") 
       port map ( combout=>nx13547z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>RxFSM(2), datad=>nx13547z2);
   ix15541z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff20") 
       port map ( combout=>nx15541z1, dataa=>nx54636z1, datab=>nx53265z2, 
      datac=>nx15541z2, datad=>nx15541z3);
   ix54636z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx54636z2, dataa=>TopRx, datab=>RxFSM(3));
   ix35603z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx35603z1, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix35603z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_8, dataa=>Din(7), datab=>
      TxFSM(1));
   ix53265z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d555") 
       port map ( combout=>nx53265z1, dataa=>nx53265z2, datab=>nx53265z3, 
      datac=>nx53265z5, datad=>nx53265z6);
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
   signal o_pixavail_EXMPLR49: std_logic_vector (7 DOWNTO 7) ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, sdout_6, sdout_4, sdout_3, sdout_2, sdout_1, sdout_0
   : std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, inc_d_0, nx22081z15, inc_d_1, nx22081z14, inc_d_2, 
      nx22081z13, inc_d_3, nx22081z12, inc_d_4, nx22081z11, inc_d_5, 
      nx22081z10, inc_d_6, nx22081z9, inc_d_7, nx22081z8, inc_d_8, nx22081z7, 
      inc_d_9, nx22081z6, inc_d_10, nx22081z5, inc_d_11, nx22081z4, inc_d_12, 
      nx22081z3, inc_d_13, nx22081z2, inc_d_14, nx22081z1, inc_d_15, rawrx, 
      GND_EXMPLR60, PWR, mdata_7n5ss1_6, mdata_7n5ss1_4, nx39739z1, 
      nx39480z3, nx39480z2, nx39865z1, nx21084z1, nx58116z1, nx39480z1, 
      nx39739z2, nx33757z1, nx34754z1, nx35751z1, nx36748z1, nx18433z1, 
      nx39480z4, nx39480z5, nx39480z6, nx39480z7, nx39739z3, nx36748z2: 
   std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_pixavail <= o_pixavail_EXMPLR49(7) ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_6, Din(6)=>
      GND_EXMPLR60, Din(5)=>sdout_4, Din(4)=>GND_EXMPLR60, Din(3)=>sdout_3, 
      Din(2)=>sdout_2, Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>
      rawrx, Baud=>PWR, Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)=>sdin(5), 
      Dout(4)=>sdin(4), Dout(3)=>sdin(3), Dout(2)=>sdin(2), Dout(1)=>sdin(1), 
      Dout(0)=>sdin(0), Tx=>txflex, TxBusy=>DANGLING(0,0), RxErr=>rxerr, 
      RxRDY=>rxrdy);
   GND_EXMPLR60 <= '0';
   PWR <= '1';
   reg_state : cycloneii_lcell_ff port map ( regout=>state, datain=>
      nx39865z1, clk=>clk, aclr=>rst);
   reg_sdout_6 : cycloneii_lcell_ff port map ( regout=>sdout_6, datain=>
      mdata_7, clk=>clk, ena=>nx39865z1, aclr=>rst);
   reg_sdout_4 : cycloneii_lcell_ff port map ( regout=>sdout_4, datain=>
      mdata_5, clk=>clk, ena=>nx39865z1, aclr=>rst);
   reg_sdout_3 : cycloneii_lcell_ff port map ( regout=>sdout_3, datain=>
      mdata_3, clk=>clk, ena=>nx39865z1, aclr=>rst);
   reg_sdout_2 : cycloneii_lcell_ff port map ( regout=>sdout_2, datain=>
      mdata_2, clk=>clk, ena=>nx39865z1, aclr=>rst);
   reg_sdout_1 : cycloneii_lcell_ff port map ( regout=>sdout_1, datain=>
      mdata_1, clk=>clk, ena=>nx39865z1, aclr=>rst);
   reg_sdout_0 : cycloneii_lcell_ff port map ( regout=>sdout_0, datain=>
      mdata_0, clk=>clk, ena=>nx39865z1, aclr=>rst);
   reg_rdata_7 : cycloneii_lcell_ff port map ( regout=>rdata(7), datain=>
      sdin(7), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_6 : cycloneii_lcell_ff port map ( regout=>rdata(6), datain=>
      sdin(6), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_5 : cycloneii_lcell_ff port map ( regout=>rdata(5), datain=>
      sdin(5), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_4 : cycloneii_lcell_ff port map ( regout=>rdata(4), datain=>
      sdin(4), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_3 : cycloneii_lcell_ff port map ( regout=>rdata(3), datain=>
      sdin(3), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_2 : cycloneii_lcell_ff port map ( regout=>rdata(2), datain=>
      sdin(2), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_1 : cycloneii_lcell_ff port map ( regout=>rdata(1), datain=>
      sdin(1), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_0 : cycloneii_lcell_ff port map ( regout=>rdata(0), datain=>
      sdin(0), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>waitcount(9), datain=>
      inc_d_9, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>waitcount(8), datain=>
      inc_d_8, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>waitcount(7), datain=>
      inc_d_7, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>waitcount(6), datain=>
      inc_d_6, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>waitcount(5), datain=>
      inc_d_5, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>waitcount(4), datain=>
      inc_d_4, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>waitcount(3), datain=>
      inc_d_3, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>waitcount(2), datain=>
      inc_d_2, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>waitcount(15), datain=>
      inc_d_15, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>waitcount(14), datain=>
      inc_d_14, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>waitcount(13), datain=>
      inc_d_13, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>waitcount(12), datain=>
      inc_d_12, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>waitcount(11), datain=>
      inc_d_11, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>waitcount(10), datain=>
      inc_d_10, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>waitcount(1), datain=>
      inc_d_1, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>waitcount(0), datain=>
      inc_d_0, clk=>clk, ena=>nx21084z1, sclr=>nx39480z2);
   reg_mdata_6 : cycloneii_lcell_ff port map ( regout=>mdata_7, datain=>
      mdata_7n5ss1_6, clk=>clk, ena=>nx39739z2);
   reg_mdata_4 : cycloneii_lcell_ff port map ( regout=>mdata_5, datain=>
      mdata_7n5ss1_4, clk=>clk, ena=>nx39739z2);
   reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>mdata_3, datain=>
      nx36748z1, clk=>clk, ena=>nx39739z2);
   reg_mdata_2 : cycloneii_lcell_ff port map ( regout=>mdata_2, datain=>
      nx35751z1, clk=>clk, ena=>nx39739z2);
   reg_mdata_1 : cycloneii_lcell_ff port map ( regout=>mdata_1, datain=>
      nx34754z1, clk=>clk, ena=>nx39739z2);
   reg_mdata_0 : cycloneii_lcell_ff port map ( regout=>mdata_0, datain=>
      nx33757z1, clk=>clk, ena=>nx39739z2);
   reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>ld_sdout, datain=>
      nx18433z1, clk=>clk, aclr=>rst);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx39739z2, clk=>clk);
   reg_charavail : cycloneii_lcell_ff port map ( regout=>
      o_pixavail_EXMPLR49(7), datain=>nx58116z1, clk=>clk, aclr=>rst);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>clk);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_15, dataa=>waitcount(15), datad=>PWR, cin=>
      nx22081z1);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_14, cout=>nx22081z1, dataa=>waitcount(14), 
      datad=>PWR, cin=>nx22081z2);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx22081z14, dataa=>waitcount(1), 
      datad=>PWR, cin=>nx22081z15);
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_13, cout=>nx22081z2, dataa=>waitcount(13), 
      datad=>PWR, cin=>nx22081z3);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_12, cout=>nx22081z3, dataa=>waitcount(12), 
      datad=>PWR, cin=>nx22081z4);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_11, cout=>nx22081z4, dataa=>waitcount(11), 
      datad=>PWR, cin=>nx22081z5);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_10, cout=>nx22081z5, dataa=>waitcount(10), 
      datad=>PWR, cin=>nx22081z6);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_9, cout=>nx22081z6, dataa=>waitcount(9), 
      datad=>PWR, cin=>nx22081z7);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_8, cout=>nx22081z7, dataa=>waitcount(8), 
      datad=>PWR, cin=>nx22081z8);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, cout=>nx22081z8, dataa=>waitcount(7), 
      datad=>PWR, cin=>nx22081z9);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx22081z9, dataa=>waitcount(6), 
      datad=>PWR, cin=>nx22081z10);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx22081z10, dataa=>waitcount(5), 
      datad=>PWR, cin=>nx22081z11);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx22081z11, dataa=>waitcount(4), 
      datad=>PWR, cin=>nx22081z12);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx22081z12, dataa=>waitcount(3), 
      datad=>PWR, cin=>nx22081z13);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2, cout=>nx22081z13, dataa=>waitcount(2), 
      datad=>PWR, cin=>nx22081z14);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx22081z15, dataa=>waitcount(0), datad=>PWR);
   ix51271z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0, datad=>waitcount(0));
   ix36748z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbb0") 
       port map ( combout=>nx36748z2, dataa=>i_mode(1), datab=>i_mode(0), 
      datac=>o_pixavail_EXMPLR49(7), datad=>ack);
   ix39739z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcac") 
       port map ( combout=>nx39739z3, dataa=>o_valid, datab=>rxerr, datac=>
      nx39739z1, datad=>nx39480z3);
   ix39480z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx39480z7, dataa=>waitcount(3), datab=>
      waitcount(2), datac=>waitcount(1), datad=>waitcount(0));
   ix39480z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx39480z6, dataa=>waitcount(7), datab=>
      waitcount(6), datac=>waitcount(5), datad=>waitcount(4));
   ix39480z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z5, dataa=>waitcount(11), datab=>
      waitcount(10), datac=>waitcount(9), datad=>waitcount(8));
   ix39480z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z4, dataa=>waitcount(15), datab=>
      waitcount(14), datac=>waitcount(13), datad=>waitcount(12));
   ix18433z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx18433z1, dataa=>state, datab=>dsend, datac=>
      ld_sdout);
   ix36748z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b0b0") 
       port map ( combout=>nx36748z1, dataa=>kirschdir(2), datab=>o_valid, 
      datac=>nx36748z2);
   ix35751z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b0b0") 
       port map ( combout=>nx35751z1, dataa=>kirschdir(1), datab=>o_valid, 
      datac=>nx36748z2);
   ix34754z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b0b0") 
       port map ( combout=>nx34754z1, dataa=>kirschdir(0), datab=>o_valid, 
      datac=>nx36748z2);
   ix33757z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"b0b0") 
       port map ( combout=>nx33757z1, dataa=>kirschout, datab=>o_valid, 
      datac=>nx36748z2);
   ix39739z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5510") 
       port map ( combout=>nx39739z2, dataa=>rst, datab=>i_mode(1), datac=>
      i_mode(0), datad=>nx39739z3);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx39480z1, dataa=>o_pixavail_EXMPLR49(7), datab=>
      ack, datac=>nx39480z2);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx58116z1, dataa=>o_pixavail_EXMPLR49(7), datab=>
      rxrdy);
   ix21084z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx21084z1, dataa=>rst, datab=>
      o_pixavail_EXMPLR49(7), datac=>ack);
   ix39865z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx39865z1, dataa=>state, datab=>dsend);
   ix39480z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx39480z2, dataa=>rst, datab=>o_valid, datac=>
      nx39480z3);
   ix39480z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx39480z3, dataa=>nx39480z4, datab=>nx39480z5, 
      datac=>nx39480z6, datad=>nx39480z7);
   ix39739z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx39739z1, dataa=>o_pixavail_EXMPLR49(7), datab=>
      ack);
   ix37745z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"75ff") 
       port map ( combout=>mdata_7n5ss1_4, dataa=>o_valid, datab=>i_mode(1), 
      datac=>i_mode(0), datad=>nx39739z1);
   ix39739z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"45cf") 
       port map ( combout=>mdata_7n5ss1_6, dataa=>o_valid, datab=>i_mode(1), 
      datac=>i_mode(0), datad=>nx39739z1);
   ix15671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>rawrx, dataa=>rst, datab=>rxflex);
   ix40426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(0), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(0));
   ix41423z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(1), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(1));
   ix42420z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(2), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(2));
   ix43417z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(3), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(3));
   ix44414z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(4), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(4));
   ix45411z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(5), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(5));
   ix46408z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(6), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(6));
   ix47405z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(7), dataa=>o_pixavail_EXMPLR49(7), datab=>
      rdata(7));
end main ;

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
   signal nx54128z1, o_max_dir_2_EXMPLR84, nx54128z8, nx54128z7, nx54128z6, 
      nx54128z5, nx54128z4, nx54128z3, nx54128z2, nx19309z7, nx19309z6, 
      nx19309z5, nx19309z4, nx19309z3, nx19309z2, nx19309z1, 
      nx_custom_max_8_vcc_net: std_logic ;

begin
   o_max_dir(2) <= o_max_dir_2_EXMPLR84 ;
   o_max_dir(1) <= '0';
   ix19309z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d4d4",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_dir_2_EXMPLR84, dataa=>i_pix1(7), datab=>
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
      datac=>o_max_dir_2_EXMPLR84);
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
   signal o_add_op12_stage1_EXMPLR162: std_logic_vector (8 DOWNTO 0) ;
   
   signal o_max_add_stage1_9_EXMPLR144: std_logic ;
   
   signal custom_max_pix_output: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx45057z8, nx45057z7, nx45057z6, nx45057z5, nx45057z4, nx45057z3, 
      nx45057z2, nx15254z10, nx15254z9, nx15254z8, nx15254z7, nx15254z6, 
      nx15254z5, nx15254z4, nx15254z3, o_max_dir_stage1_1_EXMPLR156, 
      i_dir2_stage1_2_EXMPLR157, nx15254z2: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_add_op12_stage1(7) <= o_add_op12_stage1_EXMPLR162(7) ;
   o_add_op12_stage1(6) <= o_add_op12_stage1_EXMPLR162(6) ;
   o_add_op12_stage1(5) <= o_add_op12_stage1_EXMPLR162(5) ;
   o_add_op12_stage1(4) <= o_add_op12_stage1_EXMPLR162(4) ;
   o_add_op12_stage1(3) <= o_add_op12_stage1_EXMPLR162(3) ;
   o_add_op12_stage1(2) <= o_add_op12_stage1_EXMPLR162(2) ;
   o_add_op12_stage1(1) <= o_add_op12_stage1_EXMPLR162(1) ;
   o_add_op12_stage1(0) <= o_add_op12_stage1_EXMPLR162(0) ;
   o_max_dir_stage1(1) <= o_max_dir_stage1_1_EXMPLR156 ;
   u_max1 : custom_max_8 port map ( i_pix1(7)=>i_pix1_stage1(7), i_pix1(6)=>
      i_pix1_stage1(6), i_pix1(5)=>i_pix1_stage1(5), i_pix1(4)=>
      i_pix1_stage1(4), i_pix1(3)=>i_pix1_stage1(3), i_pix1(2)=>
      i_pix1_stage1(2), i_pix1(1)=>i_pix1_stage1(1), i_pix1(0)=>
      i_pix1_stage1(0), i_pix2(7)=>i_pix2_stage1(7), i_pix2(6)=>
      i_pix2_stage1(6), i_pix2(5)=>i_pix2_stage1(5), i_pix2(4)=>
      i_pix2_stage1(4), i_pix2(3)=>i_pix2_stage1(3), i_pix2(2)=>
      i_pix2_stage1(2), i_pix2(1)=>i_pix2_stage1(1), i_pix2(0)=>
      i_pix2_stage1(0), i_dir1(2)=>o_max_dir_stage1_1_EXMPLR156, i_dir1(1)=>
      DANGLING(0,0), i_dir1(0)=>i_dir1_stage1(0), i_dir2(2)=>
      i_dir2_stage1_2_EXMPLR157, i_dir2(1)=>o_max_dir_stage1_1_EXMPLR156, 
      i_dir2(0)=>i_dir2_stage1(0), o_max_dir(2)=>o_max_dir_stage1(2), 
      o_max_dir(1)=>DANGLING(0,1), o_max_dir(0)=>o_max_dir_stage1(0), 
      o_max_pix(7)=>custom_max_pix_output(7), o_max_pix(6)=>
      custom_max_pix_output(6), o_max_pix(5)=>custom_max_pix_output(5), 
      o_max_pix(4)=>custom_max_pix_output(4), o_max_pix(3)=>
      custom_max_pix_output(3), o_max_pix(2)=>custom_max_pix_output(2), 
      o_max_pix(1)=>custom_max_pix_output(1), o_max_pix(0)=>
      custom_max_pix_output(0));
   o_max_dir_stage1_1_EXMPLR156 <= '0';
   i_dir2_stage1_2_EXMPLR157 <= '1';
   o_max_add_stage1_add9_1_ix15254z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(8), cout=>
      o_max_add_stage1_9_EXMPLR144, dataa=>nx15254z2, datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>o_add_op12_stage1_EXMPLR162(8));
   o_max_add_stage1_add9_1_ix15254z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(7), cout=>nx15254z3, dataa=>
      o_add_op12_stage1_EXMPLR162(7), datab=>custom_max_pix_output(7), datad
      =>i_dir2_stage1_2_EXMPLR157, cin=>nx15254z4);
   o_max_add_stage1_add9_1_ix15254z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(6), cout=>nx15254z4, dataa=>
      o_add_op12_stage1_EXMPLR162(6), datab=>custom_max_pix_output(6), datad
      =>i_dir2_stage1_2_EXMPLR157, cin=>nx15254z5);
   o_max_add_stage1_add9_1_ix15254z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(5), cout=>nx15254z5, dataa=>
      o_add_op12_stage1_EXMPLR162(5), datab=>custom_max_pix_output(5), datad
      =>i_dir2_stage1_2_EXMPLR157, cin=>nx15254z6);
   o_max_add_stage1_add9_1_ix15254z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(4), cout=>nx15254z6, dataa=>
      o_add_op12_stage1_EXMPLR162(4), datab=>custom_max_pix_output(4), datad
      =>i_dir2_stage1_2_EXMPLR157, cin=>nx15254z7);
   o_max_add_stage1_add9_1_ix15254z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(3), cout=>nx15254z7, dataa=>
      o_add_op12_stage1_EXMPLR162(3), datab=>custom_max_pix_output(3), datad
      =>i_dir2_stage1_2_EXMPLR157, cin=>nx15254z8);
   o_max_add_stage1_add9_1_ix15254z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(2), cout=>nx15254z8, dataa=>
      o_add_op12_stage1_EXMPLR162(2), datab=>custom_max_pix_output(2), datad
      =>i_dir2_stage1_2_EXMPLR157, cin=>nx15254z9);
   o_max_add_stage1_add9_1_ix15254z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(1), cout=>nx15254z9, dataa=>
      o_add_op12_stage1_EXMPLR162(1), datab=>custom_max_pix_output(1), datad
      =>i_dir2_stage1_2_EXMPLR157, cin=>nx15254z10);
   o_max_add_stage1_add9_1_ix15254z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>o_max_add_stage1(0), cout=>nx15254z10, dataa=>
      custom_max_pix_output(0), datab=>o_add_op12_stage1_EXMPLR162(0), datad
      =>i_dir2_stage1_2_EXMPLR157);
   o_add_op12_stage1_add8_0_ix45057z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(7), cout=>
      o_add_op12_stage1_EXMPLR162(8), dataa=>i_add_op2_stage1(7), datab=>
      i_add_op1_stage1(7), datad=>i_dir2_stage1_2_EXMPLR157, cin=>nx45057z2
   );
   o_add_op12_stage1_add8_0_ix45057z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(6), cout=>nx45057z2, 
      dataa=>i_add_op2_stage1(6), datab=>i_add_op1_stage1(6), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>nx45057z3);
   o_add_op12_stage1_add8_0_ix45057z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(5), cout=>nx45057z3, 
      dataa=>i_add_op2_stage1(5), datab=>i_add_op1_stage1(5), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>nx45057z4);
   o_add_op12_stage1_add8_0_ix45057z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(4), cout=>nx45057z4, 
      dataa=>i_add_op2_stage1(4), datab=>i_add_op1_stage1(4), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>nx45057z5);
   o_add_op12_stage1_add8_0_ix45057z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(3), cout=>nx45057z5, 
      dataa=>i_add_op2_stage1(3), datab=>i_add_op1_stage1(3), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>nx45057z6);
   o_add_op12_stage1_add8_0_ix45057z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(2), cout=>nx45057z6, 
      dataa=>i_add_op2_stage1(2), datab=>i_add_op1_stage1(2), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>nx45057z7);
   o_add_op12_stage1_add8_0_ix45057z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(1), cout=>nx45057z7, 
      dataa=>i_add_op2_stage1(1), datab=>i_add_op1_stage1(1), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>nx45057z8);
   o_add_op12_stage1_add8_0_ix45057z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>o_add_op12_stage1_EXMPLR162(0), cout=>nx45057z8, 
      dataa=>i_add_op1_stage1(0), datab=>i_add_op2_stage1(0), datad=>
      i_dir2_stage1_2_EXMPLR157);
   ix15254z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>o_max_add_stage1(9), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>o_max_add_stage1_9_EXMPLR144);
   ix15254z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx15254z2, datad=>i_dir2_stage1_2_EXMPLR157, cin
      =>nx15254z3);
   ix45057z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f0",
         sum_lutc_input => "cin") 
       port map ( combout=>o_add_op12_stage1(8), datad=>
      i_dir2_stage1_2_EXMPLR157, cin=>o_add_op12_stage1_EXMPLR162(8));
end main_unfold_1434 ;

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
   signal ena1_EXMPLR324: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR324, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR324 <= '1';
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
   signal ena1_EXMPLR354: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR354, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR354 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
   signal o_valid_EXMPLR369: std_logic ;
   
   signal o_edge_EXMPLR370: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_mode_1_EXMPLR371: std_logic ;
   
   signal o_row_EXMPLR388: std_logic_vector (7 DOWNTO 0) ;
   
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
      nx58250z1, inc_d_7, inc_d_0_dup_223, nx25361z1, inc_d_1_dup_225, 
      nx45393z2, inc_d_2_dup_227, nx45393z1, inc_d_3_dup_229, nx19921z4, 
      inc_d_4_dup_231, nx19921z3, inc_d_5_dup_233, nx19921z2, 
      inc_d_6_dup_235, nx19921z1, inc_d_7_dup_237, nx61908z14, nx61908z13, 
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
   
   signal debug_num_5_0_EXMPLR384, debug_num_5_1_EXMPLR385, nx28679z3, 
      nx28679z1, nx35074z1, not_valid_5, nx62927z2, nx61908z2, nx23902z1, 
      nx23902z2, nx28679z2, nx25376z1, nx24856z1, nx23859z1, nx22862z1, 
      nx61908z1, nx62927z1, nx28679z18, nx28679z16, nx28679z14, nx28679z12, 
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
      nx28679z67, nx62927z3, nx62927z4, nx23902z4, nx23902z5, nx23902z3, 
      nx25376z2, nx25376z4, nx25376z6, nx25376z7, nx26373z4, nx25376z5, 
      nx26373z5, nx25376z3, nx25376z8, nx61908z16, nx61908z15, nx26373z2, 
      nx26373z3, nx61908z17, nx25376z9, nx26373z1: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_valid <= o_valid_EXMPLR369 ;
   o_edge <= o_edge_EXMPLR370(2) ;
   o_mode(1) <= o_mode_1_EXMPLR371 ;
   o_row(7) <= o_row_EXMPLR388(7) ;
   o_row(6) <= o_row_EXMPLR388(6) ;
   o_row(5) <= o_row_EXMPLR388(5) ;
   o_row(4) <= o_row_EXMPLR388(4) ;
   o_row(3) <= o_row_EXMPLR388(3) ;
   o_row(2) <= o_row_EXMPLR388(2) ;
   o_row(1) <= o_row_EXMPLR388(1) ;
   o_row(0) <= o_row_EXMPLR388(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR384 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR384 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR384 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR384 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR384 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR384 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR384 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR384 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR384 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR385 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR385 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR385 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR384 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR384 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR385 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR384 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR384 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR384 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR385 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR385 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR385 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR385 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR385 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR384 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR385 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR385 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR384 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR384 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR385 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR385 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR385 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR384 ;
   stage1 : stage1_hardware port map ( i_dir1_stage1(2)=>
      debug_num_5_0_EXMPLR384, i_dir1_stage1(1)=>debug_num_5_0_EXMPLR384, 
      i_dir1_stage1(0)=>nx28679z1, i_dir2_stage1(2)=>debug_num_5_1_EXMPLR385, 
      i_dir2_stage1(1)=>debug_num_5_0_EXMPLR384, i_dir2_stage1(0)=>nx28679z2, 
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
   debug_num_5_0_EXMPLR384 <= '0';
   debug_num_5_1_EXMPLR385 <= '1';
   not_valid_5 <= NOT valid(5);
   o_mode(0) <= NOT nx25376z9;
   sub_out_sub13_0_ix61908z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_12, cout=>nx61908z3, dataa=>r6(12), datab
      =>r4(9), datad=>debug_num_5_1_EXMPLR385, cin=>nx61908z4);
   sub_out_sub13_0_ix61908z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_11, cout=>nx61908z4, dataa=>r6(11), datab
      =>r4(8), datad=>debug_num_5_1_EXMPLR385, cin=>nx61908z5);
   sub_out_sub13_0_ix61908z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_10, cout=>nx61908z5, dataa=>r6(10), datab
      =>r4(7), datad=>debug_num_5_1_EXMPLR385, cin=>nx61908z6);
   sub_out_sub13_0_ix61908z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_9, cout=>nx61908z6, dataa=>r6(9), datab=>
      r4(6), datad=>debug_num_5_1_EXMPLR385, cin=>nx61908z7);
   sub_out_sub13_0_ix61908z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_8, cout=>nx61908z7, dataa=>r6(8), datab=>
      r4(5), datad=>debug_num_5_1_EXMPLR385, cin=>nx61908z8);
   sub_out_sub13_0_ix61908z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>sub_out_7, cout=>nx61908z8, dataa=>r6(7), datab=>
      r4(4), datad=>debug_num_5_1_EXMPLR385, cin=>nx61908z9);
   sub_out_sub13_0_ix61908z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z9, dataa=>r6(6), datab=>r4(3), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx61908z10);
   sub_out_sub13_0_ix61908z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z10, dataa=>r6(5), datab=>r4(2), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx61908z11);
   sub_out_sub13_0_ix61908z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z11, dataa=>r6(4), datab=>r4(1), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx61908z12);
   sub_out_sub13_0_ix61908z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z12, dataa=>r6(3), datab=>r4(0), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx61908z13);
   sub_out_sub13_0_ix61908z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx61908z13, dataa=>r6(2), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx61908z14);
   sub_out_sub13_0_ix61908z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx61908z14, dataa=>r6(1), datab=>r6(0), datad=>
      debug_num_5_1_EXMPLR385);
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
      datain=>o_row_EXMPLR388(7), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_6 : cycloneii_lcell_ff port map ( regout=>row_valid1(6), 
      datain=>o_row_EXMPLR388(6), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_5 : cycloneii_lcell_ff port map ( regout=>row_valid1(5), 
      datain=>o_row_EXMPLR388(5), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_4 : cycloneii_lcell_ff port map ( regout=>row_valid1(4), 
      datain=>o_row_EXMPLR388(4), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_3 : cycloneii_lcell_ff port map ( regout=>row_valid1(3), 
      datain=>o_row_EXMPLR388(3), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_2 : cycloneii_lcell_ff port map ( regout=>row_valid1(2), 
      datain=>o_row_EXMPLR388(2), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_1 : cycloneii_lcell_ff port map ( regout=>row_valid1(1), 
      datain=>o_row_EXMPLR388(1), clk=>i_clock, ena=>valid(0));
   reg_row_valid1_0 : cycloneii_lcell_ff port map ( regout=>row_valid1(0), 
      datain=>o_row_EXMPLR388(0), clk=>i_clock, ena=>valid(0));
   reg_r9 : cycloneii_lcell_ff port map ( regout=>o_edge_EXMPLR370(2), 
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
   reg_q_7_dup_11 : cycloneii_lcell_ff port map ( regout=>column(7), datain
      =>inc_d_7_dup_237, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(7), 
      datain=>inc_d_7, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_q_6_dup_12 : cycloneii_lcell_ff port map ( regout=>column(6), datain
      =>inc_d_6_dup_235, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(6), 
      datain=>inc_d_6, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_q_5_dup_13 : cycloneii_lcell_ff port map ( regout=>column(5), datain
      =>inc_d_5_dup_233, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(5), 
      datain=>inc_d_5, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_q_4_dup_14 : cycloneii_lcell_ff port map ( regout=>column(4), datain
      =>inc_d_4_dup_231, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(4), 
      datain=>inc_d_4, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_q_3_dup_15 : cycloneii_lcell_ff port map ( regout=>column(3), datain
      =>inc_d_3_dup_229, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(3), 
      datain=>inc_d_3, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_q_2_dup_16 : cycloneii_lcell_ff port map ( regout=>column(2), datain
      =>inc_d_2_dup_227, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(2), 
      datain=>inc_d_2, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_q_1_dup_17 : cycloneii_lcell_ff port map ( regout=>column(1), datain
      =>inc_d_1_dup_225, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(1), 
      datain=>inc_d_1, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_q_0_dup_18 : cycloneii_lcell_ff port map ( regout=>column(0), datain
      =>inc_d_0_dup_223, clk=>i_clock, ena=>nx62927z1, sclr=>nx62927z2);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>o_row_EXMPLR388(0), 
      datain=>inc_d_0, clk=>i_clock, ena=>nx62927z2, sclr=>i_reset);
   reg_output_valid_reg : cycloneii_lcell_ff port map ( regout=>
      o_valid_EXMPLR369, datain=>nx23902z1, clk=>i_clock);
   reg_mode_1 : cycloneii_lcell_ff port map ( regout=>o_mode_1_EXMPLR371, 
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
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_d_6 : cycloneii_lcell_ff port map ( regout=>d(6), datain=>
      mem_out_1(6), sdata=>mem_out_0(6), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_d_5 : cycloneii_lcell_ff port map ( regout=>d(5), datain=>
      mem_out_1(5), sdata=>mem_out_0(5), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_d_4 : cycloneii_lcell_ff port map ( regout=>d(4), datain=>
      mem_out_1(4), sdata=>mem_out_0(4), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_d_3 : cycloneii_lcell_ff port map ( regout=>d(3), datain=>
      mem_out_1(3), sdata=>mem_out_0(3), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_d_2 : cycloneii_lcell_ff port map ( regout=>d(2), datain=>
      mem_out_1(2), sdata=>mem_out_0(2), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_d_1 : cycloneii_lcell_ff port map ( regout=>d(1), datain=>
      mem_out_1(1), sdata=>mem_out_0(1), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_d_0 : cycloneii_lcell_ff port map ( regout=>d(0), datain=>
      mem_out_1(0), sdata=>mem_out_0(0), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
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
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_c_6 : cycloneii_lcell_ff port map ( regout=>c(6), datain=>
      mem_out_0(6), sdata=>mem_out_1(6), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_c_5 : cycloneii_lcell_ff port map ( regout=>c(5), datain=>
      mem_out_0(5), sdata=>mem_out_1(5), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_c_4 : cycloneii_lcell_ff port map ( regout=>c(4), datain=>
      mem_out_0(4), sdata=>mem_out_1(4), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_c_3 : cycloneii_lcell_ff port map ( regout=>c(3), datain=>
      mem_out_0(3), sdata=>mem_out_1(3), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_c_2 : cycloneii_lcell_ff port map ( regout=>c(2), datain=>
      mem_out_0(2), sdata=>mem_out_1(2), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_c_1 : cycloneii_lcell_ff port map ( regout=>c(1), datain=>
      mem_out_0(1), sdata=>mem_out_1(1), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
   reg_c_0 : cycloneii_lcell_ff port map ( regout=>c(0), datain=>
      mem_out_0(0), sdata=>mem_out_1(0), clk=>i_clock, ena=>nx20492z1, sclr
      =>i_reset, sload=>o_row_EXMPLR388(0));
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
      o_row_EXMPLR388(2), datad=>debug_num_5_1_EXMPLR385, cin=>nx54262z2);
   ix54262z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1, cout=>nx54262z2, dataa=>
      o_row_EXMPLR388(1), datad=>debug_num_5_1_EXMPLR385, cin=>nx54262z3);
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7, dataa=>o_row_EXMPLR388(7), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx58250z1);
   ix58250z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6, cout=>nx58250z1, dataa=>
      o_row_EXMPLR388(6), datad=>debug_num_5_1_EXMPLR385, cin=>nx58250z2);
   ix19921z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_7_dup_237, dataa=>column(7), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx19921z1);
   ix19921z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_6_dup_235, cout=>nx19921z1, dataa=>
      column(6), datad=>debug_num_5_1_EXMPLR385, cin=>nx19921z2);
   ix19921z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5_dup_233, cout=>nx19921z2, dataa=>
      column(5), datad=>debug_num_5_1_EXMPLR385, cin=>nx19921z3);
   ix19921z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4_dup_231, cout=>nx19921z3, dataa=>
      column(4), datad=>debug_num_5_1_EXMPLR385, cin=>nx19921z4);
   ix45393z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3_dup_229, cout=>nx19921z4, dataa=>
      column(3), datad=>debug_num_5_1_EXMPLR385, cin=>nx45393z1);
   ix45393z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_2_dup_227, cout=>nx45393z1, dataa=>
      column(2), datad=>debug_num_5_1_EXMPLR385, cin=>nx45393z2);
   ix25361z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_1_dup_225, cout=>nx45393z2, dataa=>
      column(1), datad=>debug_num_5_1_EXMPLR385, cin=>nx25361z1);
   ix25361z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx25361z1, dataa=>column(0), datad=>
      debug_num_5_1_EXMPLR385);
   ix17423z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0_dup_223, datad=>column(0));
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_5, cout=>nx58250z2, dataa=>
      o_row_EXMPLR388(5), datad=>debug_num_5_1_EXMPLR385, cin=>nx58250z3);
   ix54262z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx54262z3, dataa=>o_row_EXMPLR388(0), datad=>
      debug_num_5_1_EXMPLR385);
   ix61908z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0a0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx61908z2, dataa=>valid(6), datad=>
      debug_num_5_1_EXMPLR385, cin=>nx61908z3);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_4, cout=>nx58250z3, dataa=>
      o_row_EXMPLR388(4), datad=>debug_num_5_1_EXMPLR385, cin=>nx58250z4);
   ix54262z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>inc_d_3, cout=>nx58250z4, dataa=>
      o_row_EXMPLR388(3), datad=>debug_num_5_1_EXMPLR385, cin=>nx54262z1);
   ix51271z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ff") 
       port map ( combout=>inc_d_0, datad=>o_row_EXMPLR388(0));
   ix61908z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx61908z17, dataa=>o_edge_EXMPLR370(2), datab=>
      valid(6));
   ix26373z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx26373z3, dataa=>nx25376z5, datab=>nx26373z4, 
      datac=>nx25376z3, datad=>nx26373z5);
   ix26373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx26373z2, dataa=>o_mode_1_EXMPLR371, datab=>
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
      o_mode_1_EXMPLR371, datac=>nx25376z9);
   ix25376z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx25376z3, dataa=>o_valid_EXMPLR369, datab=>
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
   ix62927z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx62927z4, dataa=>column(3), datab=>column(2), 
      datac=>column(1), datad=>column(0));
   ix62927z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx62927z3, dataa=>column(7), datab=>column(6), 
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
   ix62927z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx62927z1, dataa=>i_reset, datab=>valid(0));
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
   ix62927z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx62927z2, dataa=>i_reset, datab=>valid(0), datac
      =>nx62927z3, datad=>nx62927z4);
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
      o_row_EXMPLR388(0));
   ix51243z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>mem_wren(0), dataa=>i_valid, datab=>
      o_row_EXMPLR388(0));
   ix63886z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(0), dataa=>o_edge_EXMPLR370(2), datab=>
      r8(0));
   ix62889z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(1), dataa=>o_edge_EXMPLR370(2), datab=>
      r8(1));
   ix61892z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>o_dir(2), dataa=>o_edge_EXMPLR370(2), datab=>
      r8(2));
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
   signal o_mode_EXMPLR415: std_logic_vector (1 DOWNTO 0) ;
   
   signal pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR412, debug_sevenseg_5_4_EXMPLR413, nx60130z1, 
      nx61127z1, nx62124z1, nx64118z1, nx19779z1, nx18782z1, nx17785z1, 
      nx15791z1, nx58136z1, nx59133z1, nx63121z1, nx576z1, nx1573z1, 
      nx16788z1, debug_sevenseg_5_0_EXMPLR414: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_sevenseg(15) <= debug_sevenseg_5_4_EXMPLR413 ;
   o_sevenseg(7) <= debug_sevenseg_5_4_EXMPLR413 ;
   o_mode(1) <= o_mode_EXMPLR415(1) ;
   o_mode(0) <= o_mode_EXMPLR415(0) ;
   o_nrst <= o_nrst_EXMPLR412 ;
   debug_led_red(16) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(15) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(14) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(13) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(12) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(11) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(10) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(9) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(8) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(7) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(6) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(5) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(4) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(3) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(2) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(1) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_red(0) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_grn(5) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_grn(4) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_grn(3) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_grn(2) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_grn(1) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_led_grn(0) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_0(7) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_0(6) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_0(5) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_0(4) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_0(3) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_0(2) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_0(1) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_0(0) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_1(7) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_1(6) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_1(5) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_1(4) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_1(3) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_1(2) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_1(1) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_1(0) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_2(7) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_2(6) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_2(5) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_2(4) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_2(3) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_2(2) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_2(1) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_2(0) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_3(7) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_3(6) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_3(5) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_3(4) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_3(3) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_3(2) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_3(1) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_3(0) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_4(7) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_4(6) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_4(5) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_4(4) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_4(3) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_4(2) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_4(1) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_4(0) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_5(7) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_5(6) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_5(5) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_5(4) <= debug_sevenseg_5_4_EXMPLR413 ;
   debug_sevenseg_5(3) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_5(2) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_5(1) <= debug_sevenseg_5_0_EXMPLR414 ;
   debug_sevenseg_5(0) <= debug_sevenseg_5_0_EXMPLR414 ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>o_nrst_EXMPLR412, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>o_mode_EXMPLR415(1), i_mode(0)
      =>o_mode_EXMPLR415(0), datain(7)=>pixel(7), datain(6)=>pixel(6), 
      datain(5)=>pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), 
      datain(2)=>pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), 
      o_pixavail=>pixavail, rxflex=>rxflex, txflex=>txflex);
   u_kirsch : kirsch_8_8 port map ( i_clock=>clk, i_reset=>o_nrst_EXMPLR412, 
      i_valid=>pixavail, i_pixel(7)=>pixel(7), i_pixel(6)=>pixel(6), 
      i_pixel(5)=>pixel(5), i_pixel(4)=>pixel(4), i_pixel(3)=>pixel(3), 
      i_pixel(2)=>pixel(2), i_pixel(1)=>pixel(1), i_pixel(0)=>pixel(0), 
      o_valid=>o_valid, o_edge=>kirschout, o_dir(2)=>dir(2), o_dir(1)=>
      dir(1), o_dir(0)=>dir(0), o_mode(1)=>o_mode_EXMPLR415(1), o_mode(0)=>
      o_mode_EXMPLR415(0), o_row(7)=>rowcount(7), o_row(6)=>rowcount(6), 
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
   o_nrst_EXMPLR412 <= NOT nrst;
   debug_sevenseg_5_4_EXMPLR413 <= '1';
   debug_sevenseg_5_0_EXMPLR414 <= '0';
   reg_o_sevenseg_9 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(9), 
      datain=>nx1573z1, clk=>clk);
   reg_o_sevenseg_8 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(8), 
      datain=>nx576z1, clk=>clk);
   reg_o_sevenseg_6 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(6), 
      datain=>nx64118z1, clk=>clk);
   reg_o_sevenseg_5 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(5), 
      datain=>nx63121z1, clk=>clk);
   reg_o_sevenseg_4 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(4), 
      datain=>nx62124z1, clk=>clk);
   reg_o_sevenseg_3 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(3), 
      datain=>nx61127z1, clk=>clk);
   reg_o_sevenseg_2 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(2), 
      datain=>nx60130z1, clk=>clk);
   reg_o_sevenseg_14 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(14), 
      datain=>nx15791z1, clk=>clk);
   reg_o_sevenseg_13 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(13), 
      datain=>nx16788z1, clk=>clk);
   reg_o_sevenseg_12 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(12), 
      datain=>nx17785z1, clk=>clk);
   reg_o_sevenseg_11 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(11), 
      datain=>nx18782z1, clk=>clk);
   reg_o_sevenseg_10 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(10), 
      datain=>nx19779z1, clk=>clk);
   reg_o_sevenseg_1 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(1), 
      datain=>nx59133z1, clk=>clk);
   reg_o_sevenseg_0 : cycloneii_lcell_ff port map ( regout=>o_sevenseg(0), 
      datain=>nx58136z1, clk=>clk);
   ix16788z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx16788z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix1573z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx1573z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix576z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx576z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix63121z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx63121z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix59133z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx59133z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix58136z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx58136z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix15791z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx15791z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix17785z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx17785z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix18782z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx18782z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix19779z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx19779z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix64118z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx64118z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix62124z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx62124z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix61127z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx61127z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix60130z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx60130z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
end main ;

