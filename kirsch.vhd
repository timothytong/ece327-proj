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
    function max ( a : unsigned; b : unsigned) return unsigned is
    begin
        if a > b then
            return a;
        else 
            return b;
        end if;
    end function max;
begin
    -- o_max_val takes max(i_dir1, i_dir2) just like all other maxes
    -- o_max_dir takes the direction of max(i_dir1, i_dir2)
    -- if i_pix1 == i_pix2, take i_pix1 and i_dir1 due to priority stated in lab manual
    --o_max_pix <= max(i_pix1, i_pix2);
    --o_max_dir <= i_dir1 when i_pix1 >= i_pix2 else
                 --i_dir2;
     process(i_pix1, i_pix2, i_dir1, i_dir2)
     begin
         if (i_pix1 >= i_pix2) then
             o_max_pix <= i_pix1; --when ( i_pix1 >= i_pix2 ) else i_pix2;
             o_max_dir <= i_dir1; --when ( i_pix1 >= i_pix2 ) else i_dir2;
         else
             o_max_pix <= i_pix2;
             o_max_dir <= i_dir2;
         end if;
     end process;

end architecture main;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Stage 1 hardware consists of 1 8-bit max and 2 9-bit adders (m1, a1, and a2 in DFD)
-- The max module is custom-made, implemented in custom_max.vhd
entity stage1_hardware is
    port ( i_dir1_stage1, i_dir2_stage1        :  in std_logic_vector ( 2 downto 0 );
           i_pix1_stage1, i_pix2_stage1        :  in unsigned ( 7 downto 0 );
           i_add_op1_stage1, i_add_op2_stage1  :  in unsigned ( 7 downto 0 );
           o_add_op12_stage1                   : out unsigned ( 8 downto 0 );
           o_max_add_stage1                    : out unsigned ( 9 downto 0 );
           o_max_dir_stage1                    : out std_logic_vector ( 2 downto 0 )
    );
end stage1_hardware;

architecture main of stage1_hardware is
    signal custom_max_pix_output : unsigned ( 7 downto 0 );
    signal sum_a1_a2             : unsigned ( 8 downto 0 );

begin
    -- instantiate custom max module
   -- u_max1 : entity work.custom_max(main)
   --     generic map (
   --         width => 8
   --     )
   --     port map (
   --         i_dir1 => i_dir1_stage1,
   --         i_dir2 => i_dir2_stage1,
   --         i_pix1 => i_pix1_stage1,
   --         i_pix2 => i_pix2_stage1,
   --         o_max_dir => o_max_dir_stage1,
   --         o_max_pix => custom_max_pix_output
   --     );
    process(i_pix1_stage1, i_pix2_stage1, i_dir1_stage1, i_dir2_stage1)
    begin
        if (i_pix1_stage1 >= i_pix2_stage1) then
            custom_max_pix_output <= i_pix1_stage1; --when ( i_pix1 >= i_pix2 ) else i_pix2;
            o_max_dir_stage1 <= i_dir1_stage1; --when ( i_pix1 >= i_pix2 ) else i_dir2;
        else
            custom_max_pix_output <= i_pix2_stage1;
            o_max_dir_stage1 <= i_dir2_stage1;
        end if;
    end process;


    sum_a1_a2 <= resize(i_add_op1_stage1, 9) + resize(i_add_op2_stage1, 9);
    o_add_op12_stage1 <= sum_a1_a2;
    o_max_add_stage1 <= resize(custom_max_pix_output, 10) + resize(sum_a1_a2, 10);
end architecture main;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Stage 2 hardware consists of 1 9-bit max and 1 9-bit adder (m2 and a3 in DFD)
-- The max module is custom-made, implemented in (custom_max_9bit.vhd?????)
entity stage2_hardware is
    port ( i_dir1_stage2, i_dir2_stage2        :  in std_logic_vector ( 2 downto 0 );
           i_pix1_stage2, i_pix2_stage2        :  in unsigned ( 9 downto 0 );
           i_add_op1_stage2, i_add_op2_stage2  :  in unsigned ( 12 downto 0 );
           o_add_op12_stage2                   : out unsigned ( 12 downto 0 );
           o_max_stage2                        : out unsigned ( 9 downto 0 );
           o_max_dir_stage2                    : out std_logic_vector ( 2 downto 0 )
    );
end stage2_hardware;

architecture main of stage2_hardware is
begin
    -- instantiate custom max module
    u_max2 : entity work.custom_max(main)
        generic map (
            width => 10
        )
        port map (
            i_dir1 => i_dir1_stage2,
            i_dir2 => i_dir2_stage2,
            i_pix1 => i_pix1_stage2,
            i_pix2 => i_pix2_stage2,
            o_max_dir => o_max_dir_stage2,
            o_max_pix  => o_max_stage2
        );

    o_add_op12_stage2 <= resize(i_add_op1_stage2, 13) + resize(i_add_op2_stage2, 13);
end architecture main;


--------------------------------------------------------------------------------------------------
--------------------------------- TOP LEVEL ENTITY KIRSCH ----------------------------------------
--------------------------------------------------------------------------------------------------


library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.kirsch_synth_pkg.all;

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
signal mode : mode_ty;

-- State signals (registered)
signal column : unsigned(addr_width - 1 downto 0);
signal row_virtual : unsigned(addr_width - 1 downto 0);
signal valid : std_logic_vector(6 downto 0);

signal column_valid1 : unsigned(addr_width - 1 downto 0);
signal column_valid2 : unsigned(addr_width - 1 downto 0);
signal row_valid1 : unsigned(addr_width - 1 downto 0);
signal row_valid2 : unsigned(addr_width - 1 downto 0);
signal column_is_2_first : std_logic;
signal column_is_2_second : std_logic;
signal row_is_2_first : std_logic;
signal row_is_2_second : std_logic;
signal column_is_end_first : std_logic;
signal column_is_end_second : std_logic;
signal row_is_end_first : std_logic;
signal row_is_end_second : std_logic;


--Memory outputs (registered)
signal mem_out: vec_vec;
-- Convolution table registers
signal a, b, c, d, e, f, g, h, i : unsigned(data_width - 1 downto 0);

-- Pipeline 1 combinational signals
signal i_max1, i_max2, i_add1, i_add2 : unsigned(data_width - 1 downto 0);
signal i_dir1, i_dir2 : direction_ty;
--signal o_max1 : unsigned(data_width - 1 downto 0);
signal o_add1   : unsigned(8 downto 0);
signal o_add2   : unsigned(9 downto 0);
signal o_dir1 : std_logic_vector(2 downto 0);

-- Pipeline 1 registered outputs
signal r1 : std_logic_vector(2 downto 0);
signal r2 : unsigned(8 downto 0);
signal r3 : unsigned(9 downto 0);
signal temp_max : unsigned(9 downto 0);
signal temp_dir : std_logic_vector(2 downto 0);
signal temp_add : unsigned(8 downto 0);

-- Pipeline 2 combinational signals
signal i_max3, i_max4 : unsigned(9 downto 0);
signal i_dir3, i_dir4 : std_logic_vector(2 downto 0);
signal i_add3, i_add4 : unsigned(12 downto 0);
signal o_max1 : unsigned(9 downto 0);
signal o_dir2 : std_logic_vector(2 downto 0);
signal o_add3 : unsigned(12 downto 0);

-- Pipeline 2 registered outputs
signal r4 : unsigned(9 downto 0);
signal r5 : std_logic_vector(2 downto 0);
signal r6 : unsigned(12 downto 0);


-- Remaining parts of the pipeline
signal sub_out : signed(13 downto 0);
-- registers
--signal r7 : signed(13 downto 0);          -- Register for subtractor
signal r8 : std_logic_vector(2 downto 0);
signal r9 : std_logic;

signal output_valid_reg : std_logic;
begin

-------------------------------------------------------------------------------------------------
-------------------------------- MEMORY AND CONVOLUTION TABLES ----------------------------------
-------------------------------------------------------------------------------------------------

    mode_logic : process(i_clock)
    begin
        if rising_edge(i_clock) then
            if i_reset = '1' then
                mode <= reset;
            else
                if mode = "01" then
                    mode <= idle;
                end if;
                if i_valid = '1' then
                    mode <= busy;
                --elsif ((row_valid2 = image_height - 1) and (column_valid2 = image_width - 1) and output_valid_reg = '1') then
                elsif ((row_is_end_second = '1') and (column_is_end_second = '1') and output_valid_reg = '1') then
                    mode <= idle;
                end if;
            end if;
        end if;
    end process;
                     
    o_mode <= mode;
    o_row <= std_logic_vector(row_virtual);

    --combinational assignments (net signals)
    mem_wren(0) <= not row_virtual(0) and i_valid;
    mem_wren(1) <= row_virtual(0) and i_valid;

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


    -- Populate convolution table
    buffers : process (i_clock)
    begin
        if rising_edge(i_clock) then
--            if i_reset = '1' then
--                a <= (others => '0');
--                b <= (others => '0');
--                c <= (others => '0');
--
--                h <= (others => '0');
--                i <= (others => '0');
--                d <= (others => '0');
--
--                g <= (others => '0');
--                f <= (others => '0');
--                e <= (others => '0');
--
--
--            else
                if i_valid  = '1' then
                    if row_virtual(0) = '0' then
                        c <= unsigned(mem_out(0));
                        d <= unsigned(mem_out(1));
                    else
                        c <= unsigned(mem_out(1));
                        d <= unsigned(mem_out(0));
                    end if;

                    b <= c;
                    a <= b;

                    i <= d;
                    h <= i;

                    e <= unsigned(i_pixel);
                    f <= e;
                    g <= f;
                end if;
--            end if;
        end if;
    end process;

    -- Interparcel variable processing (row and column counters for memory access)
    states : process(i_clock)
    begin
        if rising_edge(i_clock) then
            if i_reset = '1' then
                column <= to_unsigned(0, addr_width);
                --row <= "01";
                row_virtual <= to_unsigned(0, addr_width);
            else
                if valid(0) = '1' then
                    if column = to_unsigned(image_width - 1, 8) then
                        --column <= to_unsigned(0, 8);
                        --row <= "rol"(row, 1);
                        row_virtual <= row_virtual + 1;
                    end if;
                    --else
                        column <= column + 1;
                    --end if;
                end if;
            end if;
        end if;
    end process;

    -- save column address for o_valid signal
    save_column : process(i_clock)
    begin
        if rising_edge(i_clock) then
            if valid(0) = '1' then
                --column_valid1 <= column;
                --row_valid1 <= row_virtual;
                if (column >= 2) then
                    column_is_2_first <= '1';
                else
                    column_is_2_first <= '0';
                end if;
                if (row_virtual >= 2) then
                    row_is_2_first <= '1';
                else
                    row_is_2_first <= '0';
                end if;    

                if (column = image_width - 1) then
                    column_is_end_first <= '1';
                else
                    column_is_end_first <= '0';
                end if;
                if (row_virtual = image_height -1) then
                    row_is_end_first <= '1';
                else
                    row_is_end_first <= '0';
                end if;

            end if;
            if valid(4) = '1' then
                --column_valid2 <= column_valid1;
                --row_valid2 <= row_valid1;
                column_is_2_second <= column_is_2_first;
                row_is_2_second <= row_is_2_first;
                column_is_end_second <= column_is_end_first;
                row_is_end_second <= row_is_end_first;
            end if;
        end if;
    end process;

    -- Valid bit encoding state signals
    valid_bit : process(i_clock)
    begin
        if rising_edge(i_clock) then
--            if i_reset = '1' then
--                valid <= (others => '0');
--            else
                -- logical shift right, bring new i_valid to beginning of valid bit chain
                valid <= valid(5 downto 0) & i_valid;
--            end if;
        end if;
    end process;

-------------------------------------------------------------------------------------------------
-------------------------------- DATAPATH PROCESSING --------------------------------------------
-------------------------------------------------------------------------------------------------

    -- Pipeline 1
    -- main reusable block instantiation:
    stage1 : entity work.stage1_hardware(main)
    port map (
        i_pix1_stage1 => i_max1,
        i_pix2_stage1 => i_max2,
        i_dir1_stage1 => i_dir1,
        i_dir2_stage1 => i_dir2,
        i_add_op1_stage1 => i_add1,
        i_add_op2_stage1 => i_add2,
        o_add_op12_stage1 => o_add1,
        o_max_add_stage1 => o_add2,
        o_max_dir_stage1 => o_dir1
    );
    -- control circuitry for stage 1
    i_max1 <= g when valid(0) = '1' else
              a when valid(1) = '1' else
              c when valid(2) = '1' else
              e; --when valid(3) = '1' and all other don't care situations

    i_max2 <= b when valid(0) = '1' else
              d when valid(1) = '1' else
              f when valid(2) = '1' else
              h; --when valid(3) = '1' and all other don't care situations

    i_add1 <= a when valid(0) = '1' else
              b when valid(1) = '1' else
              d when valid(2) = '1' else
              f; --when valid(3) = '1' and all other don't care situations

    i_add2 <= h when valid(0) = '1' else
              c when valid(1) = '1' else
              e when valid(2) = '1' else
              g; --when valid(3) = '1' and all other don't care situations

    i_dir1 <= dir_w when valid(0) = '1' else -- W
              dir_n when valid(1) = '1' else -- N
              dir_e when valid(2) = '1' else -- E
              dir_s; -- else S

    i_dir2 <= dir_nw when valid(0) = '1' else -- NW
              dir_ne when valid(1) = '1' else -- NE
              dir_se when valid(2) = '1' else -- SE
              dir_sw; -- else SW


    -- registered outputs r1, r2, and r3
    registers_stage_1 : process(i_clock)
    begin
        if rising_edge(i_clock) then
            --if i_reset = '1' then
            --    r1 <= "000000000";
            --    r2 <= "000000000";
            --else
            r1 <= o_dir1;
            r2 <= o_add1;
            r3 <= o_add2;
        end if;
    end process;

    -- Pipeline 2
    -- main reusable block instantiation
    stage2 : entity work.stage2_hardware(main)
    port map (
           i_dir1_stage2 => i_dir3,
           i_dir2_stage2 => i_dir4,
           i_pix1_stage2 => i_max3,
           i_pix2_stage2 => i_max4,
           i_add_op1_stage2 => i_add3,
           i_add_op2_stage2 => i_add4,
           o_add_op12_stage2 => o_add3,
           o_max_stage2 => o_max1,
           o_max_dir_stage2 => o_dir2
    );

    -- control circuitry for stage 2
    i_dir4 <= r1;
    i_dir3 <= temp_dir when valid(2) = '1' else
              r5;
    i_max4 <= r3;
    i_max3 <= temp_max when valid(2) = '1' else
              r4;
    i_add3 <= (r6 sll 1) when valid(5) = '1' else
              resize(r2, 13);
    i_add4 <= resize(temp_add, 13) when valid(2) = '1' else
              r6;

    -- registered outputs r4, r5 and r6

    temp_registers : process(i_clock)
    begin
        if rising_edge(i_clock) then
            if valid(1) = '1' then
                temp_max <= r3;
                temp_dir <= r1;
                temp_add <= r2;
            end if;
        end if;
    end process;

    registers_stage_2 : process(i_clock)
    begin
        if rising_edge(i_clock) then
            --if valid(1) = '1' then
            --    temp_max <= r3;
            --    temp_dir <= r1;
            --    temp_add <= resize(r2, 13);
            if valid(5) = '1' then
                r4 <= r4;
                r5 <= r5;
                r6 <= o_add3;
            else
                r4 <= o_max1;
                r5 <= o_dir2;
                r6 <= o_add3;
            end if;
        end if;
    end process;

    sub_out <= signed(resize(r4, 14) sll 3) - signed(resize(r6, 14));

    -- comparator + output
    registers_stage_3 : process(i_clock)
    begin
        if rising_edge(i_clock) then
            --r7 <= signed(resize(r4, 14) sll 3) - signed(resize(r6, 14));
            
            if valid(6) = '1' then
                r8 <= r5;
            --elsif valid(7) = '1' then -- TODO: also check for edge case at the BORDER
                if sub_out > threshold then
                    r9 <= '1';
                else
                    r9 <= '0';
                end if;
            end if;
        end if;
    end process;
    o_dir <= r8 when r9 = '1' else
             "000";
    o_edge <= r9;
    --o_valid <= '1' when valid(7) = '1' and row_virtual >= 2 and (column >= 4 or column <= 2) else
    output_valid : process(i_clock)
    begin
        if rising_edge(i_clock) then
            --if (valid(6) = '1' and row_valid2 >= 2 and column_valid2 >= 2) then
            if (valid(6) = '1' and row_is_2_second = '1' and column_is_2_second = '1') then
                output_valid_reg <= '1';
            else
                output_valid_reg <= '0';
            end if;
        end if;
    end process;
    o_valid <= output_valid_reg;

    -- Debugging
    debug_num_5 <= X"E";
    debug_num_4 <= X"C";
    debug_num_3 <= X"E";
    debug_num_2 <= X"3";
    debug_num_1 <= X"2";
    debug_num_0 <= X"7";

    debug_led_red <= (others => '0');
    debug_led_grn <= (others => '0');

end architecture;


