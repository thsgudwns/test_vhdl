library IEEE;

use IEEE.std_logic_1164.ALL;

entity and_tb is
-- Port();
end and_tb;

architecture Behavioral of and_tb is
--Component name and entity's name must be same
--ports must be same
component and_gate is
Port(x,y : in std_logic;
o: out std_logic);
end component;
--inputs
signal x : std_logic := '0';
signal y : std_logic := '0';
--outputs
signal o : std_logic;

begin
uut: and_gate PORT MAP(x=>x,y=>y,o=>o);
--Stimulus Process
stim_proe : process
begin
wait for 10 ns;
x <= '1';
y <= '0';
wait for 10 ns;
x <= '0';
y <= '1';
wait for 10 ns;
x <= '0';
y <= '0';
wait for 10ns;
x <= '1';
y <= '1';
wait for 10 ns;
end process;
end Behavioral;