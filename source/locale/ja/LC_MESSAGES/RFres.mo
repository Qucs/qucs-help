Þ    3      ´              L  1   M  @        À     Ñ  W   ï  Ö  G  Ñ    !   ð	  ì  
  S  ÿ     S      è  M     	   ×  <   á  j     q     B  û    >    N     i  i  v  À  à  x   ¡   È   !      ã!     "  ?  "  m   W&  R   Å&  °  '  §  É,    q.    0      1  n   ;1  ¸   ª1  o   c2  ¼   Ó2  h   3    ù3  4   5  |   ¾5  Ç   ;6  æ   7  ì   ê7     ×8  x   l9  Ð  å9  k   ¶;  °  "<  1   Ó=  @   >     F>     W>  M   u>  3   Ã>  0  ÷>     (B  ì  CB  |  0D     ­H      @I  q   áI  	   SJ  <   ]J  j   J  q   K  B  wK  V  ºL    O     ,T  i  9T  À  £U  x   dY  È   ÝY      ¦Z     ÇZ  ì  ÙZ  m   Æ_  i   4`  °  `  ·  Of    h    i     ¶j  n   Ñj  ¸   @k  o   ùk  ¼   il  h   &m    m  7   o     Wo  æ   Ûo  Û   Âp    q     ¯r  x   Ds  Ð  ½s  k   u   (`<http://sourceforge.net/projects/mot-adms/>`_). (`<http://www.vhdl.org/ibis/connector/touchstone_spec11.pdf>`_). **Mike Brinson** A Verilog-A RF resistor model A component level version of the proposed RF resistor model is shown in Figure 4, where A simple impedance meter for measuring the real and imaginary components of component and circuit impedance, using small signal AC simulation, is shown in Figure 6. The impedance measuring technique uses a 1 Amp AC constant current source applied to one terminal of a two port electrical network. The second terminal is grounded. A parallel high resistance resistor (1E9 :math:`\Omega` in Figure 6) shunts the network under measurement to ensure that there is always a direct current path to ground as required by the Qucs simulator during the calculation of simulation results. If required the 1 Amp AC source can be set at a lower value. In such cases the value of **VRes** must also be scaled to give the network impedance. A typical set of model parameters for a 51  :math:`\Omega` 5 % MF axial resistor are (1) **Ls  = 8nH**, **Cp = 1pF**, **Llead  = 1nH** and **Cshunt = 0.1pF**. Illustrated in Figure 3 is a basic S parameter test bench circuit for measuring the S parameters of an RF resistor over a frequency range 1 MHz to 1.3 GHz. This example also demonstrates how the real and imaginary parts of a resistor model impedance can be extracted from S parameter simulation data. The graphs in Figure 3 clearly demonstrate that the impedance of the typical MF RF resistor described in previous text and modelled by the equivalent circuit shown in Figure 2 is a strong function of frequency at higher frequencies in the band 1 MHz to 1.3 GHZ. Analysis of the RF resistor model At low resistance values the impedance of an RF resistor becomes inductive as the signal frequency is increased. This is due to the fact that the inductance **Ls** contribution dominates any reactance effects by **Cp**, **Llead** and **Cshunt**. However, as Rs is increased above a few hundred Ohmâs the reverse becomes true with reactive effects dominated by contributions from **Cp**. Figures 11 and 12 demonstrate the dominance of **Cp** reactive effects at low to mid-range frequencies. At signal frequencies where the largest dimension of an axial or SMD resistor is less than approximately 20 times the smallest signal wavelength a resistor can be modelled by a lumped passive circuit consisting of a resistor **Rs** in series with a small inductance **Ls** with the combination shunted by parasitic capacitor **Cp**. In Figure 2 **Rs** is the nominal value of resistor at its parameter extraction temperature **Tnom**, **Ls** represents the inductance associated with **Rs** where the value of **Ls** is largely determined by the trimming method employed during component manufacture to set the value of **Rs** to a specified tolerance. Similarly, capacitor **Cp** models a parasitic capacitance associated with **Rs** where the value of **Cp** is a function of the physical size of **Rs**.  At RF frequencies it is important, for accurate operation, to add lead parasitic elements to the intrinsic equivalent circuit model shown within the red box draw in Figure 2. In Figure 2 **Llead** and **Cshunt** represent resistor series lead inductance and shunt capacitance to ground respectively. Copyright 2014, 2015 Mike Brinson, Centre for Communications Technology, London Metropolitan University, London, UK.   (`<mbrin72043@yahoo.co.uk>`_) DG8SAQ VNWA 3 & 3E- Vector Network Analysers, SDR Kits Limited, Grangeside Business Centre, 129 Devizes Road, Trowbridge, Wilts, BA14-7sZ, United Kingdom, 2014. Direct measurement of RF resistor impedance using a simulated impedance meter End Notes Extraction of RF resistance data  from measured S parameters Extraction of RF resistor parameters from measured S data for a nominal 1000 :math:`\Omega` axial resistor Extraction of Verilog-A RF resistor model parameters from measured S data for a 100 :math:`\Omega` axial resistor Figure 13 is included in this Qucs note purely for comparison purposes. SMD resistors are in general physically very small when compared to axial resistors. This results in lower values for the inductive and capacative parasitics which in turn ensures that the high frequency performance of SMD resistors is much improved. Figure 5 illustrates how a set of theoretical equations can be converted into Qucs equations for model simulation and post simulation data processing. In this example Qucs equation **Eqn1** holds values for RF resistor model parameters and Qucs equation **Eqn2** lists the model equations introduced at the start of this section. Figure 5 also gives a set of cartesian graphs of post simulation output data which illustrate how **ZR** and **ZI**, and other calculated items, vary with frequency over the range 1 MHz to 1.3 GHz. In the past the cost of Vector Network Analyser systems for measuring S parameters has been prohibitively expensive for individual engineers to purchase. However, this scene is changing with the introduction of low cost systems like the DGSAQ Vector Network Analyser (VNWA)  [1]_ . This instrument operates over a frequency band width of 1.3 GHz, providing a range of useful functions with highest accuracy at frequencies up to 500 MHz. This form of VNWA is particularly suited to Radio Amateur requirements and Qucs users interested in RF circuit analysis and design. Such equipment is ideal for measuring RF circuit S parameters and providing measured data for subcircuit and Verilog-A compact devicemodel parameter extraction. Shown in Figure 7 is a graph of measured S parameter data for a nominal 47 :math:`\Omega` resistor [2]_ . As well as displaying, and printing, measured data the DGSAQ Vector Network Analyser software can output data tabulated in Touchstone\`\`SnPâ  [3]_ file format. These files can be read by Qucs and their contents attached to an S parameter file icon for inclusion in circuit schematic diagrams. Figure 8 shows this process as part of an RF resistor model parameter extraction technique involving DGSAQ VNWA measured S parameter data and Qucs simulated S parameter data. Introduction Listed below is an example Verilog-A code model for the RF resistor model introduced in Figure 2 (c). Due to the limitations of the Verilog-A language subset provided by version 2.3.4 of the âAnalogue Device Model Synthesizer\`\` (ADMS)  [4]_ inductors **Ls** and **Llead** are modelled by gyrators and capacitors with values identical to **Ls** or **Llead**. Notice in this example the SPICE optimizer ASCO is used to find the values of **L**, **C** and **LL** which minimize **CF1** and **CF2**. Also note that **Rs** and **Cshunt** are held at fixed values during optimization. In the case of *Rs* its nominal value can be found from DC or low frequency AC measurements. Similarly the value selected for *Cshunt* has been chosen to give a very small but representative value of the parasitic shunt capacitance.. After optimization finishes the minimized values of **L**, **C** and **LL** are given in the initial value column of the Qucs optimization Variables list, see Figure 9. For the 47 :math:`\Omega` resistor the post-minimization RF resistor model parameters are **Rs = 47.3** :math:`\Omega`, **Ls =   10.43 nH**, **Cp = 0.69 pF**, **Llead = 1.46 nH** and **Cshunt  = 0.08 pF**. The theoretical simulation data illustrated in Figure 10 shows good agreement with the measured and the optimized simulation data. One more example: extraction of RF resistor parameters fro measured S data for a nominal 100 :math:`\Omega` SMD resistor Permission is granted to copy, distribute and/or modify this document under the terms of the GNU Free Documentation License, Version 1.1 or any later version published by the Free Software Foundation. Qucs release 0.0.18, or greater. RF Resistor Models Resistors are one of the fundamental building blocks in electronic circuit design. In most instances conventional resistor circuit simulation models are characterized by I/V characteristics specified by Ohmâs law. In reality the impedance of RF resistors is frequency dependent, being determined by component physical properties, component manufacturing technology and how components are connected in a circuit.  At low frequencies fixed resistors have a nominal value at roomtemperature and can be modelled accurately by Ohmâs law.  At RF frequencies the fact that a resistor acts more like an inductance or a capacitance can play a crucial role in determining whether or not a circuit operates as designed.  Similarly, if a resistor is modelled as an ideal component at a frequency where it exhibits significant reactive properties then the resulting simulation data are likely to be incorrect. The subcircuit and Verilog-A compact resistor models introduced in this Qucs note are designed to give good performance from low frequencies to RF frequencies not greater than a few GHz. See DG8SAQ VNWA 3 & 3E- Vector Network Analysers- Getting Started Manual for Windows 7, Vista and Windows XP. Subcircuit and Verilog-A RF Circuit Models for Axial and Surface Mounted Resistors The brown âTest circuitsâ box shows test circuits for firstly reading and processing the DGSAQ VNWA measured data listed in file mike3.s1p, and for secondly generating simulated S parameter data for an RF resistor specified by parameters **Ls =L**,  **Cp = C**,  **Llead = LL**, **Cshunt = 0.08 pF**, and  **Rs = 47.3**  :math:`\Omega`. Presented in Figure 9 are the Qucs Optimization controlsâ which are used to set the range of** L**, **C** and **LL** values that optimizer ASCO will select from to obtain the best fit between the measured and simulated S parameter data. Note in this parameter extraction system that **S[1,1]** refers to measured S parameter data and **S[2,2]** to simulated S parameter data. Two least squares cost functions called **CF1** and **CF2** are used as targets in the minimisation process. Values for **CF1** and **CF2** can be found in the red box called \`\`Simulation Controls\`\`. In this parameter extraction example the least squares cost function **CF1** is employed to minimize the square of the difference between the real values of the S parameters and least squares cost function **CF2** is employed to minimize the square of the difference between the imaginary values of the S parameters. Qucs post-simulation processing is also used to extract values for the real and imaginary components of the RF resistor impedance. Both the S parameter data and the impedance data are displayed as graphs in Figure 8. The schematic symbol,  I/V equation and parameters of the Qucs linear resistor model are shown in Figure 1.  In contrast to this model Figure 2 illustrates the structure of a printed circuit board (PCB) mounted metal film (MF) axial RF resistor (a),  its Qucs schematic symbol (b) and its equivalent circuit model (c).   A thin film surface mounted (SMD) resistor can also be represented by the model shown in Figure 2 (c). This brief Qucs note outlines the fundamental properties of subicircuit and verilog-A compact component models for RF resistors. The use of optimization for the extraction of subcircuit and Verilog-A compact model parameters from measured S parameters is also demonstrated. The presented techniques form part of the simulation and device modelling capabilities available with the latest Qucs release  [5]_. This example demonstrates the use of ASCO for extracting Verilog-A model parameters from measured S parameter data. ASCO optimization yields a figure of 4nH for **L** in the model shown in Figure 2 (c). Other model parameter values are given with the test circuit, see Figure 15. `back to the top <#top>`__ |image10_EN| Figure 10 - Qucs simulation of nominal 47 :math:`\Omega` resistor based on theoretical analysis.| |image11_EN| Figure 11 - Qucs device model parameter extraction system applied to a nominal 1000 :math:`\Omega` resistor represented by the subcircuit model illustrated in Figure 2(c). |image12_EN| Figure 12 - Qucs simulation of nominal 1000 :math:`\Omega` resistor based on theoretical analysis. |image13_EN| Figure 13 - Qucs device model parameter extraction system applied to a nominal 100 :math:`\Omega` SMD resistor represented by the subcircuit model illustrated in Figure 2 (c). |image14_EN| Figure 14 - Details of the proposed RF resistor model: equations, variables and other data. |image15_EN| Figure 15 - Verilog-A models parameter data extraction for a 100 :math:`\Omega` axial thin film resistor. Fixed model parameter values: **Rs =  Rm  =101**  :math:`\Omega`, **CShunt = 1e-15 F**, **Llead = LL =  0.5nH**, **Cp = C = 0.43pF**; Optimised values: **Ls = L = 3.99nH**. To reduce simulation time the ASCO cost variance was set to 1e-3. The ASCO method was set to DE/best/1/exp. |image1_EN| Figure 1 - Qucs built-in resistor model. |image2_EN| Figure 2 - PCB mounted resistor: (a) axial component mounting, (b) Qucs symbol and (c) equivalent circuit model. |image3_EN| Figure 3 - Qucs S parameter simulation test circuit and plotted output data for a MF axial resistor: *Rs*\ =51\ :math:`\Omega`, *Ls*\ =8nH, *Cp*\ =1pF, *Llead*\ =1nH and *Cshunt*\ =0.1pF. |image4_EN| Figure 4 - RF resistor model rotated through 90 degrees and connected with one terminal grounded, similar to the test circuit in Figure. Sections of the model are shown grouped for calculation of the model impedance Z. |image5_EN| Figure 5- Theoretical analysis of RF resistance impedance Z using Qucs post processing facilities: note a dummy simulation icon, in this example DC simulation, is required to force Qucs to complete the analysis calculations. |image6_EN| Figure 6 -A simple Qucs test circuit for demonstrating the use of an AC constant current source to measure electrical network impedance. |image7_EN| Figure 7 - DGSAQ Vector Network Analyser S parameter measurements for a 47 :math:`\Omega` axial RF resistor. |image8_EN| Figure 8 - Qucs device model parameter extraction system applied to a nominal 47 :math:`\Omega` resistor represented by the subcircuit model illustrated in Figure 2 (c). Fixed model parameter values: **Rs = Rm = 47.3** :math:`\Omega`, **CShunt = 0.08pF**; Optimised values: **Ls = L = 10.43nH**, **Llead =  LL  = 1.47nH**, **Cp = C  = 0.69pF**. To reduce simulation time the ASCO cost variance was set to 1e-3. The ASCO method was set to DE/best/1/exp. |image9_EN| Figure 9 - Qucs Minimization Icon drop down menus: left âVariablesâ and right âGoals\`\`. Project-Id-Version: Qucs Help
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-01-30 00:03+0100
PO-Revision-Date: 2017-01-04 02:55+0000
Last-Translator: seijirom <seijiro.moriyama@gmail.com>
Language: ja
Language-Team: Japanese (http://www.transifex.com/qucs/qucs-help/language/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 (`<http://sourceforge.net/projects/mot-adms/>`_). (`<http://www.vhdl.org/ibis/connector/touchstone_spec11.pdf>`_). **Mike Brinson** A Verilog-A RF resistor model é¨åã¬ãã«ã«å¯¾ãææ¡ãããRFæµæã¢ãã«ãå³ï¼ã«ç¤ºãã å³ï¼ã«ãåç´ãªã¤ã³ãã¼ãã³ã¹æ¸¬å®å¨ 51Î©ã®éå±è(MF)ã¢ã­ã·ã£ã«æµæã®å¸åçãªã¢ãã«ãã©ã¡ã¼ã¿ã»ããã¯(1) **LS=8nH**, **Cp=1pF**, **Llead=1nH**, **Cshut=0.1pF** ã§ããå³3ã«æããã¦ããã®ã¯ãRFæµæã®Sãã©ã¡ã¼ã¿ãï¼MHï½ããï¼ï¼ï¼GHï½ã®å¨æ³¢æ°ç¯å²ã§æ¸¬å®ããåºæ¬çãªSãã©ã¡ã¼ã¿ç¨ãã¹ããã³ãåè·¯ã§ãããã®ä¾ã¯ã¾ãSãã©ã¡ã¼ã¿ã®ã·ãã¥ã¬ã¼ã·ã§ã³ãã¼ã¿ããããã«æµæã¢ãã«ãã¤ã³ãã¼ãã³ã¹ã®å®é¨ã¨èé¨ãåãåºããã¨ãã§ããããèª¬æãã¦ãã¾ããå³ï¼ã®ã°ã©ãã¯ãåè¿°ãããããªå³ï¼ã®ç­ä¾¡åè·¯ã«ç¤ºããå¸åçãªéå±èæµæã®ã¤ã³ãã¼ãã³ã¹ããï¼MHï½ããï¼ï¼ï¼GHï½ã®é«å¨æ³¢å¸¯ã«ããã¦å¨æ³¢æ°ã®å¼·ãé¢æ°ã§ãããã¨ãæç¢ºã«ç¤ºãã¦ãã¾ãã RFæµæã¢ãã«ã®è§£æ At low resistance values the impedance of an RF resistor becomes inductive as the signal frequency is increased. This is due to the fact that the inductance **Ls** contribution dominates any reactance effects by **Cp**, **Llead** and **Cshunt**. However, as Rs is increased above a few hundred Ohmâs the reverse becomes true with reactive effects dominated by contributions from **Cp**. Figures 11 and 12 demonstrate the dominance of **Cp** reactive effects at low to mid-range frequencies. ã¢ã­ã·ã£ã«ã¾ãã¯SMDã®æµæã®æå¤§ã®å¯¸æ³ããæå°ã®ä¿¡å·æ³¢é·ã®ç´ï¼ï¼åä»¥ä¸ã®ä¿¡å·å¨æ³¢æ°ã§ã¯ãæµæã¯ãå°ããªç´åã¤ã³ãã¯ã¿ã³ã¹ **Ls** ã¨ **Rs** ã®æµæã¨ãããã¨ä¸¦åãªå¯çå®¹é **Cp** ãããªãéä¸­å®æ°ã®åååè·¯ã§ã¢ãã«åã§ãã¾ããå³ï¼ã§ã **Rs** ã¯ãã©ã¡ã¼ã¿ãæ½åºããæ¸©åº¦ **Tnom** ã§ã®æµæã®ãããã«å¤ã **Ls** ã¯ **Rs** ã«ä»éããã¤ã³ãã¯ã¿ã³ã¹ãè¡¨ãã **Ls** ã®å¤ã¯ä¸»ã«é¨åè£½é æ¥­èã **Rs** ã®å¤ãæå®ãããèª¤å·®ç¯å²ã«åããããã«æ¡ç¨ããããªãã³ã°ææ³ã«ãã£ã¦æ±ºã¾ãã¾ããåæ§ã«ãå®¹é **Cp** ã¯ã **Rs** ã«é¢é£ããå¯çå®¹éãã¢ãã«åãã **Cp** ã®å¤ã¯ **Rs** ã®ç©çå¯¸æ³ã®é¢æ°ã§ããRFå¨æ³¢æ°ã§ã¯ãå°ç·ã®å¯çè¦ç´ ãå³ï¼ã®èµ¤è²ã§æããããã¯ã¹ã®ä¸­ã®åé¨ã®ç­ä¾¡åè·¯ã¢ãã«ã«å ãããã¨ããæ­£ç¢ºãªåä½ã®ããã«éè¦ã§ããå³ï¼ã§ **Llead** ã¨ **Cshunt** ã¯ãæµæã«ç´åãªå°ç·ã¤ã³ãã¯ã¿ã³ã¹ã¨ã°ã©ã³ãã¸ã®ä¸¦åå®¹éãããããç¤ºãã¦ãã¾ãã Copyright 2014, 2015 Mike Brinson, Centre for Communications Technology, London Metropolitan University, London, UK. (`<mbrin72043@yahoo.co.uk>`_) DG8SAQ VNWA 3 & 3E- Vector Network Analysers, SDR Kits Limited, Grangeside Business Centre, 129 Devizes Road, Trowbridge, Wilts, BA14-7sZ, United Kingdom, 2014. ã¤ã³ãã¼ãã³ã¹æ¸¬å®å¨ãã·ãã¥ã¬ã¼ã·ã§ã³ããRFæµæã¤ã³ãã¼ãã³ã¹ç´æ¥æ¸¬å®ã®æ¹æ³ End Notes Extraction of RF resistance data  from measured S parameters Extraction of RF resistor parameters from measured S data for a nominal 1000 :math:`\Omega` axial resistor Extraction of Verilog-A RF resistor model parameters from measured S data for a 100 :math:`\Omega` axial resistor Figure 13 is included in this Qucs note purely for comparison purposes. SMD resistors are in general physically very small when compared to axial resistors. This results in lower values for the inductive and capacative parasitics which in turn ensures that the high frequency performance of SMD resistors is much improved. å³ï¼ã¯ã¢ãã«ã®ã·ãã¥ã¬ã¼ã·ã§ã³ã¨ã·ãã¥ã¬ã¼ã·ã§ã³ãã¼ã¿ã®å¾å¦çã®ããã«ä¸é£ã®çè«å¼ãã©ã®ããã«Qucsã®å¼ã«å¤æã§ããããèª¬æãã¦ãã¾ãããã®ä¾ã§ãQucsã®å¼ **Eqn1** ã¯RFæµæã¢ãã«ã®ãã©ã¡ã¼ã¿å¤ãæã¡ãQucsã®å¼ **Eqn2** ã¯ããã®ç¯ã®ã¯ããã«å°å¥ãããã¢ãã«å¼ã®ãªã¹ãã§ããå³ï¼ã¯ãã¾ã1MHzãã1.3GHzã®å¨æ³¢æ°å¸¯ã§ã **ZXR** ã¨ **ZI** ã¨ãã®ä»ã®è¨ç®é ãå¨æ³¢æ°ã«ããã©ã®ããã«å¤åããããç¤ºãç´äº¤åº§æ¨ç³»ã®ã°ã©ããè¡¨ç¤ºãã¦ãã¾ãã In the past the cost of Vector Network Analyser systems for measuring S parameters has been prohibitively expensive for individual engineers to purchase. However, this scene is changing with the introduction of low cost systems like the DGSAQ Vector Network Analyser (VNWA)  [1]_ . This instrument operates over a frequency band width of 1.3 GHz, providing a range of useful functions with highest accuracy at frequencies up to 500 MHz. This form of VNWA is particularly suited to Radio Amateur requirements and Qucs users interested in RF circuit analysis and design. Such equipment is ideal for measuring RF circuit S parameters and providing measured data for subcircuit and Verilog-A compact devicemodel parameter extraction. Shown in Figure 7 is a graph of measured S parameter data for a nominal 47 :math:`\Omega` resistor [2]_ . As well as displaying, and printing, measured data the DGSAQ Vector Network Analyser software can output data tabulated in Touchstone\`\`SnPâ  [3]_ file format. These files can be read by Qucs and their contents attached to an S parameter file icon for inclusion in circuit schematic diagrams. Figure 8 shows this process as part of an RF resistor model parameter extraction technique involving DGSAQ VNWA measured S parameter data and Qucs simulated S parameter data. ã¯ããã« Listed below is an example Verilog-A code model for the RF resistor model introduced in Figure 2 (c). Due to the limitations of the Verilog-A language subset provided by version 2.3.4 of the âAnalogue Device Model Synthesizer\`\` (ADMS)  [4]_ inductors **Ls** and **Llead** are modelled by gyrators and capacitors with values identical to **Ls** or **Llead**. Notice in this example the SPICE optimizer ASCO is used to find the values of **L**, **C** and **LL** which minimize **CF1** and **CF2**. Also note that **Rs** and **Cshunt** are held at fixed values during optimization. In the case of *Rs* its nominal value can be found from DC or low frequency AC measurements. Similarly the value selected for *Cshunt* has been chosen to give a very small but representative value of the parasitic shunt capacitance.. After optimization finishes the minimized values of **L**, **C** and **LL** are given in the initial value column of the Qucs optimization Variables list, see Figure 9. For the 47 :math:`\Omega` resistor the post-minimization RF resistor model parameters are **Rs = 47.3** :math:`\Omega`, **Ls =   10.43 nH**, **Cp = 0.69 pF**, **Llead = 1.46 nH** and **Cshunt  = 0.08 pF**. The theoretical simulation data illustrated in Figure 10 shows good agreement with the measured and the optimized simulation data. One more example: extraction of RF resistor parameters fro measured S data for a nominal 100 :math:`\Omega` SMD resistor Permission is granted to copy, distribute and/or modify this document under the terms of the GNU Free Documentation License, Version 1.1 or any later version published by the Free Software Foundation. Qucs release 0.0.18, or greater. RFæµæã¢ãã« æµæã¯ãé»å­åè·¯è¨­è¨ã«ããã¦åºæ¬çãªæ§æè¦ç´ ã®ï¼ã¤ã§ããå¤ãã®å ´åãå¾æ¥ã®æµæã®åè·¯ã·ãã¥ã¬ã¼ã·ã§ã³ã¢ãã«ã¯ããªã¼ã ã®æ³åã§æå®ãããI/Vç¹æ§ã«ããç¹å¾´ä»ãããã¾ããç¾å®ã«ã¯ãRFæµæã®ã¤ã³ãã¼ãã³ã¹ã¯å¨æ³¢æ°ä¾å­ã§ãããé¨åã®ç©çç¹æ§ãé¨åã®è£½é æè¡ãããããé¨åãåè·¯ä¸­ã§ã©ã®ããã«æ¥ç¶ããã¦ãããã«ããæ±ºã¾ãã¾ããä½å¨æ³¢ã§ã¯ãåºå®æµæã¯å®¤æ¸©ã§ãããããã«å¤ããã¡ãªã¼ã ã®æ³åã§æ­£ç¢ºã«ã¢ãã«ããã¾ããRFå¨æ³¢æ°ã§ã¯ãæµæã¯ã¤ã³ãã¯ã¿ã³ã¹ãã­ã£ãã·ã¿ã³ã¹ã®ããã«æ¯ãèããã¨ãå¤ãã¨ããäºå®ããåè·¯ãè¨­è¨éãåããã©ãããæ±ºããæ±ºå®çãªå½¹å²ãæ¼ãã¾ããåæ§ã«ããããæµæãèãããªã¢ã¯ã¿ã³ã¹æ§ã®ç¹æ§ãç¤ºãå¨æ³¢æ°ã«ããã¦çæ³çãªé¨åã¨ã¢ãã«åããããªããã·ãã¥ã¬ã¼ã·ã§ã³çµæã¯æããä¸æ­£ç¢ºã§ãããã®Qucsãã¼ãã§ç´¹ä»ãããµããµã¼ã­ããã¨Verilog-Aã®ã³ã³ãã¯ããªæµæã¢ãã«ã¯ãä½å¨æ³¢ããæ°GHï½ãè¶ããªãRFå¨æ³¢æ°ã«æ¸¡ããè¯å¥½ãªç¹æ§ãä¸ããããã«è¨­è¨ããã¦ãã¾ãã See DG8SAQ VNWA 3 & 3E- Vector Network Analysers- Getting Started Manual for Windows 7, Vista and Windows XP. ãµããµã¼ã­ããã¨Verilog-Aãä½¿ã£ãã¢ã­ã·ã£ã«æµæã¨è¡¨é¢å®è£æµæã®åè·¯ã¢ãã« The brown âTest circuitsâ box shows test circuits for firstly reading and processing the DGSAQ VNWA measured data listed in file mike3.s1p, and for secondly generating simulated S parameter data for an RF resistor specified by parameters **Ls =L**,  **Cp = C**,  **Llead = LL**, **Cshunt = 0.08 pF**, and  **Rs = 47.3**  :math:`\Omega`. Presented in Figure 9 are the Qucs Optimization controlsâ which are used to set the range of** L**, **C** and **LL** values that optimizer ASCO will select from to obtain the best fit between the measured and simulated S parameter data. Note in this parameter extraction system that **S[1,1]** refers to measured S parameter data and **S[2,2]** to simulated S parameter data. Two least squares cost functions called **CF1** and **CF2** are used as targets in the minimisation process. Values for **CF1** and **CF2** can be found in the red box called \`\`Simulation Controls\`\`. In this parameter extraction example the least squares cost function **CF1** is employed to minimize the square of the difference between the real values of the S parameters and least squares cost function **CF2** is employed to minimize the square of the difference between the imaginary values of the S parameters. Qucs post-simulation processing is also used to extract values for the real and imaginary components of the RF resistor impedance. Both the S parameter data and the impedance data are displayed as graphs in Figure 8. Qucsã®ç·å½¢æµæã¢ãã«ã®åè·¯å³ã·ã³ãã«ãI/Væ¹ç¨å¼ã¨ãã©ã¡ã¼ã¿ãå³ï¼ã«ç¤ºãã¾ãããã®ã¢ãã«ã¨å¯¾ç§çã«ãå³ï¼ã¯ããªã³ãåè·¯åºæ¿ï¼PCB)ã«ãã¦ã³ããããéå±èï¼MFï¼ã®ã¢ã­ã·ã£ã«RFæµæ(a)ããã®Qucsã®åè·¯å³ã·ã³ãã«(b)ã¨ç­ä¾¡åè·¯ã¢ãã«(c)ãå³ç¤ºãã¾ããèèè¡¨é¢å®è£ï¼SMDï¼æµæãå³ï¼(c)ã®ã¢ãã«ã§è¡¨ç¾ãããã¨ãã§ãã¾ãã This brief Qucs note outlines the fundamental properties of subicircuit and verilog-A compact component models for RF resistors. The use of optimization for the extraction of subcircuit and Verilog-A compact model parameters from measured S parameters is also demonstrated. The presented techniques form part of the simulation and device modelling capabilities available with the latest Qucs release  [5]_. This example demonstrates the use of ASCO for extracting Verilog-A model parameters from measured S parameter data. ASCO optimization yields a figure of 4nH for **L** in the model shown in Figure 2 (c). Other model parameter values are given with the test circuit, see Figure 15. `back to the top <#top>`__ |image10_EN| Figure 10 - Qucs simulation of nominal 47 :math:`\Omega` resistor based on theoretical analysis.| |image11_EN| Figure 11 - Qucs device model parameter extraction system applied to a nominal 1000 :math:`\Omega` resistor represented by the subcircuit model illustrated in Figure 2(c). |image12_EN| Figure 12 - Qucs simulation of nominal 1000 :math:`\Omega` resistor based on theoretical analysis. |image13_EN| Figure 13 - Qucs device model parameter extraction system applied to a nominal 100 :math:`\Omega` SMD resistor represented by the subcircuit model illustrated in Figure 2 (c). |image14_EN| Figure 14 - Details of the proposed RF resistor model: equations, variables and other data. |image15_EN| Figure 15 - Verilog-A models parameter data extraction for a 100 :math:`\Omega` axial thin film resistor. Fixed model parameter values: **Rs =  Rm  =101**  :math:`\Omega`, **CShunt = 1e-15 F**, **Llead = LL =  0.5nH**, **Cp = C = 0.43pF**; Optimised values: **Ls = L = 3.99nH**. To reduce simulation time the ASCO cost variance was set to 1e-3. The ASCO method was set to DE/best/1/exp. |image1_EN| å³ï¼ - Qucsã®çµã¿è¾¼ã¿æµæã¢ãã« å³ï¼ - PCBã«ãã¦ã³ãããæµæ:(a)ãã¦ã³ãããã¢ã­ã·ã£ã«é¨åã(b)Qucsã·ã³ãã«ã(c)ç­ä¾¡åè·¯ã¢ãã« å³ï¼ - MFã¢ã­ã·ã£ã«æµæã®ããã®Qucsã®Sãã©ã¡ã¼ã¿ã·ãã¥ã¬ã¼ã·ã§ã³ç¨ãã¹ãåè·¯ã¨ãã­ããããåºåãã¼ã¿ï¼*Rs*\ =51\ :math:`\Omega`, *Ls*\ =8nH, *Cp*\ =1pF, *Llead*\ =1nH, *Cshunt*\ =0.1pF å³ï¼ - å³ã®ãã¹ãåè·¯ã«åããã¦ï¼ï¼åº¦åè»¢ãç«¯å­ã®ï¼ã¤ãæ¥å°ããRFæµæã¢ãã«ãã¢ãã«ã®åé¨ã¯ã¢ãã«ã®ã¤ã³ãã¼ãã³ã¹Zã®è¨ç®ã®ããã«ã°ã«ã¼ãåãã¦ç¤ºãã å³ï¼ - Qucsã®å¾å¦çã®ä»çµã¿ãä½¿ã£ã¦RFæµæã®ã¤ã³ãã¼ãã³ã¹Zãçè«è§£æï¼ Qucsã®è§£æè¨ç®ãçµäºãããããã«ãããã¼ã®ã·ãã¥ã¬ã¼ã·ã§ã³ã¢ã¤ã³ã³ï¼ãã®ä¾ã§ã¯DCã·ãã¥ã¬ã¼ã·ã§ã³ï¼ãå¿è¦ãªãã¨ã«æ³¨æ |image6_EN| Figure 6 -A simple Qucs test circuit for demonstrating the use of an AC constant current source to measure electrical network impedance. |image7_EN| Figure 7 - DGSAQ Vector Network Analyser S parameter measurements for a 47 :math:`\Omega` axial RF resistor. |image8_EN| Figure 8 - Qucs device model parameter extraction system applied to a nominal 47 :math:`\Omega` resistor represented by the subcircuit model illustrated in Figure 2 (c). Fixed model parameter values: **Rs = Rm = 47.3** :math:`\Omega`, **CShunt = 0.08pF**; Optimised values: **Ls = L = 10.43nH**, **Llead =  LL  = 1.47nH**, **Cp = C  = 0.69pF**. To reduce simulation time the ASCO cost variance was set to 1e-3. The ASCO method was set to DE/best/1/exp. |image9_EN| Figure 9 - Qucs Minimization Icon drop down menus: left âVariablesâ and right âGoals\`\`. 