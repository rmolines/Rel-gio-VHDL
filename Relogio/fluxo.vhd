library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxo is
  Port (
    clk : in std_logic;
    sel : in std_logic_vector (2 downto 0);
    enable : in std_logic_vector (5 downto 0);
    rst    : in std_logic_vector (5 downto 0);

    sum   : out std_logic_vector (3 downto 0);
    ssec_u: out std_logic_vector (3 downto 0);
    ssec_d: out std_logic_vector (3 downto 0);
    smin_u: out std_logic_vector (3 downto 0);
    smin_d: out std_logic_vector (3 downto 0);
    sh_u: out std_logic_vector (3 downto 0);
    sh_d: out std_logic_vector (3 downto 0)
  );
end entity;

architecture behaviour of fluxo is

  signal SEC_U, SEC_D, MIN_U, MIN_D, H_U, H_D : std_logic_vector (3 downto 0);
  signal ULA_IN_A, ULA_IN_B, ULA_OUT : std_logic_vector (3 downto 0);


begin
  ssec_u <= SEC_U;
  ssec_d <= SEC_D;
  smin_u <= MIN_U;
  smin_d <= MIN_D;
  sh_u <= H_U;
  sh_d <= H_D;
  sum <= ULA_OUT;

  --ULA_IN_A <= "0000"
  ULA_IN_B <= "0001";

  MUX6        : entity work.MUX6 port map (SEL => sel, A => SEC_U, B => SEC_D, C => MIN_U,
                D => MIN_D, E => H_U, F => H_D, SAIDA => ULA_IN_A);
  ULA         : entity work.ULA port map (A => ULA_IN_A, B => ULA_IN_B, C => ULA_OUT, sel => "00");

  REG_SEC_U   : entity work.registradorGenerico generic map (larguraDados => 4)
                port map (DIN => ULA_OUT, DOUT => SEC_U, CLK => clk,
                ENABLE => enable(0), RST => rst(0));
  REG_SEC_D   : entity work.registradorGenerico generic map (larguraDados => 4)
                port map (DIN => ULA_OUT, DOUT => SEC_D, CLK => clk,
                ENABLE => enable(1), RST => rst(1));
  REG_MIN_U   : entity work.registradorGenerico generic map (larguraDados => 4)
                port map (DIN => ULA_OUT, DOUT => MIN_U, CLK => clk,
                ENABLE => enable(2), RST => rst(2));
  REG_MIN_D   : entity work.registradorGenerico generic map (larguraDados => 4)
                port map (DIN => ULA_OUT, DOUT => MIN_D, CLK => clk,
                ENABLE => enable(3), RST => rst(3));
  REG_H_U     : entity work.registradorGenerico generic map (larguraDados => 4)
                port map (DIN => ULA_OUT, DOUT => H_U, CLK => clk,
                ENABLE => enable(4), RST => rst(4));
  REG_H_D     : entity work.registradorGenerico generic map (larguraDados => 4)
                port map (DIN => ULA_OUT, DOUT => H_D, CLK => clk,
                ENABLE => enable(5), RST => rst(5));


end architecture;
