library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Use numeric_std instead of std_logic_arith and std_logic_unsigned

entity multiplier is
    Port ( clock    : in  STD_LOGIC;
           dataa    : in  STD_LOGIC_VECTOR(7 downto 0);
           datab    : in  STD_LOGIC_VECTOR(7 downto 0);
           result   : out STD_LOGIC_VECTOR(15 downto 0));
end multiplier;

architecture Behavioral of multiplier is
    signal result_reg : STD_LOGIC_VECTOR(15 downto 0);
begin

    process(clock)
    begin
        if rising_edge(clock) then
            result_reg <= std_logic_vector(unsigned(dataa) * unsigned(datab));  -- Multiply and store result
        end if;
    end process;

    result <= result_reg;  -- Output the result

end Behavioral;
