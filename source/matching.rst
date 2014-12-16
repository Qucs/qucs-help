
Matching Circuits
=================


Creating matching circuits is an often needed task in microwave
technology. Qucs can do this automatically. These are the neccessary
steps:

Perform an S-parameter simulation in order to calculate the reflexion
coefficient.

Place a diagram and display the reflexion coefficient (i.e. S[1,1] for
port 1, S[2,2] for port 2 etc.)

Set a marker on the graph and step to the desired frequency.

Click with the right mouse button on the marker and select "power
matching" in the appearing menu.

A dialog appears where the values can be adjusted, for example the
reference impedance can be chosen different from 50 ohms.

After clicking "create" the page switches back to the schematic and by
moving the mouse cursor the matching circuit can be placed.




The left-hand side of the matching circuit is the input and the
right-hand side must be connected to the circuit.

If the marker points to a variable called "Sopt", the menu shows the
option "noise matching". Note that the only different to "power
matching" is the fact that the conjugate complex reflexion coefficient
is taken. So if the variable has another name, noise matching can be
chosen by re-adjusting the values in the dialog.

The matching dialog can also be called by menu (Tools->matching
circuit) or by short-cut (<CTRL-5>). But then all values has to be
entered manually.

2-Port Matching Circuits
~~~~~~~~~~~~~~~~~~~~~~~~


If the variable name in the marker text is an S-parameter, then an
option exists for concurrently matching input and output of a two-port
circuit. This works quite alike the above-mentioned steps. It results in
two L-circuits: The very left node is for connecting port 1, the very
right node is for connectiong port 2 and the two node in the middle are
for connecting the two-port circuit.


.. only:: html

   `back to the top <#top>`__
