
Schematic File Format
=====================


This document describes the schematic file format of Qucs. This format
is used for schematics (usually with suffix ``.sch``) and for data
displays (usually with suffix ``.dpl``). The following text shows a short
example of a schematic file.

::

  <Qucs Schematic 0.0.6>
  <Properties>      
    <View=0,0,800,800,1,0,0>
  </Properties>
  <Symbol>      
    <.ID -20 14 SUB>
  </Symbol>
  <Components>      
    <R R1 1 180 150 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "european" 0>      
    <GND * 1 180 180 0 0 0 0>
  </Components>
  <Wires>      
    <180 100 180 120 "" 0 0 0 "">      
    <120 100 180 100 "Input" 170 70 21 "">
  </Wires>
  <Diagrams>      
    <Polar 300 250 200 200 1 #c0c0c0 1 00 1 0 1 1 1 0 5 15 1 0 1 1 315 0 225 "" "" "">          
    <"acnoise2:S[2,1]" #0000ff 0 3 0 0 0>              
    <Mkr 6e+09 118 -195 3 0 0>      
  </Polar>
  </Diagrams>
  <Paintings>      
    <Arrow 210 320 50 -100 20 8 #000000 0 1>
  </Paintings>

The file contains several section. Each of it is explained below.
Every line consists of not more than one information block that starts
with a less-sign ``<`` and ends with a greater-sign ``>``.

Properties
~~~~~~~~~~


The first section starts with ``<Properties>`` and ends with
``</Properties>``. It contains the document properties of the file. Each
line is optional. The following properties are supported:

-  ``<View=x1,y1,x2,y2,scale,xpos,ypos>`` contains pixel position of the
   schematic window in the first four numbers, its current scale and the
   current position of the upper left corner (last two numbers).
-  ``<Grid=x,y,on>`` contains the distance of the grid in pixel (first two
   numbers) and whether grid is on (last number 1) or off (last number
   0).
-  ``<DataSet=name.dat>`` contains the file name of the data set
   associated with this schematic.
-  ``<DataDisplay=name.dpl>`` contains the file name of the data display
   page associated with this schematic (or the file name of the
   schematic if this document is a data display).
-  ``<OpenDisplay=yes>`` contains 1 if the data display page opens
   automatically after simulation, otherwise contains 0.




Symbol
~~~~~~


This section starts with ``<Symbol>`` and ends with ``</Symbol>``. It
contains painting elements creating a schematic symbol for the file.
This is usually only used for schematic files that meant to be a
subcircuit.

Components
~~~~~~~~~~


This section starts with ``<Components>`` and ends with ``</Components>``.
It contains the circuit components of the schematic. The line format is
as follows:

::

  <type name active x y xtext ytext mirrorX rotate "Value1" visible "Value2" visible ...>

-  The ``type`` identifies the component, e.g. ``R`` for a resistor, ``C`` for a
   capacitor.
-  The ``name`` is the unique component identifier of the schematic, e.g.
   ``R1`` for the first resistor.
-  A ``1`` in the ``active`` field shows that the component is active, i.e it
   is used in the simulation. A ``0`` shows it is inactive.
-  The next two numbers are the x and y coordinates of the component
   center.
-  The next two numbers are the x and y coordinates of the upper left
   corner of the component text. They are relative to the component
   center.
-  The next two numbers indicate the mirroring about the x axis (``1`` for
   mirrored, ``0`` for not mirrored) and the counter-clockwise rotation
   (multiple of 90 degree, i.e. 0...3).
-  The next entries are the values of the component properties (in
   quotation marks) followed by an ``1`` if the property is visible on the
   schematic (otherwise ``0``).




Wires
~~~~~


This section starts with ``<Wires>`` and ends with ``</Wires>``. It
contains the wires (electrical connection between circuit components)
and their labels and node sets. The line format is as follows:

::

  <x1 y1 x2 y2 "label" xlabel ylabel dlabel "node set">

-  The first four numbers are the coordinates of the wire in pixels: x
   coordinate of starting point, y coordinate of starting point, x
   coordinate of end point and y coordinate of end point. All wires must
   be either horizontal (both x coordinates equal) or vertical (both y
   coordinates equal).
-  The first string in quotation marks is the label name. It is empty if
   the user has not set a label on this wire.
-  The next two numbers are the x and y coordinates of the label or zero
   if no label exists.
-  The next number is the distance between the wire starting point and
   and the point where the label is set on the wire.
-  The last string in quotation marks is the node set of the wire, i.e.
   the initial voltage at this node used by the simulation engine to
   find the solution. This is empty if the user has not set a node set
   for this wire.




Diagrams
~~~~~~~~


This section starts with ``<Diagrams>`` and ends with ``</Diagrams>``. It
contains the diagrams with their graphs and their markers.
The line format is as follows (line break not allowed):

::

  <x y width height grid gridcolor gridstyle log xAutoscale xmin xstep
   xmax yAutoscale ymin ystep ymax zAutoscale zmin zstep zmax xrotate
   yrotate zrotate "xlabel" "ylabel" "zlabel">

-  The first two numbers are x and y coordinate of lower left corner.
-  The next two numbers are width and height of diagram boundings.
-  The fifth number is 1 if grid is on and 0 if grid is off.
-  The next is grid color in 24 bit hexadecimal RGB value, e.g. #FF0000
   is red.
-  The next number determines the style of the grid.
-  The next number determines which axes have logarithmical scale.




Paintings
~~~~~~~~~


This section starts with ``<Paintings>`` and ends with ``</Paintings>``.
It contains the paintings that are within the schematic.

.. only:: html

   `back to the top <#top>`__
