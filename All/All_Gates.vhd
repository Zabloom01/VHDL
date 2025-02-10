----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zach B.
-- 
-- Create Date: 02/10/2025 01:10:24 PM
-- Design Name: 
-- Module Name: All_Gates - Behavioral
-- Project Name: All_Gates
-- Target Devices: NA
-- Tool Versions: Using Vivado 2024.2
-- Description: Example code for all logic gates using VHDL
-- 
-- Dependencies: NA
-- 
-- Revision: A
-- Revision 0.01 - File Created
-- Additional Comments:  This is an example code I created for simulating all logic gates.
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity All_Gates is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           and_gate : out STD_LOGIC;
           or_gate : out STD_LOGIC;
           not_gate : out STD_LOGIC;
           nand_gate : out STD_LOGIC;
           nor_gate : out STD_LOGIC;
           xor_gate : out STD_LOGIC;
           xnor_gate : out STD_LOGIC);
end All_Gates;

architecture Behavioral of All_Gates is

-- define gates

begin
and_gate <= a and b;
or_gate <= a or b;
not_gate <= not a;
nand_gate <= a nand b;
nor_gate <= a nor b;
xor_gate <= a xor b;
xnor_gate <= a xnor b;


end Behavioral;
