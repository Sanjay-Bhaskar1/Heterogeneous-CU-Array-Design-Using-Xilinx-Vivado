----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:09:29 PM
-- Design Name: 
-- Module Name: mux4 - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

 entity mux4 is
 generic (dw: integer:= 4);
 port(g0, g1, g2, g3 : in std_logic_vector(dw-1 downto 0);
 selm4: in std_logic_vector(1 downto 0);
 ym4: out std_logic_vector(dw-1 downto 0));
 
 end mux4;
 architecture Behavioral of mux4 is
 begin
 process(g0, g1,g2,g3, Selm4)
 begin
 case Selm4 is
when "00"=> ym4<=g0; 
when "01"=>ym4<=g1;
when "10"=>ym4<=g2;
when "11"=>ym4<=g3;

when others=>
ym4 <="0000";
   
end case;
 end process;
end Behavioral;

