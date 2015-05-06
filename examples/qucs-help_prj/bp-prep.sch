<Qucs Schematic 0.0.18>
<Properties>
  <View=-20,7,734,573,1,0,0>
  <Grid=10,10,1>
  <DataSet=bp-prep.dat>
  <DataDisplay=bp-prep.dpl>
  <OpenDisplay=0>
  <Script=bp-prep.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <L L1 1 270 170 10 -26 0 1 "392.233 pH" 1 "" 0>
  <L L3 1 490 170 10 -26 0 1 "392.233 pH" 1 "" 0>
  <GND * 1 270 220 0 0 0 0>
  <GND * 1 490 220 0 0 0 0>
  <L L2 1 410 60 -26 10 0 0 "79.107 nH" 1 "" 0>
  <C C2 1 330 60 -26 17 0 0 "320.205 fF" 1 "" 0 "neutral" 0>
  <C C1 1 160 170 17 -26 0 1 "64.415 pF" 1 "" 0 "neutral" 0>
  <C C3 1 390 170 17 -26 0 1 "64.415 pF" 1 "" 0 "neutral" 0>
  <Eqn Eqn1 1 50 450 -25 13 0 0 "Left_Side_Lobe=max(dB(S[2,1]),800e6:900e6)" 1 "Pass_Band_Ripple=min(dB(S[2,1]),960e6:1040e6)" 1 "Right_Side_Lobe=max(dB(S[2,1]),1100e6:1200e6)" 1 "S11_In_Band=-max(dB(S[1,1]),960e6:1040e6)" 1 "yes" 0>
  <.SP SP1 1 30 280 0 51 0 0 "log" 1 "800 MHz" 1 "1200 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P1 1 50 170 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 50 220 0 0 0 0>
  <Pac P2 1 610 170 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 610 220 0 0 0 0>
  <.Opt Opt1 1 280 320 0 33 0 0 "Sim=SP1" 0 "DE=3|50|2|20|0.85|1|3|1e-6|10|100" 0 "Var=L3|yes|3.932541E-10|350e-12|450e-12|LIN_DOUBLE" 0 "Var=C3|yes|6.515887E-11|50e-12|80e-12|LIN_DOUBLE" 0 "Var=C2|yes|3.040809E-13|300e-15|340e-15|LIN_DOUBLE" 0 "Var=L2|yes|8.404842E-08|60e-9|100e-9|LIN_DOUBLE" 0 "Var=L1|yes|4.307005E-10|350e-12|450e-12|LIN_DOUBLE" 0 "Var=C1|yes|5.918775E-11|50e-12|80e-12|LIN_DOUBLE" 0 "Goal=Left_Side_Lobe|LE|-20" 0 "Goal=Pass_Band_Ripple|GE|-1" 0 "Goal=Right_Side_Lobe|LE|-20" 0 "Goal=S11_In_Band|MAX|0" 0>
</Components>
<Wires>
  <270 60 270 120 "" 0 0 0 "">
  <270 60 300 60 "" 0 0 0 "">
  <360 60 380 60 "" 0 0 0 "">
  <440 60 490 60 "" 0 0 0 "">
  <490 60 490 120 "" 0 0 0 "">
  <490 120 490 140 "" 0 0 0 "">
  <270 120 270 140 "" 0 0 0 "">
  <270 200 270 220 "" 0 0 0 "">
  <490 200 490 220 "" 0 0 0 "">
  <160 120 270 120 "" 0 0 0 "">
  <160 120 160 140 "" 0 0 0 "">
  <160 220 270 220 "" 0 0 0 "">
  <160 200 160 220 "" 0 0 0 "">
  <390 120 490 120 "" 0 0 0 "">
  <390 120 390 140 "" 0 0 0 "">
  <390 220 490 220 "" 0 0 0 "">
  <390 200 390 220 "" 0 0 0 "">
  <50 60 270 60 "" 0 0 0 "">
  <50 60 50 140 "" 0 0 0 "">
  <50 200 50 220 "" 0 0 0 "">
  <490 60 610 60 "" 0 0 0 "">
  <610 60 610 140 "" 0 0 0 "">
  <610 200 610 220 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
