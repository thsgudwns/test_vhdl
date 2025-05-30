----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2025 08:44:11 PM
-- Design Name: 
-- Module Name: Tb_ring_counter - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tb_ring_counter is
    Port ( clk : in STD_LOGIC;
           set : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(0 to 3)
           );
end Tb_ring_counter;

architecture Behavioral of Tb_ring_counter is
signal 
begin


end Behavioral;
