--------------------------------------------------------------------------
Chapter 3. ``Spice4qucs`` subcircuits, macromodels and device libraries
--------------------------------------------------------------------------

3.1 `Spice4qucs`` Subcircuits: with and without parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``Spice4qucs`` supports all the features available with Qucs subcircuits. 
In a similar fashion to Qucs, the Ngspice, Xyce and SPICE OPUS circuit simulators allow subcircuits with or without parameters. 
However, an optional part of the Ngspice, Xyce and SPICE OPUS subcircuit netlist syntax that signifies that a parameter 
extension is present is not allowed (see section xxxxxxx). 
As a starting point ``spice4qucs`` subcircuits without parameters are considered first. This introduction is
followed by a detailed description of the structure, and netlist syntax, of subcircuits with one or more parameters. 

3.1.1 ``Spice4qucs`` subcircuits without parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Figure 3.1 shows a Qucs subcircuit model for a 15MHz centre frequency band pass passive filter. Note that the three
distinct parts of a subcircuit model without parameters are: (1) a circuit representing the model body with one or more input (Pin) and output (Pout) pins plus
connected components selected from Qucs pre-defined components and user designed subcircuits ( there are no user defined subcircuits present in Figure 3.1),
(2) a subcircuit symbol, and (3) a Qucs netlist giving a list of the internal components, their connection nodes and  a wrapper which
defines the subcircuit.  The syntax of the subcircuit netlist listed in Figure 3.1 is only understood by Qucs and cannot be read without error by external SPICE simulators. 

|BPFCh3Fig1_EN|

Figure 3.1 Qucs 15MHz centre frequency band pass passive filter subcircuit without parameters

A test bench circuit for simulating the band pass filter circuit shown in Figure 3.1 is given in Figure 3.2.  This figure includes a plot of the small signal AC
output voltage for a filter with 50 Ohm input and output matching resistors.  Note the use of a node voltage probe and the signal name allocated by
Qucs. Also note that the individual
capacitor voltage and inductor current initial conditions are not set as they are not needed due to fact that the filter subcircuit is not DC biased. As a consequence 
the DC simulation icon shown in Figure 3.2 is not strictly necessary.  However, its a good idea to add it automatically to AC simulations because circuits with 
semiconductor devices or other non-linear components must have their small signal AC properties calculated, at their DC bias conditions, prior to small signal AC simulation. 

|BPFCh3Fig2_EN|

Figure 3.2 Qucs 15MHz centre frequency band pass passive filter test bench with 50 Ohm source and load matching

Figure 3.3 to Figure 3.5 present AC simulation results for the band pass filter generated with the Ngspice, Xyce and SPICEOPUS circuit simulators.

|BPFCh3Fig3_EN| 

Figure 3.3 Band pass filter Ngspice test results and SPICE netlist for test bench circuit

|BPFCh3Fig4_EN|

Figure 3.4 Band pass filter Xyce test results and SPICE netlist for test bench circuit

|BPFCh3Fig5_EN| 

Figure 3.5 Band pass filter SPICEOPUS test results and SPICE netlist for test bench circuit

Most readers will probably have noticed that the SPICE netlists for the Ngspice and SPICEOPUS band pass filter test benches are identical except for file names.  
This is because Ngspice and SPICEOPUS both include implementations of the SPICE 3f5 **Nutmeg** post simulation data processing package that is distributed with the SPICE engines.  
These are not the same however, mainly because the SPICE OPUS development team has modified the original SPICE 3f5 Nutmeg package to firstly remove errors/bugs 
and secondly to improve its syntax.  The extent to how this will affect the operation of spice4qucs is at this time unclear.  If problems/bugs, due to implementation 
differences, surface in the future the spice4qucs  Development Team will attempt to correct them as quickly as possible.  
The Xyce circuit simulator does not include a version of Nutmeg in its distribution package.
This implies that Nutmeg style post simulation data processing is not possible with Xyce.  However, to minimise this omission an extended form of the SPICE .PRINT statement has been 
implemented in Xyce, allowing algebraic expressions for data processing to be embedded in .PRINT statements.  This topic and other aspects of Xyce post simulation data processing
are covered in later sections of this help manual.

3.1.2 ``Spice4qucs`` subcircuits with parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Qucs equations embedded in subcircuit are converted into ``.PARAM`` sections of SPICE-netlist. 
Equations restrictions are considered in the Chapter 4. You cannot embed 
simulations in subcircuits.

Let's consider an example project with subcircuits. It is HC-49/U 8.86 
MHz crystal resonator model. Crystal resonator is represented as RCL-circuit. 
This project consists 
of two schematics:
* ``quarz.sch`` --- Subcircuit. Crystal resonator. 
* ``quarz_test.sch`` --- test circuit. 

This example could be found at ``examples\ngspice\`` subdirectory. 

Figure 3.5 shows subcircuit of Crystal resonator. A short theory of operation 
of crystal resonators could be found here 
https://en.wikipedia.org/wiki/Crystal_oscillator

|Quarz_SUBCKT_EN|

Figure 3.5 Equivalent circuit of Quartz crystal resonator.

Crystal is represented as RCL-circuit that has two resonant frequencies:

.. math::
    f_s=\frac{1}{2\pi\sqrt{L_{q}C_{q}}}
    
    f_p=\frac{1}{2\pi\sqrt{L_{q}C_{q}}}\sqrt{1+\frac{C_{q}}{C_s}}
    
From this equation we can obtain series capacitance :math:`C_q`  
    
.. math::
    C_q=\frac{1}{4\pi^2f_s^2L_q^2}
    
This equation is placed in subcircuit.

Now let's simulate magnitude response of Crystal resonator. We need to perform 
*AC simulation* for this purpose. Figure 3.6 shows the test circuit for 
magnitude response measurements. 


|Quarz_EN|

Figure 3.6 Test circuit for Crystal resonator.

After simulation you can plot output voltage (``ac.v(out)`` variable) or 
transfer coefficient ``K`` (variable ``ac.k``). Figure 3.7 shows simulation 
results for both Ngspice and Xyce. As you can see these results are identical. 
The only difference is that simulation results postprocessing is not 
implemented in Xyce. So you can only plot output voltage for Xyce. You should 
use logarithmic scale on the Y-axis of the plot to obtain decibel output. You 
can see two resonant frequencies :math:`f_s` and :math:`f_p` on these plots.

|Quarz_Sim_EN|

Figure 3.7 Magnitude response of HC-49/U Quartz crystal.


Subcircuits are converted into ``.SUBCKT`` routine. You can see example of 
Spice netlist for our test schematic (Figure 3.5):

.. literalinclude:: _static/en/chapter3/quarz.cir
   :language: Bash
   :linenos:

..  |BPFCh3Fig5_EN| image::  _static/en/chapter3/SPICEOPUSBPF.png

..  |BPFCh3Fig4_EN| image::  _static/en/chapter3/XyceBPF.png

..  |BPFCh3Fig3_EN| image::  _static/en/chapter3/NgspiceBPF.png

..  |BPFCh3Fig2_EN| image::  _static/en/chapter3/QucsBPF.png

..  |BPFCh3Fig1_EN| image::  _static/en/chapter3/Ch3Fig1.png

..  |Quarz_SUBCKT_EN| image::  _static/en/chapter3/quarz.png

..  |Quarz_EN| image::  _static/en/chapter3/quarz_test.png

..  |Quarz_Sim_EN| image::  _static/en/chapter3/quarz_res.png

..  |LM358_EN| image::  _static/en/chapter3/lm358.png


3.2 Component and circuit libraries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Library components are supported in ``spice4qucs`` subsystem. You can use all 
library components. Some libraries have embedded original SPICE code of 
components. You should prefer to use these librairies to achive the best result 
with Spice simulation of Qucs schematics. The example of library component 
(IRFZ44 MOSFET from *MOSFETS* library) usage is 
``examples/ngspice/irfz44_switch.sch``

3.3 Using manufacturers component data libraries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Electronic components manufacturers often provide spice models of components in 
datasheets. You can attach these datasheet spice models using *SPICE netlist* 
component. You need to perform the following steps to use Spice-model from 
component datasheet. Spice netlist builder substitutes SPICE-models directly to 
output netlist without any conversions. 

1. Extract Spice netlist text and save it as text file. You can use any 
extension for this file. Preferable are **.ckt* , **.cir*, **.sp*

2. Place on schematic component *SPICE netlist* and attach SPICE netlist nodes
to component port using standard *SPICE component properties* dialog. 

3. Simulate schematic with Ngspice/Xyce. 

It's need to note that SPICE-netlist of component **must not** be ended by 
``.END`` directive. In this case simulator exits after it reads 
``.SUBCKT`` routine and simulation cannot be executed.

The example of spice model usage (LM358 opamp) is shown in the Figure 3.4

|LM358_EN|

Figure 3.8 AC Simulation of LM358 opamp with Ngspice. 

Here is the netlist of LM358 spice-model. Model can be found in LM358 
datasheet. 

.. literalinclude:: _static/en/chapter3/LM358.sp
   :language: Bash
   :linenos:
   
   
`back to the top <#top>`__



