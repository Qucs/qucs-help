<Qucs Schematic 0.0.18>
<Properties>
  <View=0,7,744,563,1,0,0>
  <Grid=10,10,1>
  <DataSet=bp-asco.dat>
  <DataDisplay=bp-asco.dpl>
  <OpenDisplay=1>
  <Script=bp-asco.m>
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
  <L L1 1 280 170 10 -26 0 1 "L1" 1 "" 0>
  <L L3 1 500 170 10 -26 0 1 "L3" 1 "" 0>
  <GND * 1 280 220 0 0 0 0>
  <GND * 1 500 220 0 0 0 0>
  <L L2 1 420 60 -26 10 0 0 "L2" 1 "" 0>
  <C C1 1 170 170 17 -26 0 1 "C1" 1 "" 0 "neutral" 0>
  <C C2 1 340 60 -26 17 0 0 "C2" 1 "" 0 "neutral" 0>
  <C C3 1 400 170 17 -26 0 1 "C3" 1 "" 0 "neutral" 0>
  <Pac P1 1 60 170 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 60 220 0 0 0 0>
  <Pac P2 1 620 170 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 620 220 0 0 0 0>
  <.SP SP1 1 50 280 0 51 0 0 "log" 1 "800 MHz" 1 "1200 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 70 440 -25 13 0 0 "Left_Side_Lobe=max(dB(S[2,1]),800e6:900e6)" 1 "Pass_Band_Ripple=min(dB(S[2,1]),960e6:1040e6)" 1 "Right_Side_Lobe=max(dB(S[2,1]),1100e6:1200e6)" 1 "S11_In_Band=-max(dB(S[1,1]),960e6:1040e6)" 1 "yes" 0>
  <.Opt Opt1 1 270 320 0 33 0 0 "Sim=SP1" 0 "DE=3|50|2|20|0.85|1|3|1e-6|10|100" 0 "Var=L3|yes|3.932541E-10|350e-12|450e-12|LIN_DOUBLE" 0 "Var=C3|yes|6.515887E-11|50e-12|80e-12|LIN_DOUBLE" 0 "Var=C2|yes|3.040809E-13|300e-15|340e-15|LIN_DOUBLE" 0 "Var=L2|yes|8.404842E-08|60e-9|100e-9|LIN_DOUBLE" 0 "Var=L1|yes|4.307005E-10|350e-12|450e-12|LIN_DOUBLE" 0 "Var=C1|yes|5.918775E-11|50e-12|80e-12|LIN_DOUBLE" 0 "Goal=Left_Side_Lobe|LE|-20" 0 "Goal=Pass_Band_Ripple|GE|-1" 0 "Goal=Right_Side_Lobe|LE|-20" 0 "Goal=S11_In_Band|MAX|0" 0>
</Components>
<Wires>
  <280 60 310 60 "" 0 0 0 "">
  <370 60 390 60 "" 0 0 0 "">
  <450 60 500 60 "" 0 0 0 "">
  <500 60 500 120 "" 0 0 0 "">
  <280 60 280 120 "" 0 0 0 "">
  <280 200 280 220 "" 0 0 0 "">
  <500 200 500 220 "" 0 0 0 "">
  <280 120 280 140 "" 0 0 0 "">
  <170 120 280 120 "" 0 0 0 "">
  <170 120 170 140 "" 0 0 0 "">
  <170 220 280 220 "" 0 0 0 "">
  <170 200 170 220 "" 0 0 0 "">
  <500 120 500 140 "" 0 0 0 "">
  <400 120 500 120 "" 0 0 0 "">
  <400 120 400 140 "" 0 0 0 "">
  <400 220 500 220 "" 0 0 0 "">
  <400 200 400 220 "" 0 0 0 "">
  <60 60 280 60 "" 0 0 0 "">
  <60 60 60 140 "" 0 0 0 "">
  <60 200 60 220 "" 0 0 0 "">
  <500 60 620 60 "" 0 0 0 "">
  <620 60 620 140 "" 0 0 0 "">
  <620 200 620 220 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
