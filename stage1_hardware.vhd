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

