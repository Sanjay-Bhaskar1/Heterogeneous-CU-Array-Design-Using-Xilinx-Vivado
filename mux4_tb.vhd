----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 10:01:30 PM
-- Design Name: 
-- Module Name: mux4_tb - Behavioral
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4_tb is
--  Port ( );
end mux4_tb;

architecture Behavioral of mux4_tb is
constant dw_c : integer := 4;

signal g0, g1, g2, g3 : std_logic_vector(dw_c-1 downto 0);
signal selm4:  std_logic_vector(1 downto 0);
signal ym4: std_logic_vector(dw_c-1 downto 0);

begin
uut : entity work.mux4(Behavioral)

 Generic map(dw => dw_c)
 Port map (g0 => g0, g1 => g1, g2 => g2, g3 => g3, selm4 => selm4, ym4 => ym4);

 stim: process
 begin
 g0 <= "0001";
 g1 <= "0010"; 
 g2 <= "0011"; 
 g3 <= "0100";
      
for i in 0 to 3 loop
selm4 <= std_logic_vector(TO_UNSIGNED(i, selm4'length)); 
wait for 10 ns;
end loop;
finish;
end process stim;  

end Behavioral;
