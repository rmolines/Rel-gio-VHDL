library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX is
  port (
  SEL : in std_logic_vector (7 downto 0);
  A   : in std_logic_vector (7 downto 0);
  B   : in std_logic_vector (7 downto 0);
  C : out std_logic_vector (7 downto 0)
  );
end entity;

architecture MUX_ARCH of MUX is
begin
  C <= A WHEN (SEL = "00000000") ELSE
           B;
end architecture;
