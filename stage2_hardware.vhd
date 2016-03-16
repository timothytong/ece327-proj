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

