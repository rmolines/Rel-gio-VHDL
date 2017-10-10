LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity countador is
    generic
    (divisor : natural := 8);
    port(
        clk         :   in std_logic;
        saida_clk :   out std_logic
        );
end entity;



architecture divisaoSegundo of countador is
    signal cnt : unsigned(25 downto 0) := (others => '0');
    begin
        process(clk)
        begin
            if rising_edge(clk) then
              if cnt = 50000000 then
                cnt <= (others => '0');
					    else
                cnt <= cnt + 1;
              end if;
            end if;
        end process;
        saida_clk <= '1' WHEN (cnt) < 25000000 ELSE
                    '0';

end architecture;
