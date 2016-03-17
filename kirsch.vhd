library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity kirsch is
  generic (
      data_width : natural := 8;
      addr_width : natural := 8 
  );

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

-- Functions and types
-- A function to rotate left (rol) a vector by n bits
function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
is
begin
    return std_logic_vector( unsigned(a) rol n );
end function;

subtype vec is std_logic_vector(data_width - 1 downto 0);
type vec_vec is array (1 downto 0) of vec;

-- Control signals (nets)
signal mem_wren : std_logic_vector(0 to 1);
--signal p : signed(9 downto 0); -- P needs 10 bits to accomodate the range -255 to 510
--signal a_data, b_data, c_data : unsigned(data_width - 1 downto 0);

-- State signals (registered)
signal read : std_logic;
signal just_read : std_logic;
signal column : unsigned(addr_width - 1 downto 0 );
signal row : std_logic_vector(1 downto 0 );
signal row_virtual : unsigned(addr_width - 1 downto 0);
signal completed : std_logic;
signal count : unsigned(7 downto 0);
signal valid : std_logic_vector(7 downto 0);

--Memory outputs (registered)
signal mem_out: vec_vec;
signal a, b, c, d, e, f, g, h, i : unsigned(data_width - 1 downto 0);
signal a_buffer, b_buffer, c_buffer: std_logic_vector(data_width - 1 downto 0);
begin


--combinational assignments (net signals)
    mem_wren(0) <= row(0) and i_valid;
    mem_wren(1) <= row(1) and i_valid;
--    mem_wren(2) <= row(2) and i_valid;

    -- Memory arrays
    memory_row_1 : entity work.mem(main)
    port map(
                address => std_logic_vector(column),
                clock => i_clock,
                data => std_logic_vector(i_pixel),
                wren => mem_wren(0),
                q => mem_out(0)
            );

    memory_row_2 : entity work.mem(main)
    port map(
                address => std_logic_vector(column),
                clock => i_clock,
                data => std_logic_vector(i_pixel),
                wren => mem_wren(1),
                q => mem_out(1)
            );

--    memory_row_3 : entity work.mem(main)
--    port map(
--                address => std_logic_vector(column),
--                clock => clock,
--                data => std_logic_vector(i_data),
--                wren => mem_wren(2),
--                q => mem_out(2)
--            );
    buffers : process (i_clock)
    begin
        if rising_edge(i_clock) then
            if i_reset = '1' then
                a_buffer <= (others => '0');
                b_buffer <= (others => '0');
                c_buffer <= (others => '0');
                
                h <= (others => '0');
                i <= (others => '0');
                d <= (others => '0');
                
                g <= (others => '0');
                f <= (others => '0');
                e <= (others => '0');


            else
                if i_valid  = '1' then
                    if row(0) = '1' then
                        c_buffer <= mem_out(0);
                        d <= unsigned(mem_out(1));
                    else
                        c_buffer <= mem_out(1);
                        d <= unsigned(mem_out(0));
                    end if;

                    b_buffer <= c_buffer;
                    a_buffer <= b_buffer;

                    i <= d;
                    h <= i;

                    e <= unsigned(i_pixel);
                    f <= e;
                    g <= f;
                end if;
            end if;
        end if;
    end process;
 
    states : process(i_clock)
    begin
        if rising_edge(i_clock) then
            if i_reset = '1' then
                column <= to_unsigned(0, addr_width);
                row <= "01";
                --read <= '0';
                --just_read <= '0';
                row_virtual <= to_unsigned(0, addr_width);
            else
                --if read = '1' then
                --    read <= '0';
                --end if;

                if valid(0) = '1' then
                    if column = to_unsigned(255, 8) then
                        column <= to_unsigned(0, 8);
                        row <= "rol"(row, 1);
                        row_virtual <= row_virtual + 1;
                    else
                        column <= column + 1;
                    end if;

                --elsif i_valid = '1' then
                --    read <= '1';
                --end if;

                --just_read <= read;
                end if;
            end if;
        end if;
    end process;

--  populate_convolution_table : process (i_clock)
--  begin
--      if rising_edge(i_clock) then
--          if i_reset = '1' then
--              h <= to_unsigned(0, 8);
--              i <= to_unsigned(0, 8);
--              d <= to_unsigned(0, 8);
--          else
--              if row_virtual >= 2  then
--                  if column >= 2 then
--                      --a <= mem_row
--                  elsif i_valid = '1' then
--                      if column = 0 then
--                          g <= unsigned(i_pixel);
--                      elsif column = 1 then
--                          f <= unsigned(i_pixel);
--                      end if;
--                  end if;
--              end if;
--          end if;
--      end if;
--  end process;



  valid_bit : process(i_clock)
  begin 
      if rising_edge(i_clock) then
          if i_reset = '1' then
              valid <= (others => '0');
          else
              -- logical shift right, bring new i_valid to beginning of valid bit chain
              --valid <= valid sll 1;
              --valid(0) <= i_valid;
              valid <= valid(6 downto 0) & i_valid;
          end if;
      end if;
  end process;

  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');

end architecture;

--------------------------------------------------------------------------------------------------
--------------------------------- CUSTOM MODULES -------------------------------------------------
--------------------------------------------------------------------------------------------------

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


