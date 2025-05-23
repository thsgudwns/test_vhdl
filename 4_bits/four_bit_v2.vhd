----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2025 07:25:48 PM
-- Design Name: 
-- Module Name: four_bit_v2 - Behavioral
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_v2 is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC; -- all inputs a
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC; -- all inputs b
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           output : out STD_LOGIC);
end four_bit_v2;

architecture Behavioral of four_bit_v2 is
--process for 4 bits number into A. a3/a2/a1/a0
begin


--process for 4 bits number into B. b3/b2/b1/b0


--input a0, a1, a2, a3 should be in and it should compare with b0, b1, b2, b3
-- the inputs of a0~a3 and b0~b3 should be summarized into the output of A / B
-- that output of A / B should be compared and show the results about it
-- A>B , A=B, A<B"maybe this way? string?"




end Behavioral;
