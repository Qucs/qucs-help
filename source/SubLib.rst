---------------------------------------------
Chapter 3. Subcircuits and device libraries
---------------------------------------------

3.1 Subcircuits and macromodels
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Spice simulations support all features of Qucs subcircuits. You can use 
parameterized subcircuits with both Ngspice and Xyce. Qucs equations embedded 
in subcircuit are converted into ``.PARAM`` sections of SPICE-netlist. 
Equations restrictions are considered in the Chapter 4. You cannot embed 
simulations in subcircuits.

Let's consider an example project with subcircuits. It is HC-49/U 8.86 
MHz crystal resonator model. Crystal resonator is represented as RCL-circuit. 
This project consists 
of two schematics:
* ``quarz.sch`` --- Subcircuit. Crystal resonator. 
* ``quarz_test.sch`` --- test circuit. 

This example could be found at ``examples\ngspice\`` subdirectory. 

Figure 3.1 shows subcircuit of Crystal resonator. A short theory of operation 
of crystal resonators could be found here 
https://en.wikipedia.org/wiki/Crystal_oscillator

|Quarz_SUBCKT_EN|

Figure 3.1 Equivalent circuit of Quartz crystal resonator.

Crystal is represented as RCL-circuit that has two resonant frequencies:

.. math::
    f_s=\frac{1}{2\pi\sqrt{L_{q}C_{q}}}
    
    f_p=\frac{1}{2\pi\sqrt{L_{q}C_{q}}}\sqrt{1+\frac{C_{q}}{C_s}}
    
From this equation we can obtain series capacitance :math:`C_q`  
    
.. math::
    C_q=\frac{1}{4\pi^2f_s^2L_q^2}
    
This equation is placed in subcircuit.

Now let's simulate magnitude response of Crystal resonator. We need to perform 
*AC simulation* for this purpose. Figure 3.2 shows the test circuit for 
magnitude response measurements. 


|Quarz_EN|

Figure 3.2 Test circuit for Crystal resonator.

After simulation you can plot output voltage (``ac.v(out)`` variable) or 
transfer coefficient ``K`` (variable ``ac.k``). Figure 3.3 shows simulation 
results for both Ngspice and Xyce. As you can see these results are identical. 
The only difference is that simulation results postprocessing is not 
implemented in Xyce. So you can only plot output voltage for Xyce. You should 
use logarithmic scale on the Y-axis of the plot to obtain decibel output. You 
can see two resonant frequencies :math:`f_s` and :math:`f_p` on these plots.

|Quarz_Sim_EN|

Figure 3.3 Magnitude response of HC-49/U Quartz crystal.


Subcircuits are converted into ``.SUBCKT`` routine. You can see example of 
Spice netlist for our test schematic (Figure 3.2):

.. literalinclude:: _static/en/chapter3/quarz.cir
   :language: Bash
   :linenos:


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

Figure 3.4 AC Simulation of LM358 opamp with Ngspice. 

Here is the netlist of LM358 spice-model. Model can be found in LM358 
datasheet. 

.. literalinclude:: _static/en/chapter3/LM358.sp
   :language: Bash
   :linenos:
   
   
`back to the top <#top>`__



