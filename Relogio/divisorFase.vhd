LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorFase is
    port(
        clk         :   in std_logic;
        saida_clk :   out std_logic
        );
end entity;

architecture divisaoGenerica of divisorFase is
	 signal temp : std_logic;
    begin
        process(clk)
        begin
            if rising_edge(clk) then
                temp <= NOT temp;
            end if;
        end process;
		  saida_clk <= temp;
end architecture;
