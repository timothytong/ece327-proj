library ieee;
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
    signal pix1, pix2 : unsigned (7 downto 0);
    signal dir1, dir2 : std_logic_vector (2 downto 0);

begin
    -- o_max_val takes max(i_dir1, i_dir2) just like all other maxes
    -- o_max_dir takes the direction of max(i_dir1, i_dir2)
    -- if i_pix1 == i_pix2, take i_pix1 and i_dir1 due to priority stated in lab manual
    pix1 <= i_pix1;
    pix2 <= i_pix2;
    dir1 <= i_dir1;
    dir2 <= i_dir2;

    o_max_pix <= pix1 when ( pix1 >= pix2 ) else pix2;
    o_max_dir <= dir1 when ( pix1 >= pix2 ) else dir2;

end architecture main;
