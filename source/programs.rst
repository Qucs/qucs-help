
Installed Files
===============

The Qucs system needs several programs. These are installed during the
installation process. The path of Qucs is determined during the
installation (``configure`` script). The following explanations assume
the default path (``/usr/local/``).

- ``/usr/local/bin/qucs`` - the GUI

- ``/usr/local/bin/qucsator`` - the simulator (console application)

- ``/usr/local/bin/qucsedit`` - a simple text editor

- ``/usr/local/bin/qucshelp`` - a small program displaying the help system

- ``/usr/local/bin/qucstrans`` - a program for calculation transmission line parameters

- ``/usr/local/bin/qucsfilter`` - a program synthesizing filter circuits

- ``/usr/local/bin/qucsconv`` - a file format converter (console application)


All programs are stand-alone applications and can be started
independently. The main program (GUI)

- calls ``qucsator`` when performing a simulation,

- calls ``qucsedit`` when showing text files,

- calls ``qucshelp`` when showing the help system,

- calls ``qucstrans`` when calling this program from menu "Tools",

- calls ``qucsfilter`` when calling this program from menu "Tools",

- calls ``qucsconv`` when placing the SPICE component and when performing a simulation with the SPICE component.

Furthermore, the following directories are created during
installation:

- ``/usr/local/share/qucs/bitmaps`` - contains all bitmaps (icons etc.)

- ``/usr/local/share/qucs/docs`` - contains HTML documents for the help system

- ``/usr/local/share/qucs/lang`` - contains the translation files

Command line arguments
^^^^^^^^^^^^^^^^^^^^^^

``qucs [file1 [file2 ...]]``

``qucsator [-b] -i netlist -o dataset`` (b = progress bar)

``qucsedit [-r] [file]`` (r = read-only)

``qucshelp`` (no arguments)

``qucsconv -if spice -of qucs -i netlist.inp -o netlist.net``


.. only:: html

   `back to the top <#top>`__
