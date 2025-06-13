library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Car_Parking_System is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        car_enter : in  STD_LOGIC;
        car_exit  : in  STD_LOGIC;
        count     : out STD_LOGIC_VECTOR(3 downto 0);  -- 4 bits for 0 to 8
        full      : out STD_LOGIC;
        empty     : out STD_LOGIC
    );
end Car_Parking_System;

architecture Behavioral of Car_Parking_System is
    signal car_count : STD_LOGIC_VECTOR(3 downto 0) := "0000"; -- internal count
    constant MAX_CAPACITY : STD_LOGIC_VECTOR(3 downto 0) := "1000"; -- 8
begin

    process(clk, reset)
    begin
        if reset = '1' then
            car_count <= "0000";
        elsif rising_edge(clk) then
            if car_enter = '1' and car_count < MAX_CAPACITY then
                car_count <= car_count + 1;
            elsif car_exit = '1' and car_count > "0000" then
                car_count <= car_count - 1;
            end if;
        end if;
    end process;

    -- Outputs
    count <= car_count;
    full <= '1' when car_count = MAX_CAPACITY else '0';
    empty <= '1' when car_count = "0000" else '0';

end Behavioral;
