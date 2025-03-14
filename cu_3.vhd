----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:07:34 PM
-- Design Name: 
-- Module Name: cu_3 - Behavioral
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


--cu_3
--gates
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity cu_3 is 
generic (dw : integer := 4);
port  ( e,f: in std_logic_vector(dw-1 downto 0);
       sel3: in std_logic_vector(2 downto 0);
    y3: out std_logic_vector(dw-1 downto 0));
    end cu_3;
    
    architecture Behavioral of cu_3 is
    begin 
      process(e,f,sel3)
 
 begin
    case sel3 is
    when "000"=>
    y3<=e and f;
    when "001"=>
    y3<=e or f;
     when "010"=>
   y3<=e nand f;
       when "011"=>
    y3<=e nor f;
       when "100"=>
    y3<=e xor f;
       when "101"=>
    y3<=e xnor f;
   when others=>
   y3<="0000";
   
   end case;
   end process;
   end Behavioral;

