
Qucs File Formats
=================

This document describes the schematic and library file formats of Qucs.

Schematic file format
---------------------

This format is used for schematics (usually with suffix ``.sch``) and for data
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
-  ``<Script=name.m>`` contains the file name of the octave script
   associated with this schematic.
-  ``<RunScript=0>`` contains 1 if the octave script is executed after the
   simulation.
-  ``<showFrame=0>`` specify if a frame is drawn and if so which size it is.
   valid values are 0 (do not show a frame), 1 (A5 landscape), 2 (A5 portrait),
   3 (A4 landscape), 4 (A4 portrait), 5 (A3 landscape), 6 (A3 portrait),
   7 (letter landscape) and 8 (letter portrait).
-  ``<FrameText0=NE555 sub-circuit model>``, ``FrameText1=Draw by: anonymous``,
   ``FrameText2=Date: 1984``, and ``<FrameText3=Revision: 42>`` specifiy the
   texts to be placed into the frame text boxes.



Symbol
~~~~~~


This section starts with ``<Symbol>`` and ends with ``</Symbol>``. It
contains painting elements creating a schematic symbol for the file.
This is usually only used for schematic files that meant to be a
subcircuit.

Refers to "Symbol definition" in the "Shared file format" section at the
end of this document.

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
   the point where the label is set on the wire.
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

  <diatype x y width height grid gridcolor gridstyle log xAutoscale xmin
   xstep xmax yAutoscale ymin ystep ymax zAutoscale zmin zstep zmax
   xrotate yrotate zrotate "xlabel" "ylabel" "zlabel" "[freq Hz;]*">
      <"graphvar" color thickness precision numberformat style axisside>
      <Mkr x y precision numberformat transparent>
  </diatype>

Diagram line format:

-  The ``diatype`` token specifies the type of diagram.
-  The first two numbers are x and y coordinate of lower left corner.
-  The next two numbers are width and height of diagram boundings.
-  The fifth number is 1 if grid is on and 0 if grid is off.
-  The next is grid color in 24 bit hexadecimal RGB value, e.g. #FF0000
   is red.
-  The next number determines the style of the grid.
-  The next number determines which axes have logarithmical scale.
-  The list of frequencies ``"[freq Hz;]*"`` is used by ``Phasor`` and ``Waveac``.

Here is a list of known diagram types:

-  ``Curve`` for a locus curve diagram.
-  ``Smith`` for an impedance Smith diagram.
-  ``ySmith`` for an admittance Smith diagram.
-  ``PS`` for a mixed polar/smith diagram.
-  ``SP`` for a upper-half mixed polar/smith diagram.
-  ``Polar`` for a polar diagram.
-  ``Rect`` for a 2D-cartesian diagram.
-  ``Rect3D`` for a 3D-cartesain diagram.
-  ``Tab`` for a tabular diagram.
-  ``Time`` for a timing diagram.
-  ``Truth`` for a truth-table diagram.
-  ``Phasor`` for a complex phasor diagram.
-  ``Waveac`` for a wave as temporal diagram.

Graph line format:

-  The ``graphvar`` specify the variable this graph is plotting for.
-  The ``color``, ``thickness`` and ``style`` refers to the pen used to
   draw the curve.
-  The ``precision`` specify the number of digits used when displaying
   data values.
-  The ``numberformat`` is an integer that specify how the number are
   formated (0 for real/imag, 1 for polar/deg and 2 for polar/rad).
-  The ``axisside`` is an integer indicating on which side the Y axis
   should be placed ().

Marker line format:

-  The ``x`` and ``y`` are the location of the marker.
-  The ``precision`` ...
-  The ``numberformat`` ...
-  The ``transparent``



Paintings
~~~~~~~~~


This section starts with ``<Paintings>`` and ends with ``</Paintings>``.
It contains the paintings that are within the schematic.

Refers to "Shared file format" section below.


Library file format
-------------------

This format is used for libraries (usually with suffix ``.lib``). The
following text shows a short example of a library file.

::

  <Qucs Library 0.0.14 "Ideal">
  <DefaultSymbol>
    <.ID -26 13 D>
    <Line -30 0 60 0 #000080 2 1>
    <Line -6 -9 0 18 #000080 2 1>
    <Line 6 -9 0 18 #000080 2 1>
    <Line -6 0 12 -9 #000080 2 1>
    <Line -6 0 12 9 #000080 2 1>
    <Line -6 9 4 0 #000080 2 1>
    <.PortSym -30 0 1 0>
    <.PortSym 30 0 2 180>
  </DefaultSymbol>
  <Component VSum>
    <Description>
  Voltage adder
    </Description>
    <Model>
  .Def:Ideal_AP1 _net3 _net2 fc="1E3"
  Sub:VSUB1 _net0 _net1 _net2 Type="VSub"
  Sub:LP1F1 _net3 _net0 Type="LP1" fc="fc2" V0="0"
  Sub:HP1F1 _net3 _net1 Type="HP1" fc="fc2"
  Eqn:Eqn1 fc2="fc/0.6436" Export="yes"
  .Def:End
    </Model>
    <ModelIncludes "HP1.sch.lst" "LP1.sch.lst" "VSub.sch.lst">
    <Symbol>
      <Ellipse -20 -20 40 40 #000080 2 1 #c0c0c0 1 0>
      <Line -10 0 20 0 #000080 1 1>
      <Line 0 -10 0 20 #000080 1 1>
      <Line 0 30 0 -10 #000080 2 1>
      <.PortSym 0 30 2 0>
      <.PortSym 30 0 3 180>
      <Line 20 0 10 0 #000080 2 1>
      <.ID 10 14 VADD>
      <Line 0 -20 0 -10 #000080 2 1>
      <.PortSym 0 -30 1 0>
    </Symbol>
  </Component>

The first line specify that this file is a Qucs library file generated by Qucs
0.0.14 and that the library is named "Ideal".

The file contains on optional ``DefaultSymbol`` section, followed by
``Component`` sections. Each section is explained below.


Default symbol
~~~~~~~~~~~~~~


This section starts with ``<DefaultSymbol>`` and ends with ``</DefaultSymbol>``.
It contains painting elements creating a default schematic symbol for any
subsequent component declaration that doesn't define its own.

Refers to "Shared file format" section below.


Component
~~~~~~~~~


This section starts with ``<Component>`` and ends with ``</Component>``. It
contains the component definition for use with schematic documents.

The component section is an aggregation of the following sub-sections:

-  ``<Description>`` and ``</Description>`` contain lines of free text describing
   the component function.
-  ``<Model>`` and ``</Model>`` contain the Qucsator netlist lines for this
   component.
-  ``<ModelIncludes "value0" "value1" ...>`` ...
-  ``<Spice>`` and ``</Spice>``` are optional and contain the Spice netlist lines
   for this component.
-  ``<Symbol>`` and ``</Symbol>`` are optional and contain painting elements
   defining the schematic symbol to be used with this component. Refers to
   "Symbol definition" section below.



Shared file format
------------------

Painting elements
~~~~~~~~~~~~~~~~~

A painting line can be found in:

-  The ``Paintings`` section of a schematic file.
-  The ``Symbol`` sections of a schematic file.
-  The ``DefaultSymbol`` section of a library file.
-  The ``Symbol`` section (sub-section of ``Component``) of a library file.

A painting line has one of the following format:

-  ``<Rectangle x y width height pencolor penwidth penstyle brushcolor brushstyle filled>`` ...
-  ``<Ellipse  x y width height pencolor penwidth penstyle brushcolor brushstyle filled>`` ...
-  ``<EArc x y startangle spanangle width height pencolor penwidth penstyle brushcolor brushstyle filled>`` ...
-  ``<Text x y size color angle "text">`` ...
-  ``<Line x1 y1 x2 y2 pencolor penwidth penstyle >`` ...
-  ``<Arrow x1 y1 x2 y2 x3 y3 pencolor penwidth penstyle >`` ...



Symbol definition
~~~~~~~~~~~~~~~~~

A symbol definition can contains any painting element as described in the
previous section. In addition to the painting elements, a symbol definition
must contain one ``.ID`` line and one or more ``.PortSym`` lines.

The ``.ID`` line has the following format:

::

  <.ID x y name "property1" "property2" ...>

Where:

-  ``x`` and ``y`` are the center coordinates of the symbol.
-  ``name`` will be used as a name prefix when instanciating this symbol
   on a schematic sheet.
-  ``propertyX`` are used for symbol definition within a schematic file,
   these parameter will be associated with the symbol instance and
   communicated to the sub-schematic. The format for such a property is
   ```displayed=name=value=description=unknown```.

The ``.PortSym`` line has the following format:

::

  <.PortSym x y caption angle>

Where:

-  ``x`` and ``y`` are the coordinates of the port.
-  ``caption`` is the name/caption of the port.
-  ``angle`` is an angle value, it is ignored (backward compatibility).



.. only:: html

   `back to the top <#top>`__
