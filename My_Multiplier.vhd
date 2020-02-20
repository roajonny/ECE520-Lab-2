----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2020 03:01:38 PM
-- Design Name: 
-- Module Name: My_Multiplier - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity My_Multiplier is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           q : out STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC);
end My_Multiplier;

architecture Behavioral of My_Multiplier is
signal res : unsigned(31 downto 0);
begin

process(clk, a, b)
begin
    if (clk' event and clk = '1') then
    res <= unsigned(a) * unsigned(b);
    end if;
end process;

q <= std_logic_vector(res);

end Behavioral;
