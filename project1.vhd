----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:18:41 PM
-- Design Name: 
-- Module Name: project1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project1 is
 generic (dw: integer:= 4);
  port(i,j : in vec_arr_1d (0 to 3) (dw - 1 downto 0);
    selp : in vec_arr_2d (0 to 3) (0 to 3) (2 downto 0);
    mp4 : in vec_arr_2d (0 to 2) (0 to 7) (1 downto 0);
    mp8 : in vec_arr_2d (0 to 2) (0 to 7) (2 downto 0);
    y : out vec_arr_1d (0 to 3) (dw - 1 downto 0)
    );
end project1;

architecture Behavioral of project1 is
signal cy : vec_arr_2d (0 to 2) (0 to 3) (dw - 1 downto 0);
signal my : vec_arr_2d (0 to 2) (0 to 7) (dw - 1 downto 0);
begin

CU00:ENTITY work.cu_3(Behavioral)
port map(e=>i(0),f=>j(0),sel3=>selp(0)(0),y3=>cy(0)(0));
CU01:ENTITY work.cu_1(Behavioral)
port map(a=>i(1),b=>j(1),sel1=>selp(0)(1),y1=>cy(0)(1));
CU02:ENTITY work.cu_2(Behavioral)
port map(c=>i(2),d=>j(2),sel2=>selp(0)(2),y2=>cy(0)(2));
CU03:ENTITY work.cu_3(Behavioral)
port map(e=>i(3),f=>j(3),sel3=>selp(0)(3),y3=>cy(0)(3));

MUX00:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(0),ym4=>my(0)(0));
MUX01:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(1),ym4=>my(0)(1));
MUX02:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(2),ym4=>my(0)(2));
MUX03:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(3),ym4=>my(0)(3));
MUX04:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(4),ym4=>my(0)(4));
MUX05:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(5),ym4=>my(0)(5));
MUX06:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(6),ym4=>my(0)(6));
MUX07:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(0)(1),g2=>cy(0)(2),g3=>cy(0)(3),selm4=>mp4(0)(7),ym4=>my(0)(7));

CU10:ENTITY work.cu_3(Behavioral)
port map(e=>my(0)(0),f=>my(0)(1),sel3=>selp(1)(0),y3=>cy(1)(0));
CU11:ENTITY work.cu_1(Behavioral)
port map(a=>my(0)(2),b=>my(0)(3),sel1=>selp(1)(1),y1=>cy(1)(1));
CU12:ENTITY work.cu_2(Behavioral)
port map(c=>my(0)(4),d=>my(0)(5),sel2=>selp(1)(2),y2=>cy(1)(2));
CU13:ENTITY work.cu_3(Behavioral)
port map(e=>my(0)(6),f=>my(0)(7),sel3=>selp(1)(3),y3=>cy(1)(3));

MUX10:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(1)(0),g2=>cy(1)(1),g3=>cy(1)(2),selm4=>mp4(1)(0),ym4=>my(1)(0));
MUX11:ENTITY work.mux4(Behavioral)
port map(g0=>cy(0)(0),g1=>cy(1)(0),g2=>cy(1)(1),g3=>cy(1)(2),selm4=>mp4(1)(1),ym4=>my(1)(1));
MUX12:ENTITY work.mux8(Behavioral)
port map(h0=>cy(0)(0),h1=>cy(0)(1),h2=>cy(0)(2),h3=>cy(0)(3),h4=>cy(1)(0),h5=>cy(1)(1),h6=>cy(1)(2),h7=>cy(1)(3),selm8=>mp8(1)(2),ym8=>my(1)(2));
MUX13:ENTITY work.mux8(Behavioral)
port map(h0=>cy(0)(0),h1=>cy(0)(1),h2=>cy(0)(2),h3=>cy(0)(3),h4=>cy(1)(0),h5=>cy(1)(1),h6=>cy(1)(2),h7=>cy(1)(3),selm8=>mp8(1)(3),ym8=>my(1)(3));
MUX14:ENTITY work.mux8(Behavioral)
port map(h0=>cy(0)(0),h1=>cy(0)(1),h2=>cy(0)(2),h3=>cy(0)(3),h4=>cy(1)(0),h5=>cy(1)(1),h6=>cy(1)(2),h7=>cy(1)(3),selm8=>mp8(1)(4),ym8=>my(1)(4));
MUX15:ENTITY work.mux8(Behavioral)
port map(h0=>cy(0)(0),h1=>cy(0)(1),h2=>cy(0)(2),h3=>cy(0)(3),h4=>cy(1)(0),h5=>cy(1)(1),h6=>cy(1)(2),h7=>cy(1)(3),selm8=>mp8(1)(5),ym8=>my(1)(5));
MUX16:ENTITY work.mux4(Behavioral)
port map(g0=>cy(1)(1),g1=>cy(1)(2),g2=>cy(1)(3),g3=>cy(0)(3),selm4=>mp4(1)(6),ym4=>my(1)(6));
MUX17:ENTITY work.mux4(Behavioral)
port map(g0=>cy(1)(1),g1=>cy(1)(2),g2=>cy(1)(3),g3=>cy(0)(3),selm4=>mp4(1)(7),ym4=>my(1)(7));

CU20:ENTITY work.cu_3(Behavioral)
port map(e=>my(1)(0),f=>my(1)(1),sel3=>selp(2)(0),y3=>cy(2)(0));
CU21:ENTITY work.cu_1(Behavioral)
port map(a=>my(1)(2),b=>my(1)(3),sel1=>selp(2)(1),y1=>cy(2)(1));
CU22:ENTITY work.cu_2(Behavioral)
port map(c=>my(1)(4),d=>my(1)(5),sel2=>selp(2)(2),y2=>cy(2)(2));
CU23:ENTITY work.cu_3(Behavioral)
port map(e=>my(1)(6),f=>my(1)(7),sel3=>selp(2)(3),y3=>cy(2)(3));

MUX20:ENTITY work.mux4(Behavioral)
port map(g0=>cy(1)(0),g1=>cy(2)(0),g2=>cy(2)(1),g3=>cy(2)(2),selm4=>mp4(2)(0),ym4=>my(2)(0));
MUX21:ENTITY work.mux4(Behavioral)
port map(g0=>cy(1)(0),g1=>cy(2)(0),g2=>cy(2)(1),g3=>cy(2)(2),selm4=>mp4(2)(1),ym4=>my(2)(1));
MUX22:ENTITY work.mux8(Behavioral)
port map(h0=>cy(1)(0),h1=>cy(1)(1),h2=>cy(1)(2),h3=>cy(1)(3),h4=>cy(2)(0),h5=>cy(2)(1),h6=>cy(2)(2),h7=>cy(2)(3),selm8=>mp8(2)(2),ym8=>my(2)(2));
MUX23:ENTITY work.mux8(Behavioral)
port map(h0=>cy(1)(0),h1=>cy(1)(1),h2=>cy(1)(2),h3=>cy(1)(3),h4=>cy(2)(0),h5=>cy(2)(1),h6=>cy(2)(2),h7=>cy(2)(3),selm8=>mp8(2)(3),ym8=>my(2)(3));
MUX24:ENTITY work.mux8(Behavioral)
port map(h0=>cy(1)(0),h1=>cy(1)(1),h2=>cy(1)(2),h3=>cy(1)(3),h4=>cy(2)(0),h5=>cy(2)(1),h6=>cy(2)(2),h7=>cy(2)(3),selm8=>mp8(2)(4),ym8=>my(2)(4));
MUX25:ENTITY work.mux8(Behavioral)
port map(h0=>cy(1)(0),h1=>cy(1)(1),h2=>cy(1)(2),h3=>cy(1)(3),h4=>cy(2)(0),h5=>cy(2)(1),h6=>cy(2)(2),h7=>cy(2)(3),selm8=>mp8(2)(5),ym8=>my(2)(5));
MUX26:ENTITY work.mux4(Behavioral)
port map(g0=>cy(2)(1),g1=>cy(2)(2),g2=>cy(2)(3),g3=>cy(1)(3),selm4=>mp4(2)(6),ym4=>my(2)(6));
MUX27:ENTITY work.mux4(Behavioral)
port map(g0=>cy(2)(1),g1=>cy(2)(2),g2=>cy(2)(3),g3=>cy(1)(3),selm4=>mp4(2)(7),ym4=>my(2)(7));

CU30:ENTITY work.cu_3(Behavioral)
port map(e=>my(2)(0),f=>my(2)(1),sel3=>selp(3)(0),y3=>y(0));
CU31:ENTITY work.cu_1(Behavioral)
port map(a=>my(2)(2),b=>my(2)(3),sel1=>selp(3)(1),y1=>y(1));
CU32:ENTITY work.cu_2(Behavioral)
port map(c=>my(2)(4),d=>my(2)(5),sel2=>selp(3)(2),y2=>y(2));
CU33:ENTITY work.cu_3(Behavioral)
port map(e=>my(2)(6),f=>my(2)(7),sel3=>selp(3)(3),y3=>y(3));


end Behavioral;
