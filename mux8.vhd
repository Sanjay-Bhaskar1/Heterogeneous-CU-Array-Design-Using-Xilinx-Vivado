----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:12:50 PM
-- Design Name: 
-- Module Name: mux8 - Behavioral
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


--mux_8*1
library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 entity mux8 is
 generic (dw: integer:= 4);
 port(h0,h1,h2,h3,h4,h5,h6,h7 : in std_logic_vector(dw-1 downto 0);
 selm8: in std_logic_vector(2 downto 0);
 ym8: out std_logic_vector(dw-1 downto 0));
 end mux8;
 
 architecture Behavioral of mux8 is
 begin
 process(h0,h1,h2,h3,h4,h5,h6,h7,Selm8)
 begin
 case Selm8 is
when "000"=> ym8<=h0; 
when"001"=>ym8<=h1;
when"010"=>ym8<=h2;
when"011"=>ym8<=h3;
when"100"=>ym8<=h4;
when"101"=>ym8<=h5;
when"110"=>ym8<=h6;
when"111"=>ym8<=h7;
when others=>
ym8 <="0000";
end case;
 end process;
end Behavioral;
