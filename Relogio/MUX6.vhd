library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX6 is
  port (
  SEL : in std_logic_vector (2 downto 0);
  A   : in std_logic_vector (3 downto 0);
  B   : in std_logic_vector (3 downto 0);
  C   : in std_logic_vector (3 downto 0);
  D   : in std_logic_vector (3 downto 0);
  E   : in std_logic_vector (3 downto 0);
  F   : in std_logic_vector (3 downto 0);
  SAIDA : out std_logic_vector (3 downto 0)
  );
end entity;

architecture MUX_ARCH of MUX6 is
begin
  SAIDA <= A WHEN (SEL = "000") ELSE
           B WHEN (SEL = "001") ELSE
           C WHEN (SEL = "010") ELSE
           D WHEN (SEL = "011") ELSE
           E WHEN (SEL = "100") ELSE
           F WHEN (SEL = "101"); 

end architecture;
