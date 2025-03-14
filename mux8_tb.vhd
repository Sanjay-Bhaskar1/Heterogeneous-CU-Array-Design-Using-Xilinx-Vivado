----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 10:31:49 PM
-- Design Name: 
-- Module Name: mux8_tb - Behavioral
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

entity mux8_tb is
--  Port ( );
end mux8_tb;

architecture Behavioral of mux8_tb is
constant dw_c : integer := 4;

signal h0,h1,h2,h3,h4,h5,h6,h7,ym8 : std_logic_vector(dw_c-1 downto 0);
signal selm8:  std_logic_vector(2 downto 0);


begin
uut : entity work.mux8(Behavioral)

 Generic map(dw => dw_c)
 Port map (h0 => h0, h1 => h1, h2 => h2, h3 => h3, h4 => h4, h5 => h5, h6 => h6, h7 => h7, selm8 => selm8, ym8 => ym8);

 stim: process
  begin
 h0 <= "0001";
 h1 <= "0010"; 
 h2 <= "0011"; 
 h3 <= "0100";
 h4 <= "0001";
 h5 <= "0010"; 
 h6 <= "0011"; 
 h7 <= "0100";
      
for i in 0 to 7 loop
selm8 <= std_logic_vector(TO_UNSIGNED(i, selm8'length)); 
wait for 10 ns;
end loop;

 finish;
end process stim;  

end Behavioral;
