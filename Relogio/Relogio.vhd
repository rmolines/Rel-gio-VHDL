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
    LEDR  : out STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
    LEDG  : out STD_LOGIC_VECTOR(8 DOWNTO 0) := (others => '0');
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;

architecture comportamento of relogio is

  signal auxSum, auxSsec_u, auxSsec_d, auxSmin_u, auxSmin_d, auxSh_d, auxSh_u : std_logic_vector (3 downto 0);
  signal cronoSum, cronoSsec_u, cronoSsec_d, cronoSmin_u, cronoSmin_d, cronoSh_d, cronoSh_u : std_logic_vector (3 downto 0);
  signal alarmeSum, alarmeSsec_u, alarmeSsec_d, alarmeSmin_u, alarmeSmin_d, alarmeSh_d, alarmeSh_u : std_logic_vector (3 downto 0);
  signal ajusteSel, alarmeSel, relSel, rel2Sel, cronoSel : std_logic_vector (2 downto 0);
  signal ajusteEnable, alarmeEnable, relEnable, rel2Enable ,cronoEnable, ajusteRst, alarmeRst, relRst, rel2Rst, cronoRst : std_logic_vector (5 downto 0);
  signal auxClock, auxReset, ajusteClock, clockOut, relClock, secClock, faseClock, tempClock : std_logic;
  signal relOut, alarmeOut, displayOut, cronoOut : std_logic_vector (23 downto 0);
  signal buttonsAlarme : std_logic_vector (2 downto 0);
  signal buttonsCrono : std_logic_vector (1 downto 0);
  signal tocaAlarme : std_logic;

  begin

    auxReset <= not(KEY(3));
    relOut <= (auxSsec_u & auxSsec_d & auxSmin_u & auxSmin_d & auxSh_u & auxSh_d);
    alarmeOut <= (alarmeSsec_u & alarmeSsec_d & alarmeSmin_u & alarmeSmin_d & alarmeSh_u & alarmeSh_d);
    cronoOut <= (cronoSsec_u & cronoSsec_d & cronoSmin_u & cronoSmin_d & cronoSh_u & cronoSh_d);

    buttonsAlarme <=  not(KEY(2 downto 0)) WHEN SW(2)='1'  else
                "000";
    buttonsCrono <=  not(KEY(1 downto 0)) WHEN SW(3)='1'  else
                "00";

    -- Instancia o fluxo de dados do calculo do relogio:
    FD_rel : entity work.fluxo
      Port map (clk => clockOut, sel => rel2Sel, ssec_d => auxSsec_d, ssec_u => auxSsec_u, smin_d => auxSmin_d,
                smin_u => auxSmin_u, sh_d => auxSh_d, sh_u => auxSh_u, enable => rel2Enable, rst => rel2Rst,
                sum => auxSum);

    -- Instancia o fluxo de dados do controle de ajuste do alarme:
    FD_alarme : entity work.fluxo
      Port map (clk => ajusteClock, sel => alarmeSel, ssec_d => alarmeSsec_d, ssec_u => alarmeSsec_u, smin_d => alarmeSmin_d,
                smin_u => alarmeSmin_u, sh_d => alarmeSh_d, sh_u => alarmeSh_u, enable => alarmeEnable, rst => alarmeRst,
                sum => alarmeSum);

    -- Instancia o fluxo de dados do calculo do cronometro:
    FD_cronometro : entity work.fluxo
      Port map (clk => relClock, sel => cronoSel, ssec_d => cronoSsec_d, ssec_u => cronoSsec_u, smin_d => cronoSmin_d,
                smin_u => cronoSmin_u, sh_d => cronoSh_d, sh_u => cronoSh_u, enable => cronoEnable, rst => cronoRst,
                sum => cronoSum);

    -- display do tempo:
    display0 : entity work.conversorHex7seg
      Port map (saida7seg => HEX0, dadoHex => displayOut(23 downto 20));
    display1 : entity work.conversorHex7seg
      Port map (saida7seg => HEX1, dadoHex => displayOut(19 downto 16));
    display2 : entity work.conversorHex7seg
      Port map (saida7seg => HEX2, dadoHex => displayOut(15 downto 12));
    display3 : entity work.conversorHex7seg
      Port map (saida7seg => HEX3, dadoHex => displayOut(11 downto 8));
    display4 : entity work.conversorHex7seg
      Port map (saida7seg => HEX4, dadoHex => displayOut(7 downto 4));
    display5 : entity work.conversorHex7seg
      Port map (saida7seg => HEX5, dadoHex => displayOut(3 downto 0));

	 --comparador para ativar o alarme
    comparador : entity work.comparador
      port map (clk => relClock, a => relOut, b => alarmeOut,
        c => tocaAlarme
      );

    -- Instacia a maquina de estados do controle do relogio:
    relogio : entity work.SM1
      port map( clock => relClock,
        ent => auxSum, mux => relSel, enable => relEnable,
        rst => relRst,
		  hu => auxSh_u, hd => auxSh_d
      );

    -- Instacia a maquina de estados do cronometro:
    cronometro : entity work.CronoSM
      port map( clock => relClock,
        ent => cronoSum, mux => cronoSel, enable => cronoEnable,
        rst => cronoRst, buttons => buttonsCrono
      );

	 -- Instacia a maquina de estados do ajuste das horas:
    ajuste : entity work.AjusteSM
      port map( clock => ajusteClock,
        ent => auxSum, mux => ajusteSel, enable => ajusteEnable,
        rst => ajusteRst, botao => not(KEY(2 downto 0))
      );

    -- Instacia a maquina de estados do ajuste da horario do alarme:
     ajuste_alarme : entity work.AjusteSM
       port map( clock => ajusteClock,
         ent => alarmeSum, mux => alarmeSel, enable => alarmeEnable,
         rst => alarmeRst, botao => buttonsAlarme
       );

    -- Instacia a maquina de estados que troca entre o relogio o acerto das horas:
     ajuste_relogio : entity work.ModoSM
       port map( clock => relClock, ajusteClock => ajusteClock,
         clockOut => clockOut, relClock => relClock,
         muxout => rel2Sel, enableout => rel2Enable,
         rstout => rel2Rst, ajuste => SW(0), relEnable => relEnable,
         relRst => relRst, relMux => relSel, ajusteMux => ajusteSel,
         ajusteRst => ajusteRst, ajusteEnable => ajusteEnable
       );

     -- Instacia a maquina de estados que troca entre relogio, cronometro alarme:
      relogio_alarme : entity work.AlarmeSM
        port map( clock => relClock, a => relOut,
          b => alarmeOut, c => cronoOut, d => displayOut, estado => SW(3 downto 2)
        );


   LEDG(3 downto 0) <= not(KEY(3 downto 0));      -- Cada LED VERDE, de 0 a 3, indica se o botao correspondente foi pressionado.
   LEDR(7 downto 0) <= SW(7 downto 0);
   LEDR(8) <= '1' WHEN faseClock='1' AND SW(8)='1' ELSE
              '0';
   LEDR(9) <= '1' WHEN tempClock='1' AND SW(9)='1' ELSE
              '0';
   LEDR(17) <= '1' WHEN (tocaAlarme='1') AND (SW(1)='1') else
               '0';
	 --Displays e Leds:
	 freq : entity work.divisorGenerico (divisaoGenerica)  generic map (divisor => 25) --(divisaoGenerica) := 2^divisor
	 port map (clk =>  CLOCK_50, saida_clk => relClock);
   --Displays e Leds:
	 freq2 : entity work.divisorGenerico (divisaoGenerica)  generic map (divisor => 22) --(divisaoGenerica) := 2^divisor
	 port map (clk =>  CLOCK_50, saida_clk => ajusteClock);

   freq3 : entity work.divisorGenerico (divisaoGenerica)  generic map (divisor => 24) --(divisaoGenerica) := 2^divisor
   port map (clk =>  CLOCK_50, saida_clk => tempClock);

   freq4 : entity work.divisorFase
	 port map (clk =>  tempClock, saida_clk => faseClock);



	 --auxClock <= CLOCK_50;
end architecture;
