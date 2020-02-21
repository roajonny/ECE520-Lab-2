----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2020 07:44:09 AM
-- Design Name: 
-- Module Name: complex_multiplier - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity complex_multiplier is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           c : in STD_LOGIC_VECTOR (15 downto 0);
           d : in STD_LOGIC_VECTOR (15 downto 0);
           real_result : out STD_LOGIC_VECTOR (32 downto 0);
           imag_result : out STD_LOGIC_VECTOR (32 downto 0));
end complex_multiplier;

architecture Behavioral of complex_multiplier is
signal ac, bd, ad, bc : unsigned(32 downto 0);
begin

ac <= unsigned(a) * unsigned(c);
bd <= unsigned(b) * unsigned(d);
ad <= unsigned(a) * unsigned(d);
bc <= unsigned(b) * unsigned(c);

real_result <= STD_LOGIC_VECTOR(ac-bd);
imag_result <= STD_LOGIC_VECTOR(ad+bc);

end Behavioral;
