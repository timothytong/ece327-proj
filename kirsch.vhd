library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity kirsch is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_clock    : in  std_logic;
    i_reset    : in  std_logic;
    i_valid    : in  std_logic;
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;
    o_edge     : out std_logic;
    o_dir      : out std_logic_vector(2 downto 0);
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    ------------------------------------------
    -- debugging inputs and outputs
    debug_key      : in  std_logic_vector( 3 downto 1) ;
    debug_switch   : in  std_logic_vector(17 downto 0) ;
    debug_led_red  : out std_logic_vector(17 downto 0) ;
    debug_led_grn  : out std_logic_vector(5  downto 0) ;
    debug_num_0    : out std_logic_vector(3 downto 0) ;
    debug_num_1    : out std_logic_vector(3 downto 0) ;
    debug_num_2    : out std_logic_vector(3 downto 0) ;
    debug_num_3    : out std_logic_vector(3 downto 0) ;
    debug_num_4    : out std_logic_vector(3 downto 0) ;
    debug_num_5    : out std_logic_vector(3 downto 0)
    ------------------------------------------
  );
end entity;


architecture main of kirsch is
begin

  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');

end architecture;


library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity custom_max is
    generic (
        width : natural := 8
    );
    port ( i_pix1, i_pix2  :  in unsigned (width - 1 downto 0);         -- input will be 8 bits
           i_dir1, i_dir2 :  in std_logic_vector (2 downto 0);  -- directions are encoded from 000 (W) to 111 (SW)
           o_max_dir      : out std_logic_vector (2 downto 0);
           o_max_pix       : out unsigned (width - 1 downto 0)
    );
end custom_max;

architecture main of custom_max is

begin
    -- o_max_val takes max(i_dir1, i_dir2) just like all other maxes
    -- o_max_dir takes the direction of max(i_dir1, i_dir2)
    -- if i_pix1 == i_pix2, take i_pix1 and i_dir1 due to priority stated in lab manual

    o_max_pix <= i_pix1 when ( i_pix1 >= i_pix2 ) else i_pix2;
    o_max_dir <= i_dir1 when ( i_pix1 >= i_pix2 ) else i_dir2;

end architecture main;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Stage 1 hardware consists of 1 8-bit max and 2 9-bit adders (m1, a1, and a2 in DFD)
-- The max module is custom-made, implemented in custom_max.vhd
entity stage1_hardware is
    port ( i_dir1_stage1, i_dir2_stage1        :  in std_logic_vector ( 2 downto 0 );
           i_pix1_stage1, i_pix2_stage1        :  in unsigned ( 7 downto 0 );
           i_add_op1_stage1, i_add_op2_stage1  :  in unsigned ( 8 downto 0 );
           o_add_op12_stage1, o_max_add_stage1 : out unsigned ( 8 downto 0 );
           o_max_dir_stage1                    : out std_logic_vector ( 2 downto 0 )
    );
end stage1_hardware;

architecture main of stage1_hardware is
    signal custom_max_pix_output : unsigned ( 7 downto 0 );
    signal sum_a1_a2             : unsigned ( 8 downto 0 );
begin
    -- instantiate custom max module
    u_max : entity work.custom_max(main)
        generic map (
            width => 8
        )
        port map (
            i_dir1 => i_dir1_stage1,
            i_dir2 => i_dir2_stage1,
            i_pix1 => i_pix1_stage1,
            i_pix2 => i_pix2_stage1,
            o_max_dir => o_max_dir_stage1,
            o_max_pix => custom_max_pix_output
        );

    sum_a1_a2 <= resize(i_pix1_stage1, 9) + resize(i_pix2_stage1, 9);
    o_add_op12_stage1 <= sum_a1_a2;
    o_max_add_stage1 <= custom_max_pix_output + sum_a1_a2;
end architecture main;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Stage 2 hardware consists of 1 9-bit max and 1 9-bit adder (m2 and a3 in DFD)
-- The max module is custom-made, implemented in (custom_max_9bit.vhd?????)
entity stage2_hardware is
    port ( i_dir1_stage2, i_dir2_stage2        :  in std_logic_vector ( 2 downto 0 );
           i_pix1_stage2, i_pix2_stage2        :  in unsigned ( 7 downto 0 );
           i_add_op1_stage2, i_add_op2_stage2  :  in unsigned ( 8 downto 0 );
           o_add_op12_stage2, o_max_add_stage2 : out unsigned ( 8 downto 0 );
           o_max_dir_stage2                    : out std_logic_vector ( 2 downto 0 )
    );
end stage2_hardware;

architecture main of stage2_hardware is
    signal custom_max_pix_output : unsigned ( 7 downto 0 );
begin
    -- instantiate custom max module
    u_max : entity work.custom_max(main)
        generic map (
            width => 9
        )
        port map (
            i_dir1 => i_dir1_stage2,
            i_dir2 => i_dir2_stage2,
            i_pix1 => i_pix1_stage2,
            i_pix2 => i_pix2_stage2,
            o_max_dir => o_max_dir_stage2,
            o_max_pix  => custom_max_pix_output
        );

    o_add_op12_stage2 <= resize(i_add_op1_stage2, 9) + resize(i_add_op2_stage2, 9);
end architecture main;


