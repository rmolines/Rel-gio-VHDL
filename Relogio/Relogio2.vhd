library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Relogio is
  Port (
    clk : in std_logic;
    segundos: out std_logic_vector (7 downto 0);
    minutos:  out std_logic_vector (7 downto 0)
  );
end entity;


architecture watch of Relogio is
  signal ULA_S_IN_A, ULA_S_IN_B, ULA_S_OUT : std_logic_vector (7 downto 0);
  signal COMP_OUT : std_logic_vector (7 downto 0);
  signal MUX_S_IN_A, MUX_S_OUT : std_logic_vector (7 downto 0);
  signal SECONDS, MINUTES : std_logic_vector (7 downto 0);

  signal ZERO_SIG : std_logic_vector (7 downto 0);
  signal ONE_SIG : std_logic_vector (7 downto 0);

  signal ULA_M_IN_A, ULA_M_IN_B, ULA_M_OUT : std_logic_vector (7 downto 0);
  signal MUX_M_IN_A, MUX_M_IN_B, MUX_M_OUT : std_logic_vector (7 downto 0);
  signal COMP_M_OUT : std_logic_vector (7 downto 0);


  signal CLK_IN, CLK_OUT : std_logic;

begin
  CLK_IN <= clk;
  ULA_S_IN_B <= x"01";
  SECONDS <= std_logic_vector(to_unsigned(2, 8));
  MINUTES <= std_logic_vector(to_unsigned(6, 8));


  ZERO_SIG <= std_logic_vector(to_unsigned(0, 8));
  ONE_SIG <= std_logic_vector(to_unsigned(1, 8));

--  divG      : entity work.divisorGenerico (divisaoGenerica)  generic map (divisor => 1) --(divisaoGenerica) := 2^divisor
--                port map (clk => CLK_IN, saida_clk => CLK_OUT);
  ULA       : entity work.ULA Port map (A => ULA_S_IN_A, B => ULA_S_IN_B, C => ULA_S_OUT, sel => "00");
  COMP      : entity work.ULA port map (A => ULA_S_IN_A, B => SECONDS, C => COMP_OUT, sel => "01");
  regS		  : entity work.registradorGenerico port map (DIN => MUX_S_OUT, DOUT => ULA_S_IN_A, CLK => clk, ENABLE => '1', RST => '0');
  MUX       : entity work.MUX port map (A => ZERO_SIG, B => ULA_S_OUT, SEL => COMP_OUT, C => MUX_S_OUT);

  MUX_60_S  : entity work.MUX port map (A => ONE_SIG, B => ZERO_SIG, SEL => COMP_OUT, C => ULA_M_IN_B);
  ULA_M     : entity work.ULA port map (A => ULA_M_IN_A, B => ULA_M_IN_B, C => ULA_M_OUT, sel => "00");
  MUX_0_M   : entity work.MUX port map (A => ZERO_SIG, B => ULA_M_OUT, SEL => COMP_M_OUT, C => MUX_M_OUT);
  REG_M     : entity work.registradorGenerico port map (DIN => MUX_M_OUT, DOUT => ULA_M_IN_A, CLK => clk, ENABLE => '1', RST => '0');
  COMP_M    : entity work.ULA port map (A => ULA_M_IN_A, B => MINUTES, C => COMP_M_OUT, sel => "01");

  segundos <= ULA_S_OUT;
  minutos <= ULA_M_OUT;

end architecture;
