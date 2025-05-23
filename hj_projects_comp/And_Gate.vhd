----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2025 08:00:35 PM
-- Design Name: 
-- Module Name: And_Gate - Behavioral
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

entity And_Gate is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           o : out STD_LOGIC);
end And_Gate;

architecture Behavioral of And_Gate is

begin
 process(x,y)
 begin
 if((x = '1') and (y = '1')) then
   o <= '1';
 else
   o <= '0';
 end if;
 end process;
   
 


end Behavioral;
