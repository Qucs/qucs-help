<Qucs Schematic 0.0.18>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=divide.dat>
  <DataDisplay=divide.dpl>
  <OpenDisplay=1>
  <Script=divide.m>
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
  <Vdc V1 1 120 140 18 -26 0 1 "1 V" 1>
  <R R1 1 300 140 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 300 230 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 120 190 0 0 0 0>
  <GND * 1 300 280 0 0 0 0>
  <.DC DC1 1 70 290 0 33 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <120 60 120 110 "" 0 0 0 "">
  <120 60 300 60 "" 0 0 0 "">
  <300 60 300 110 "" 0 0 0 "">
  <300 170 300 200 "divide" 380 150 15 "">
  <120 170 120 190 "" 0 0 0 "">
  <300 260 300 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
