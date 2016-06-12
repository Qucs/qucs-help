------------------------------------------------------------------
Chapter 13. RF simulation with Qucs, Ngspice, Xyce and SPICE OPUS
------------------------------------------------------------------

13.1 Introduction to capabilities
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Spice4qucs could be used for analysis of RF circuits. It contains the following 
features:

* Harmonic balance simulation (Xyce only)
* S-parameter probes (Ngspice and Xyce)
* RFEDD components (Ngspice, limited support)

RFEDD passive components (RCL) and B-type sources could be represented using 
``hertz`` variable in equations. See official Ngspice manual for additional 
information.

13.2 Two port networks
~~~~~~~~~~~~~~~~~~~~~~~~~~

13.3 S parameter simulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

13.4 RF noise simulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~

13.5 Harmonic Balance simulation with Qucs and Xyce
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Spice4qucs subsystem supports Harmonic Balance (HB) simulation only for Xyce 
Ngspice will not work. HB simulation component properties don't require any 
special adaptation for simulation with Xyce. You need just place 
``HB simulation`` component on schematic, define number of harmonics and 
simulate circuit with Xyce. Spice4qucs output data parser automatically 
converts output variable names to Qucs notation. For example for node voltage 
``out`` you need to plot ``out.Vb``. Let's consider a small example (diode 
clipper, Figure 8.1). 

|diode_HB_EN|

Figure 8.1 Diode clipper harmonic balance simulation

Simulation results are shown in the Figure 8.2

|diode_HB_res_EN|

Figure 8.2 Output spectrum form Qucs (left) and Xyce (right)

There are the following important difference between Qucs and Xyce. Xyce output 
contains image components (negative frequencies). So, for given ``n=17`` 
harmonics you obtain 8 harmonics, 8 image harmonics and DC component (Figure 
8.2).


.. |diode_HB_EN| image:: _static/en/chapter8/diode_HB.png

.. |diode_HB_res_EN| image:: _static/en/chapter8/diode_HB_res.png

13.6 Multitone HB simulation with Xyce and Qucs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Since 6.3 release Xyce supports multitone HB simulation. You can specify more 
than one tone frequencies in ``HB simulation component`` properties. This will 
not work with Xyce previous to 6.3 release.  Perform the following steps to 
setup multitone HB simulation:

* Sepcify space separated frequencies list in ``f`` parameter.
* Specify comma separated number of frequencies for each harmonic in ``n`` 
  parameter
  
You can see an example in the Figure 8.3. It contains modified schematic from 
the previous section. 

|diode_HB_3t_EN|

Figure 8.3 An example of 3-tone HB simulation setup
  
.. |diode_HB_3t_EN| image:: _static/en/chapter8/diode_HB_3tone.png

13.7 SPICE OPUS large signal steady state transient shooting method
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



13.8 Example RF circuit simulations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



   `back to the top <#top>`__


