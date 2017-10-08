library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity relogio is
  port (
    -- Entradas (placa)
    CLOCK_50 : in STD_LOGIC;
	 KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
   SW: in STD_LOGIC_VECTOR(17 DOWNTO 0);


    -- Saidas (placa)
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0);
	 TESTE : OUT STD_LOGIC_VECTOR (3 downto 0);
   muxteste : out std_logic_vector (2 downto 0);
   enbteste : out std_logic_vector (5 downto 0);
   rstteste : out std_logic_vector (5 downto 0)
  );
end entity;

architecture comportamento of relogio is

  signal auxSum, auxSsec_u, auxSsec_d, auxSmin_u, auxSmin_d, auxSh_d, auxSh_u : std_logic_vector (3 downto 0);
  signal ajusteSel, relSel, modoSel : std_logic_vector (2 downto 0);
  signal ajusteEnable, relEnable, modoEnable, ajusteRst, relRst, modoRst : std_logic_vector (5 downto 0);
  signal auxClock, auxReset : std_logic;

  begin

    auxReset <= not(KEY(3));


    -- Instancia o fluxo de dados mais simples:
    FD : entity work.fluxo
      Port map (clk => auxClock, sel => modoSel, ssec_d => auxSsec_d, ssec_u => auxSsec_u, smin_d => auxSmin_d,
                smin_u => auxSmin_u, sh_d => auxSh_d, sh_u => auxSh_u, enable => modoEnable, rst => modoRst,
                sum => auxSum);

    -- horas:
    display0 : entity work.conversorHex7seg
      Port map (saida7seg => HEX0, dadoHex => auxSsec_u);
    display1 : entity work.conversorHex7seg
      Port map (saida7seg => HEX1, dadoHex => auxSsec_d);
    display2 : entity work.conversorHex7seg
      Port map (saida7seg => HEX2, dadoHex => auxSmin_u);
    display3 : entity work.conversorHex7seg
      Port map (saida7seg => HEX3, dadoHex => auxSmin_d);
    display4 : entity work.conversorHex7seg
      Port map (saida7seg => HEX4, dadoHex => auxSh_u);
    display5 : entity work.conversorHex7seg
      Port map (saida7seg => HEX5, dadoHex => auxSh_d);



    -- Instacia a maquina de estados:
    relogio : entity work.SM1
      port map( clock => auxClock,
        ent => auxSum, mux => relSel, enable => relEnable,
        rst => relRst
      );

	 -- Instacia a maquina de estados:
    ajuste : entity work.AjusteSM
      port map( clock => auxClock,
        ent => auxSum, mux => ajusteSel, enable => ajusteEnable,
        rst => ajusteRst, botao => KEY(2 downto 0)
      );

    -- Instacia a maquina de estados:
     modo : entity work.ModoSM
       port map( clock => auxClock,
         muxout => modoSel, enableout => modoEnable,
         rstout => modoRst, ajuste => SW(0), relEnable => relEnable,
         relRst => relRst, relMux => relSel, ajusteMux => ajusteSel,
         ajusteRst => ajusteRst, ajusteEnable => ajusteEnable
       );


	 --Displays e Leds:
	 freq : entity work.divisorGenerico (divisaoGenerica)  generic map (divisor => 25) --(divisaoGenerica) := 2^divisor
	  port map (clk =>  CLOCK_50, saida_clk => auxClock);


	 --auxClock <= CLOCK_50;
end architecture;
