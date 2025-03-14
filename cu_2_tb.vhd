----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 09:22:55 PM
-- Design Name: 
-- Module Name: cu_2_tb - Behavioral
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

entity cu_2_tb is
--  Port ( );
end cu_2_tb;

architecture Behavioral of cu_2_tb is
constant dw_c : integer := 4;
signal Sel2 : std_logic_vector (2 downto 0);
signal c,d,y2 :std_logic_vector (dw_c - 1 downto 0);

begin
uut : entity work.cu_2(Behavioral)

generic map(dw => dw_c)
port map (c=>c,d=>d,Sel2=>Sel2,y2=>y2);

stimuli : Process

begin

c<="0000";
d<="0001";
Sel2<="000";
 wait for 10ns;

c<="0010";
d<="0001";
Sel2<="001";
 wait for 10ns;
 
end process;

end Behavioral;