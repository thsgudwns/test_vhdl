library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Traffic_Light is
    Port (
        clk     : in STD_LOGIC;
        reset   : in STD_LOGIC;
        red     : out STD_LOGIC;
        yellow  : out STD_LOGIC;
        green   : out STD_LOGIC
    );
end Traffic_Light;

architecture Behavioral of Traffic_Light is

    type state_type is (S0_GREEN, S1_YELLOW, S2_RED);
    signal state, next_state : state_type;
    signal count : INTEGER := 0;

    -- Set timing durations (in number of clock cycles)
    constant GREEN_TIME  : INTEGER := 10;
    constant YELLOW_TIME : INTEGER := 3;
    constant RED_TIME    : INTEGER := 7;

begin

    -- State register process
    process(clk, reset)
    begin
        if reset = '1' then
            state <= S0_GREEN;
            count <= 0;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Next state logic and output logic
    process(state, count)
    begin
        -- Default outputs
        red    <= '0';
        yellow <= '0';
        green  <= '0';

        case state is
            when S0_GREEN =>
                green <= '1';
                if count < GREEN_TIME then
                    next_state <= S0_GREEN;
                else
                    next_state <= S1_YELLOW;
                end if;

            when S1_YELLOW =>
                yellow <= '1';
                if count < YELLOW_TIME then
                    next_state <= S1_YELLOW;
                else
                    next_state <= S2_RED;
                end if;

            when S2_RED =>
                red <= '1';
                if count < RED_TIME then
                    next_state <= S2_RED;
                else
                    next_state <= S0_GREEN;
                end if;

            when others =>
                next_state <= S0_GREEN;
        end case;
    end process;

    -- Counter logic
    process(clk, reset)
    begin
        if reset = '1' then
            count <= 0;
        elsif rising_edge(clk) then
            if state = next_state then
                count <= count + 1;
            else
                count <= 0;
            end if;
        end if;
    end process;

end Behavioral;
