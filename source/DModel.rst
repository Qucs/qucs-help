|imageQ_EN|

--------------------------------------------------------------------------------
Chapter 4. Device and component modelling with algebraic equations 
--------------------------------------------------------------------------------

4.1 The role of algebraic and numeric equations in circuit simulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Equations play the following roles in circuit simulation

#. Circuits parametrization
#. Simulation results postprocessing
#. User-defined components

With spice4qucs subsystem you can perform all of these operations. Spice4qucs 
supports the following types of equations:

1. Usual Qucs equations. These equations are converted in ``.PARAM`` sections 
and Ngnutmeg scripts automatically. Equations that don't contain simulation 
variables (node voltages and currents) are passed into ``.PARAM`` section of 
the spice netlist. Equations that contains simulator variables are placed 
between ``.control`` and ``.endc`` sections after appropriate simulation 
execution. These equation could be processed only with Ngspice because Xyce has 
no postprocessor. 

2. ``.PARAM`` sections. You can directly pass equations to ``.PARAM`` section 
of the SPICE netlist with it.

3. ``.GLOBAL_PARAM`` sections. It works in the same manner as ``.PARAM``

4. ``.OPTIONS`` sections. You can define Ngspice or Xyce options with it (such 
as ``GMIN``)

5. ``Ngnutmeg`` script. These equations are directly passed to ``ngnutmeg`` 
postprocessor after simulation. Only Ngspice is supported. 

The last four equation types are available in *Spice sections* group of 
*Components* palette. 

..  |imageQ_EN| image::   _static/en/Qucs.png

4.2 Qucs equations usage with Ngspice and Xyce
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ngspice has a full support of Qucs equations. Only mathematical functions 
related to S-parameter simulations will (such as ``stoz()``, ``stoy()``, etc.) 
not work. Complex numbers arithmetic is supported.  Physical constants (``q``, 
``kB``, etc.) are supported. Qucs equations could be used for both 
parametrization and postprocessing purposes. You should keep in mind that 
SPICE is registry-independent but Qucsator is registry dependent. So, ``Kv`` 
and ``KV`` will be different variables for Qucsator and the same variable for 
Ngspice and Xyce. Expressions are evaluated from the first to last. You should 
take into account expressions order for Ngspice.

As mentioned above, equations that contains simulator variables such as node 
voltage and currents are converted into ``ngnutmeg`` script. The following 
example (complex power calculation in RC-circuits, Fig 4.1) illustrates the 
usage of Qucs equation with Ngspice. This circuit could be simulated with both 
Ngspice and Qucsator. 

|RC_EN|
Figure 4.1 Total power of RC-circuit.

It's need to evaluate the following equations:

Total power

.. math::
    S = abs (\dot{U} \cdot \dot{I})

Active power:

.. math::
    P = \Re [\dot{U} \cdot \dot{I}]

    
Reactive power

.. math::
    Q = \Im [\dot{U} \cdot \dot{I}] 
    
The results are shown in the Figure 4.2 . This circuit could be simulated with 
both Qucsator and Ngspice.

|resRC_EN|

Figure 4.2 Total, active, and reactive power calculation result.


Xyce has no postprocessor. Xyce has only partial support of Qucs equations. You 
can use only parametrization. Equations that contains node voltages and 
currents are ignored. Don't try to use it with Xyce. 

Here is a small example. It illustrates how parametrization could be used with 
all of three simulation backends. Parametrisation used to estimate resonant 
frequency :math:`f_{res}` of the RCL circuit:

.. math::
    f_{res} = \frac{1}{2\pi\sqrt{LC}}

|RCL1_EN|

Figure 4.3 Parametrised RCL-circuit.

You can see that simulation results for all three circuits are identical.

..  |RC_EN| image::  _static/en/chapter4/RC_SPQ.png

..  |resRC_EN| image::  _static/en/chapter4/RC_SPQ_res.png

..  |RCL1_EN| image::  _static/en/chapter4/RCL_par.png


4.3 Manipulating simulation data with algebraic measurement scripts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Postprocessing of the simulation results is very important feature of circuit 
simulator. You can use postprocessor only with Ngspice and Qucsator. There two 
general ways to use it. 

There is a special component *Nutmeg Equation*. It works similar to usual Qucs 
Equation component. You can open properties dialog (Fig.4.4) by double click.

|DLG_EN|

Figure 4.4 Ngnutmeg Equation properties dialog.

You need to specify (as first parameter) simulation to which Ngnutmeg script 
will be linked. You can use the following simulations:

* AC 
* TRAN
* DISTORTION
* DC
* All simulations

If all simulations is selected, equations will be evaluated for all 
simulations. You should use SPICE notation for node voltages and current. You 
can use all ngnutmeg functions and operators without any limitations.  Node 
voltages could be specified as ``v(node)``. You should use use a simple 
conversion for current probes. For example current probe ``Pr1`` should be 
specified as ``VPr1#branch``. Take into account that Ngnutmeg equations are 
registry-independent!

Other parameters are Ngnutmeg equations. They are converted into ``let`` 
statement:

.. code-block:: bash

   let Var1 = Expression1
   let Var2 = Expression2
   let VarN = ExpressionN
   
Expressions are evaluated from the first to last. You should take into account 
expressions order for Ngspice.
  
The following example (Fig.4.5) illustrates how it can be used.

|DIST_EN|

Figure 4.5 Distortion analysis with Ngnutmeg postprocessor. 

The second way of postprocessing is usual Qucs *Equation* component. You can 
use spice notation in Qucs equations. The following example shows how it can be 
utilized.

|Mix_EN|

Figure 4.6 Using of spice notation in Qucs equations. 

..  |DIST_EN| image::  _static/en/chapter4/DISTO.png

..  |DLG_EN| image::  _static/en/chapter4/nutmeg_dlg.png

..  |Mix_EN| image:: _static/en/chapter4/spice_not.png

4.4 Qucs Equation-Defined Device (EDD) models
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EDDs are described by current equations and charge equations. EDD has :math:`N` 
branches. Current equations binds currents :math:`I_n` flowing through 
component branches with voltages :math:`V_n` across component:

.. math::
  \begin{eqnarray}
  & I_1 = f_1(V_1, \ldots ,V_N) & \\
  & \ldots & \nonumber \\
  &I_N = f_N(V_1, \ldots ,V_N)& 
  \end{eqnarray}

Charge equations binds charge :math:`Q_n` accumulated by component and voltages 
:math:`V_n` across component:
  
.. math::
  \begin{eqnarray}
  & Q_1 = g_1(V_1, \ldots ,V_N) & \\
  & \ldots & \nonumber \\
  &Q_N = g_N(V_1, \ldots ,V_N)& 
  \end{eqnarray}
  
You should use Qucs notation in EDD equations. Qucs notation is converted to 
SPICE notation automatically. Qucs EDD is converted to equivalent circuit 
containing SPICE B-type source by spice netlist builder. 
  
Spice4qucs subsystem supports both current and charge equations. You can 
simulate EDDs with Ngspice and Xyce without any special adaptations. Only take 
into account registry dependency of variables. All SPICE mathematical functions 
could be used. The following examples (Figures 4.7 and 4.8) show how these 
circuits could be simulated. 

First example illustrates IV-curves of Tunnel diode. Tunnel diode IV-curve is 
approximated by the following equation:

.. math::
    I = I_s\left(e^{\frac{V}{\varphi_T}}-1\right) + I_ve^{k(V-V_v)} + 
     I_p\cdot\frac{V}{V_p}e^{\frac{V_p-V}{V_p}} 
     
|Tunn_EN|

Figure 4.7 Tunnel diode simulation using EDDs

Nonlinear capacitor could be approximated by polynomial that binds capacitor 
charge :math:`Q` and voltage :math:`V`

.. math::
   Q = C_1V + \frac{C_2V^2}{2} + \frac{C_3V^3}{3} + \ldots + \frac{C_NV^N}{N}

|EDD-cap_EN|

Figure 4.8 Nonlinear capacitor simulation with Ngspice and Xyce

|EDD-cap_MR_EN|

Figure 4.9 Magnitude response of RC circuit with nonlinear capacitor.

Special component *Equation defined source* could be used as alternative to 
EDD. This component is located in group *Spice components*. It implements 
behavioural B-type SPICE voltage or current source. See chapter 5.1 of Ngspice 
manual for more information. Example (Figure 4.10) shows how this source could 
be used. You should use SPICE-notation in B-sources expressions. 

|B_src_EN|

Figure 4.10 Voltage multiplier model with B-type sources. 

..  |Tunn_EN| image:: _static/en/chapter4/Tunn.png

..  |EDD-cap_EN| image:: _static/en/chapter4/EDD-cap.png

..  |EDD-cap_MR_EN| image:: _static/en/chapter4/EDD-Q_res.png

..  |B_src_EN| image:: _static/en/chapter4/Vmul.png

4.5 Qucs Frequency Equation-Defined Device (FEDD) models
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Qucs RFEDD device is not yet supported. You should use behavioural R,C,L 
models and B-type sources instead. You should use ``hertz`` variable in these 
models to implement RFEDD. Refer to chapters 3.2.4, 3.2.8, 3.2.12, and 5.1 of 
official Ngspice manual for further information. 

4.6 ngspice and Xyce translation/synthesis of EDD and FEDD models
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



   `back to the top <#top>`__


