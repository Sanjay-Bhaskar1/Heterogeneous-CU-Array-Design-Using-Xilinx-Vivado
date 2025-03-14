----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 09:33:19 PM
-- Design Name: 
-- Module Name: cu_3_tb - Behavioral
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

entity cu_3_tb is
--  Port ( );
end cu_3_tb;

architecture Behavioral of cu_3_tb is
constant dw_c : integer := 4;
signal Sel3 : std_logic_vector (2 downto 0);
signal e,f,y3 :std_logic_vector (dw_c - 1 downto 0);


begin
uut : entity work.cu_3(Behavioral)

generic map(dw => dw_c)
port map (e=>e,f=>f,Sel3=>Sel3,y3=>y3);

stimuli : Process

begin

e<="0000";
f<="0001";
Sel3<="000";
 wait for 10ns;

e<="0000";
f<="0001";
Sel3<="001";
 wait for 10ns;
 
 e<="0000";
f<="0001";
Sel3<="010";
 wait for 10ns;
 
 e<="0000";
f<="0001";
Sel3<="011";
 wait for 10ns;
 
 e<="0000";
f<="0001";
Sel3<="100";
 wait for 10ns;

e<="0000";
f<="0001";
Sel3<="101";
 wait for 10ns;
 
 end process;
end Behavioral;
