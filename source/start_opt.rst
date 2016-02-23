
Getting Started with Optimization
=================================


For circuit optimization, Qucs uses the ASCO tool
(`http://asco.sourceforge.net/ <http://asco.sourceforge.net/>`__). A
brief description on how to prepare your schematic, execute and
interprete the results is given below. Before using this functionality,
ASCO must be installed on the computer.

Optimization of a circuit is nothing more than the minimization of a
cost function. It can either be the delay or the rise time of a digital
circuit, or the power or gain of an analog circuit. Another possibility
is defining the optimization problem as a composition of functions,
leading in this case to the definition of a figure-of-merit.

To setup a netlist for optimization two things must be added to the
already existing netlist: insert equation(s) and the optimization
component block. Take the schematic from Figure 1 and change it until
you have the resulting schematic given in Figure 2.


|image0_EN|

Figure 1 - Initial schematic.


|image1_EN|

Figure 2 - Prepared schematic.


Now, open the optimization component and select the optimization tab.
From the existing parameters, special attention should be paid to
'Maximum number of iterations', 'Constant F' and 'Crossing over factor'.
Over- or underestimation can lead to a premature convergence of the
optimizer to a local minimum or, a very long optimization time.


|image2_EN|

Figure 3 - Optimization dialog, algorithm options.


In the Variables tab, defining which circuit elements will be chosen
from the allowed range, as shown in Figure 4. The variable names
correspond to the identifiers placed into properties of components and
**not** the components' names.


|image3_EN|

Figure 4 - Optimization dialog, variables options.

Finally, go to Goals where the optimization objective (maximize,
minimize) and constraints (less, greater, equal) are defined. ASCO then
automatically combines them into a single cost function, that is then
minimized.


|image4_EN|

Figure 5 - Optimization dialog, goals options.


The next step is to change the schematic, and define which circuit
elements are to be optimized. The resulting schematic is show in Figure
6.


|image5_EN|

Figure 6 - New Qucs main window.

The last step is to run the optimization, i.e. the simulation by
pressing F2. Once finished, which takes a few seconds on a modern
computer, the best simulation results is shown in the graphical waveform
viewer.


|image6_EN|

Figure 7 - Qucs results window.


The best found circuit sizes can be found in the optimization dialog,
in the Variables tab. They are now the initial values for each one of
introduced variables (Figure 8).


|image7_EN|

Figure 8 - The best found circuit sizes.


By clicking the "Copy current values to equation" button, an equation component defining all the optimization variables with the values of the "initial" column will be copied to the clipboard and can be pasted to the schematic after closing the optimization dialog.
The resulting schematic will be as shown in the next figure.


|image8_EN|

Figure 9 - Schematic with optimized values.


in case you need to do further modifications to the schematic, the optimization component can now be disabled and the optimized values from the pasted equation will be used.

You can change the number of figures shown for the optimized values in the optimization dialog by right-clicking on the "initial" table header and selecting the "Set precision" menu, as shown in the following figure.


|image9_EN|

Figure 10 - Changing the displayed variables precision.


.. only:: html

   `back to the top <#top>`__

.. |image0_EN| image:: _static/en/optimization1.png
.. |image1_EN| image:: _static/en/optimization2.png
.. |image2_EN| image:: _static/en/optimization3.png
.. |image3_EN| image:: _static/en/optimization4.png
.. |image4_EN| image:: _static/en/optimization5.png
.. |image5_EN| image:: _static/en/optimization6.png
.. |image6_EN| image:: _static/en/optimization7.png
.. |image7_EN| image:: _static/en/optimization8.png
.. |image8_EN| image:: _static/en/optimization9.png
.. |image9_EN| image:: _static/en/optimization10.png

.. |image0_CS| image:: _static/cs/optimization1.png
.. |image1_CS| image:: _static/cs/optimization2.png
.. |image2_CS| image:: _static/cs/optimization3.png
.. |image3_CS| image:: _static/cs/optimization4.png
.. |image4_CS| image:: _static/cs/optimization5.png
.. |image5_CS| image:: _static/cs/optimization6.png
.. |image6_CS| image:: _static/cs/optimization7.png
.. |image7_CS| image:: _static/cs/optimization8.png

.. |image0_ES| image:: _static/en/optimization1.png
.. |image1_ES| image:: _static/en/optimization2.png
.. |image2_ES| image:: _static/en/optimization3.png
.. |image3_ES| image:: _static/en/optimization4.png
.. |image4_ES| image:: _static/en/optimization5.png
.. |image5_ES| image:: _static/en/optimization6.png
.. |image6_ES| image:: _static/en/optimization7.png
.. |image7_ES| image:: _static/en/optimization8.png
.. |image8_ES| image:: _static/en/optimization9.png
.. |image9_ES| image:: _static/en/optimization10.png

.. |image0_DE| image:: _static/de/optimization1.png
.. |image1_DE| image:: _static/de/optimization2.png
.. |image2_DE| image:: _static/de/optimization3.png
.. |image3_DE| image:: _static/de/optimization4.png
.. |image4_DE| image:: _static/de/optimization5.png
.. |image5_DE| image:: _static/de/optimization6.png
.. |image6_DE| image:: _static/de/optimization7.png
.. |image7_DE| image:: _static/de/optimization8.png

.. |image0_FR| image:: _static/en/optimization1.png
.. |image1_FR| image:: _static/en/optimization2.png
.. |image2_FR| image:: _static/en/optimization3.png
.. |image3_FR| image:: _static/en/optimization4.png
.. |image4_FR| image:: _static/en/optimization5.png
.. |image5_FR| image:: _static/en/optimization6.png
.. |image6_FR| image:: _static/en/optimization7.png
.. |image7_FR| image:: _static/en/optimization8.png
.. |image8_FR| image:: _static/en/optimization9.png
.. |image9_FR| image:: _static/en/optimization10.png

.. |image0_PT| image:: _static/pt_BR/optimization1.png
.. |image1_PT| image:: _static/pt_BR/optimization2.png
.. |image2_PT| image:: _static/pt_BR/optimization3.png
.. |image3_PT| image:: _static/pt_BR/optimization4.png
.. |image4_PT| image:: _static/pt_BR/optimization5.png
.. |image5_PT| image:: _static/pt_BR/optimization6.png
.. |image6_PT| image:: _static/pt_BR/optimization7.png
.. |image7_PT| image:: _static/pt_BR/optimization8.png

.. |image0_RU| image:: _static/ru/optimization1.png
.. |image1_RU| image:: _static/ru/optimization2.png
.. |image2_RU| image:: _static/ru/optimization3.png
.. |image3_RU| image:: _static/ru/optimization4.png
.. |image4_RU| image:: _static/ru/optimization5.png
.. |image5_RU| image:: _static/ru/optimization6.png
.. |image6_RU| image:: _static/ru/optimization7.png
.. |image7_RU| image:: _static/ru/optimization8.png

.. |image0_UK| image:: _static/uk/optimization1.png
.. |image1_UK| image:: _static/uk/optimization2.png
.. |image2_UK| image:: _static/uk/optimization3.png
.. |image3_UK| image:: _static/uk/optimization4.png
.. |image4_UK| image:: _static/uk/optimization5.png
.. |image5_UK| image:: _static/uk/optimization6.png
.. |image6_UK| image:: _static/uk/optimization7.png
.. |image7_UK| image:: _static/uk/optimization8.png
