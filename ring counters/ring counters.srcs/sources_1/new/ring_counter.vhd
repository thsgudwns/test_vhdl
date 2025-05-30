----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2025 07:55:43 PM
-- Design Name: 
-- Module Name: ring_counter - Behavioral
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

entity ring_counter is
    Port ( clk : in STD_LOGIC;
           set : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(0 to 3)
           );
end ring_counter;

architecture Behavioral of ring_counter is
signal Q_temp : std_logic_vector(0 to 3) := "0000";

begin

process(clk, set)

begin

if set = '1' then
    Q_temp <= "1000";

elsif Rising_edge(clk) then
    Q_temp(3) <= Q_temp(0);
    Q_temp(2) <= Q_temp(3);
    Q_temp(1) <= Q_temp(2);
    Q_temp(0) <= Q_temp(1);

end if;

end process;

Q <= Q_temp;
-- previous value should move on to the next value
-- if set is on, the D value should change on to the 1 from 0.
-- clk is input of the frequency
-- D and Q should repeat infinitely until the value of the Reset comes in.

end Behavioral;
