----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:05:41 PM
-- Design Name: 
-- Module Name: cu_1 - Behavioral
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


entity cu_1 is 
generic (dw : integer := 4);
port  ( a,b : in std_logic_vector( dw-1 downto 0);
    sel1: in std_logic_vector(2 downto 0);
    y1: out std_logic_vector( dw-1 downto 0)
    );
    end cu_1;
    
    architecture Behavioral of cu_1 is
    begin 
    process(a,b,sel1)
        variable mult_full :std_logic_vector(2*dw-1 downto 0);
 begin
    case sel1 is
    when "000"=>
    y1<= std_logic_vector(unsigned(a)+unsigned(b));
    when "001"=>
    y1<=std_logic_vector(unsigned(a) - unsigned(b));
    when "010"=>
  mult_full := std_logic_vector (unsigned(a)*unsigned(b));
   y1<=mult_full(dw-1 downto 0); 
   when others=>
   y1<="0000";
   end case;
   end process;
   end Behavioral;