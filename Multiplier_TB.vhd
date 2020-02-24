----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2020 03:11:33 PM
-- Design Name: 
-- Module Name: Multiplier_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplier_TB is
--  Port ( );
end Multiplier_TB;

architecture Behavioral of Multiplier_TB is

component My_Multiplier is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           q : out STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC);
end component;

signal a_tst, b_tst : STD_LOGIC_VECTOR(15 downto 0);
signal q_tst : STD_LOGIC_VECTOR(31 downto 0);
signal clk_tst : STD_LOGIC;

begin

UUT: My_Multiplier port map(a => a_tst, b => b_tst, clk => clk_tst, q => q_tst);

clock : process
begin
clk_tst <= '0';
wait for 15 ns;
clk_tst <= '1';
wait for 15 ns;
end process;

STIM: process
begin
a_tst <= "0000000000000010";
b_tst <= "0000000000000101";
wait for 10 ns;
a_tst <= "0000000000001000";
b_tst <= "0000000000000101";
wait for 10 ns;
end process;

end Behavioral;
