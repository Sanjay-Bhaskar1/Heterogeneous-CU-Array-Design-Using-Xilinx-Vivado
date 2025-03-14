----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:06:46 PM
-- Design Name: 
-- Module Name: cu_2 - Behavioral
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


-- cu_2
--rotation
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity cu_2 is 
generic (dw : integer := 4);
port  ( c,d : in std_logic_vector(dw-1 downto 0);
    sel2: in std_logic_vector(2 downto 0);
    y2: out std_logic_vector(dw-1 downto 0));
    end cu_2;
    
    architecture Behavioral of cu_2 is
    begin 
    process(c,d,sel2)
   
 begin
    case sel2 is
    
    when "000"=>
   y2<= to_stdlogicvector(to_bitvector(c) ror to_integer(unsigned(d)));
   
    when "001"=>
  y2<= to_stdlogicvector(to_bitvector(c) rol to_integer(unsigned(d)));
  
   when others=>
   y2<="0000";
   
   end case;
   end process;
   end Behavioral;

