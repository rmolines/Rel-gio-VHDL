library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity relogio is
  port (
    -- Entradas (placa)
    CLOCK_50 : in STD_LOGIC;

    -- Saidas (placa)
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;

architecture comportamento of relogio is

  signal auxSel, auxSum, auxSsec_u, auxSsec_d, auxSmin_u, auxSmin_d, auxSh_d, auxSh_u : std_logic_vector (3 downto 0);
  signal auxEnable, auxRst : std_logic_vector (5 downto 0);


  begin


    -- Instancia o fluxo de dados mais simples:
    FD : entity work.fluxo
      Port map (clk => auxClock, sel => auxSel, ssec_d => auxSsec_d, ssec_u => auxSsec_u, smin_d => auxSmin_d,
                smin_u => auxSmin_u, sh_d => auxSh_d, sh_u => auxSh_u, enable => auxEnable, rst => auxRst
                sum => auxSum);

    -- horas:
    display0 : entity work.conversorHex7seg
      Port map (saida7seg => HEX0, dadoHex => auxSsec_u, apaga => auxOverFlow);
    display1 : entity work.conversorHex7seg
      Port map (saida7seg => HEX1, dadoHex => auxSsec_d, apaga => auxOverFlow);
    display2 : entity work.conversorHex7seg
      Port map (saida7seg => HEX2, dadoHex => auxSmin_u, apaga => auxOverFlow);
    display3 : entity work.conversorHex7seg
      Port map (saida7seg => HEX3, dadoHex => auxSmin_d, apaga => auxOverFlow);
    display4 : entity work.conversorHex7seg
      Port map (saida7seg => HEX4, dadoHex => auxSh_u, apaga => auxOverFlow);
    display5 : entity work.conversorHex7seg
      Port map (saida7seg => HEX5, dadoHex => auxSh_d, apaga => auxOverFlow);


    -- Instacia a maquina de estados:
    relogio : entity work.SM1
      port map(
        reset => auxReset, clock => auxClock, ent => auxSum, mux => auxSel, enable => auxEnable,
                 rst => auxRst
      );
