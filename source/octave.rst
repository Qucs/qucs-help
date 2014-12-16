
Getting Started with Octave Scripts
===================================


Qucs can also be used to develop Octave scripts (see
`http://www.octave.org <http://www.octave.org>`__). This document should
give you a short description on how to do this.

If the user creates a new text document and saves it with the Octave
extension, e.g. 'name.m' then the file will be listed at the Octave
files of the active project. The script can be executed with F2 key or
by pressing the simulate button in the toolbar. The output can bee seen
in the Octave window that opens automatically (per default on the
right-hand side). At the bottom of the Octave window there is a command
line where the user can enter single commands. It has a history function
that can be used with the cursor up/down keys.

There are two Octave functions that load Qucs simulation results from
a dataset file: loadQucsVariable() and loadQucsDataset(). Please use the
help function in the Octave command line to learn more about them (i.e.
type help loadQucsVariable and help loadQucsDataset).

Postprocessing
~~~~~~~~~~~~~~


Octave can also be used for automatic postprocessing of a Qucs
simulation result. This is done by editing the data display file of a
schematic (Document Settings... in File menu). If the filename of an
Octave script (filename extension m) from the same project is entered,
this script will be executed after the simulation is finished.


.. only:: html

   `back to the top <#top>`__
