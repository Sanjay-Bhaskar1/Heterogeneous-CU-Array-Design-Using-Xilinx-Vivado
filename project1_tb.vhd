----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2025 07:04:10 PM
-- Design Name: 
-- Module Name: project1_tb - Behavioral
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
use work.custom_pack.all;
use std.env.finish;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project1_tb is
--  Port ( );
end project1_tb;

architecture Behavioral of project1_tb is
 constant dw_c: integer:= 4;
 signal i,j : vec_arr_1d(0 to 3)(dw_c - 1 downto 0);
 signal selp : vec_arr_2d(0 to 3)(0 to 3)(2 downto 0);
 signal mp4 : vec_arr_2d(0 to 2)(0 to 7)(1 downto 0);
 signal mp8 : vec_arr_2d(0 to 2)(0 to 7)(2 downto 0);
 signal y : vec_arr_1d(0 to 3)(dw_c - 1 downto 0);
 
begin
uut : entity work.project1(Behavioral)
 Generic map(dw => dw_c)
 port map(i=>i,j=>j,selp=>selp,mp4=>mp4,mp8=>mp8,y=>y);
 
process
begin
i<=("1100" , "0101" , "1101" , "1001");
j<=("1010" , "0010" , "1011" , "0111");

selp(0)(0)<="010";
selp(0)(1)<="010";
selp(0)(2)<="001";
selp(0)(3)<="101";
mp4(0)(0)<="01";
mp4(0)(1)<="10";
mp4(0)(2)<="10";
mp4(0)(3)<="00";
mp4(0)(4)<="11";
mp4(0)(5)<="00";
mp4(0)(6)<="01";
mp4(0)(7)<="11";

selp(1)(0)<="100";
selp(1)(1)<="001";
selp(1)(2)<="000";
selp(1)(3)<="001";
mp4(1)(0)<="00";
mp4(1)(1)<="11";
mp8(1)(2)<="011";
mp8(1)(3)<="100";
mp8(1)(4)<="010";
mp8(1)(5)<="111";
mp4(1)(6)<="00";
mp4(1)(7)<="11";

selp(2)(0)<="011";
selp(2)(1)<="000";
selp(2)(2)<="001";
selp(2)(3)<="000";
mp4(2)(0)<="10";
mp4(2)(1)<="00";
mp8(2)(2)<="011";
mp8(2)(3)<="100";
mp8(2)(4)<="101";
mp8(2)(5)<="011";
mp4(2)(6)<="11";
mp4(2)(7)<="01";

selp(3)(0)<="101";
selp(3)(1)<="001";
selp(3)(2)<="001";
selp(3)(3)<="010";

wait for 20ns;

finish;
end process;

end Behavioral;
