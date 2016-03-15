library ieee;
use ieee.std_logic_1164.all;

entity custom_max is
    port ( i_pix1, i_pix2  :  in unsigned (7 downto 0);         -- input will be 8 bits
           i_dir1, i_dir2 :  in std_logic_vector (2 downto 0);  -- directions are encoded from 000 (W) to 111 (SW)
           o_max_dir      : out std_logic_vector (2 downto 0);
           o_max_pix       : out unsigned (7 downto 0);
    );
end custom_max;

architecture main of custom_max is
begin
    -- o_max_val takes max(i_dir1, i_dir2) just like all other maxes
    -- o_max_dir takes the direction of max(i_dir1, i_dir2)
    -- if i_pix1 == i_pix2, take i_pix1 and i_dir1 due to priority stated in lab manual
    if( i_pix1 >= i_pix2 ) then
        o_max_pix = i_pix1;
        o_max_dir = i_dir1;
    else
        o_max_pix = i_pix2;
        o_max_dir = i_dir2;
    end if;
end architecture main;
