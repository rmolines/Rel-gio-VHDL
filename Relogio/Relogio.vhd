library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Relogio is
  Port (
    clk : in std_logic;
    saida: out std_logic_vector (7 downto 0)
  );
end entity;


architecture watch of Relogio is
  signal ULA_IN_A, ULA_IN_B, ULA_OUT, REG_ULA : std_logic_vector (7 downto 0);
  signal COMP_IN_A, COMP_IN_B, COMP_OUT, REG_COMP : std_logic_vector (7 downto 0);
  signal MUX_IN_A, MUX_IN_B, MUX_SEL, MUX_OUT, SECONDS : std_logic_vector (7 downto 0);
  -- signal BR_END_A, BR_END_B, BR_END_C, BR_DADO_C, BR_ESCREVE_C, BR_SAIDA_A, BR_SAIDA_B : std_logic_vector (7 downto 0);
  signal CLK_IN, CLK_OUT : std_logic;

begin
  CLK_IN <= clk;
  ULA_IN_B <= x"01";
  SECONDS <= std_logic_vector(to_unsigned(10, 8));
  MUX_IN_A <= std_logic_vector(to_unsigned(0, 8));
	
--  divG      : entity work.divisorGenerico (divisaoGenerica)  generic map (divisor => 1) --(divisaoGenerica) := 2^divisor
--                port map (clk => CLK_IN, saida_clk => CLK_OUT);
  ULA       : entity work.ULA Port map (A => ULA_IN_A, B => ULA_IN_B, C => ULA_OUT, sel => "00");
  COMP      : entity work.ULA port map (A => ULA_IN_A, B => SECONDS, C => COMP_OUT, sel => "01");
  regValue  : entity work.registradorGenerico port map (DIN => MUX_OUT, DOUT => ULA_IN_A, CLK => clk, ENABLE => '1', RST => '0');
  MUX       : entity work.MUX port map (A => MUX_IN_A, B => ULA_OUT, SEL => COMP_OUT, MUX_OUT => MUX_OUT);
  saida <= ULA_OUT;

end architecture;
