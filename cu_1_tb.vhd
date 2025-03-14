----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:19:45 PM
-- Design Name: 
-- Module Name: cu_1_tb - Behavioral
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

entity cu_1_tb is

end cu_1_tb;

architecture Behavioral of cu_1_tb is
constant dw_c : integer := 4;
signal Sel1 : std_logic_vector (2 downto 0);
signal a,b,y1 :std_logic_vector (dw_c - 1 downto 0);

begin

uut : entity work.cu_1(Behavioral)

generic map(dw => dw_c)
port map (a=>a,b=>b,Sel1=>Sel1,y1=>y1);

stimuli : Process

begin
a<="0000";
b<="0001";
Sel1<="000";
 wait for 10ns;

a<="0010";
b<="0001";
Sel1<="001";
 wait for 10ns;
 
a<="0001";
b<="0001";
Sel1<="010";
 wait for 10ns;
 
a<="0001";
b<="0001";
Sel1<="011";
wait for 10ns;

end process;

end Behavioral;
