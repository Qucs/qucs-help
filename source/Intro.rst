|imageQ_EN|

---------------------------------
Chapter 1. Introduction                 
---------------------------------    
 
Following the release of Qucs-0.0.18 in August 2014 the Qucs Development Team have considered in detail a number of possible directions that future versions of the software could take. Spice4qucs is one of these routes. It addresses a number of problems observed with the current version of Qucs while attempting to combine some of the best features of other GPL circuit simulation packages with Qucs. The project also aims to add additional model development tools to those currently available. Qucs was originally written as an RF and microwave engineering design tool which provided features not found in SPICE, like S parameter simulation, two and multiport small signal AC circuit analysis and RF network synthesis.  Since it was first release under the General Public License (GPL) in 2003 Qucs has provided users with a stable, flexible and reasonably functional circuit simulation package which is particularly suited for high frequency circuit simulation. In the years following 2003 the Qucs Development team added a number of additional simulation facilities, including for example, transient simulation,  device parameter sweep capabilities and single tone Harmonic Balance simulation, making Qucs functionality comparable to SPICE at low frequencies and significantly extended at high frequencies.  Considerable effort has also been made to improve the device modelling tools distributed with Qucs. The recent version of the software includes code for algebraic equation manipulation, Equation-Defined Device (EDD) modelling, Radio Frequency Equation-Defined Device (RFEDD) simulation and Verilog-A synthesised model development plus a range of compact and behavioural device modelling and post simulation data analysis tools that have become central features in an open source software package of surprising power and utility. 

One of the most often requested new Qucs features is for "better documentation", especially documentation outlining the use and limitations of the simulation and the modelling features built into Qucs.  Qucs is a large and complex package which is very flexible in the way that it can be used as a circuit design aid. Hence, however much documentation is written describing its functionality there are always likely be simulation and modelling examples that are missing from the Qucs documentation. In the future Qucs releases will be accompanied by two or more basic Qucs documents. The first of these, simply called "Qucs-Help", provides introductory information for beginners and indeed any other users, who require help in starting to use Qucs. The second Qucs document, called "Spice4qucs-Help", introduces more advanced simulation and modelling topics.  Both documents present a large number of typical circuit simulation and compact device modelling examples. In the text these are also linked to detailed sets of Qucs reference material.  Since 2003 the Qucs Development Team, and other authors, have published a body of work concerning Qucs and its applications. A bibliography of these publications can be found at the end of this document. Anyone interested in learning about Qucs is recommended to read these publications as they provide a wealth of information on basic and advanced Qucs topics.  Both the "Qucs_Help" and "Spice4qucs-Help" documents are very much work in progress.  Updated versions will be published with each new Qucs release. Moreover, to keep everyone up to date with Qucs current developments it is planned to updated them during the Qucs development phases.  The latest documentation can be found at https://github.com/Qucs/qucs-help. 

1.1 Background
~~~~~~~~~~~~~~~~
The current rate of Qucs downloads from http://qucs.sourceforge.net/ is around 3000 per week with roughly 1.5 million downloads since Qucs was first released in 2003. This figure does not however, imply that 1.5 million copies of Qucs are currently in regular use. It does perhaps give an indication of the popularity of the software, particularly amongst users interested in RF circuit design and simulation. For a high percentage of regular Qucs users the current distribution version (Qucs 0.0.18) provides a reasonably stable and accurate simulation tool equipped with more than enough facilities to meet their everyday needs. In reality Qucs is not perfect but includes a number of weaknesses and known limitations. The onward march of technology also makes it imperative that Qucs evolves from simply a circuit simulator to a design tool which can handle modelling and simulation of circuits which include devices from new emerging technologies. Today Qucs includes an impressive range of component, device and circuit modelling tools, allowing it to model and simulate circuits and systems built from standard components and new production devices.  

Three of the primary aims of the work undertaken by the Qucs Development Team are firstly to remove software bugs and improve the overall performance of the package, secondly to remove known weaknesses and limitations and thirdly to develop the package by adding new features which increase it's utility.  Readers who are not familiar with open source software development may be unaware of how the development process works.  By Qucs Development Team we mean a group of interested individuals who give both their time and expertise freely for the improvement of the GPL Qucs package.  The Qucs Development Team is not a fixed group but is a dynamic organisation where different people contribute, simultaneously or at different times, to the same part or different parts of the software.  The spice4qucs project group is one of a number of sub-groups within the overall Qucs Development Team. It was formed to address a number of the known limitations of the current Qucs release and to take advantage of the work done by other GPL circuit simulation teams working on the ngspice ( http://ngspice.sourceforge.net/ ) and Xyce simulators ( https://xyce.sandia.gov/ ).

The spice4qucs initiative is an ongoing project which attempts to:

1. Correct known weaknesses observed with the current Qucs analogue simulation engine "qucsator". Qucsator is based on classical numerical mathematics routines for the solution of electrical network linear and non-linear real and complex algebraic equations and time domain algebraic and differential equations. For small circuits qucsator works well in the DC and AC small signal domains. However, in the transient and Harmonic Balance simulation domains it often fails to converge to an acceptable solution.  Its performance is also often below that expected of a modern circuit simulator employing sparse matrix algorithms. However, qucsator works well for RF small signal AC simulation and will for some time remain the first choice for this simulation domain.

2. Provide Qucs users with a choice of simulation engine selected from qucsator, ngspice and Xyce. By selecting ngspice or Xyce as the simulation engine for a particular circuit simulation users may capitalise on all the features offered by the extensive SPICE developments which have taken place over the last forty years.  Both ngspice and Xyce offer improved transient simulation convergence and speed, particularly for large non-linear circuits. Xyce brings an alternative implementation of single tone Harmonic Balance simulation to Qucs which offers much improved convergence properties for both linear and non-linear components and devices. Future versions of Xyce are also likely to offer multi-tone Harmonic Balance simulation.

3. Extend Qucs subcircuit, Equation-Defined Device (EDD), Radio Frequency Equation-Defined Device (RFEDD) and Verilog-A device modelling capabilities. Future Qucs releases are planned which will offer much improved component and device modelling features that work as an interlinked structure, supporting model development as a continuous development flow from physical concepts to compiled C++ code.  This is an ambitious aim which the spice4qucs project is attempting to complete by adding the Berkeley "Model and Algorithm Prototyping Platform" (MAPP http://draco.eecs.berkeley.edu/dracotiki/tiki-index.php?page=MAPP ) to Qucs, adding synthesis of ngspice and Xyce SPICE code from Qucs EDD and RFEDD models and by adding the synthesis of Verilog-A models from Qucs EDD models.

4. Offer Qucs users access to the additional simulation tools and extra component and device models provided by ngspice and Xyce. This includes much improved component library facilities which allow the use of device manufacturers SPICE models.

5. Offer for the first time with Qucs a true mixed-mode analogue-digital circuit simulation capability using Qucs/ngspice/XSPICE simulation. 

The spice4qucs initiative is an on going project and must be considered as very much work in progress. In its early releases not all the features listed above will be available for public use. It is however, the intention of the Qucs Development Team to introduce them as quickly as possible over a short period of time. Other features not listed in the previous entries may also be introduced.   

1.2 Qucs-0.0.18 Structure
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A block diagram showing the main analogue modelling and simulation functions of the Qucs-0.0.18 package is illustrated in Figure 1.1.  For convenience, particularly easy identification, blocks with  similar modelling or similar simulation functions have been coded with identical colours, for example dark red indicates the GUI and qucsator analogue simulation engine and dark green major component and device modelling tools. The direction of the flow of data between blocks are also shown with directed arrows. Central to the operation of the Qucs-0.0.18 package is the Qucs graphical user interface (GUI), the qucsator simulation engine and a post simulation data processing feature (indicated by the yellow block in Figure 1.1) for the extraction of device and circuit parameters and the visualisation of simulated signal waveforms. Cyan blocks in Figure 1.1 identify the well known Octave numerical analysis package ( https://www.gnu.org/software/octave/ ). Qucs employs Octave for additional post simulation data processing and waveform visualisation plus an experimental circuit simulation process where qucsator and Octave undertake cooperative transient circuit simulation (cyan coloured blocks).  The single light brown block in Figure 1.1 represents the ASCO optimisation package which is used by Qucs for determining circuit component values and device parameters which result in specific circuit performance criteria.

Readers who are not familiar with the basic operation and use of the Qucs GUI, circuit simulator and output processing routines should consult the "Qucs-Help" document before proceeding further with this more advanced document.   

|image0_EN| 

Figure 1.1.  A block diagram showing the analogue modelling and simulation facilities provided by Qucs-0.0.18.   

1.3 Qucs future capabilities
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Figure 1.2. presents an extended version of the Qucs-0.0.18 functional diagram where the added blocks indicate areas chosen for future Qucs development. Two major extension to Qucs functionality are obvious, 
namely the addition of the ngspice and Xyce circuit simulators to Qucs and the increase in the Qucs device modelling capabilities through the addition of the MAPP software. In Figure 1.2. the same colour coding has been adopted as that in Figure 1.1. The MAPP modelling extension is colour coded cyan indicating it forms part of the Qucs software which is dependent on the Octave package for its function. Figure 1.2. only gives a rough picture of the proposed changes to Qucs being tackled in the spice4qucs project.  Much of the detail will become clearer later in the tutorial and reference sections that follow. .
 
|image1_EN|

Figure 1.2. An extended block diagram outlining the extended Qucs simulation and modelling tools under development by the spice4qucs initiative. 

1.4 A first view of the extended spice4qucs device modelling and simulation features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
At this point it seems appropriate to introduce a short example which demonstrates how much Qucs has evolved since the release of version 0.0.18. This example has been deliberately chosen to present an overview of the major new Qucs features either already developed by the spice4qucs project or planned for future releases. To provide readers with adequate information on how to make the best use of the new spice4qucs features they are described in detail in later chapters of this document. 

Qucs version 0.0.18 is a surprisingly sophisticated program with quite a number of hidden features which are not obvious to most Qucs users. Given in Figure 1.3 is a Qucs schematic which demonstrates a little known application of the circuit simulator. Qucs is ideal for developing high level behavioural models of new components or devices which are not implemented in the distributed software. The schematic in Figure 1.3. introduces the physical equations and device parameters for a semiconductor tunnel diode. By using the Qucs parameter sweep and DC simulation operations it is possible to scan the diode bias voltage *Vpn*, calculate the tunnel diode bias current *idn* at each bias point and plot the device *id = f(vd)* characteristics. 
Note that in this introductory example the Qucs schematic does not include any electrical components. Moreover, the tunnel diode current is calculated directly from its physical **model_equations** and  **model_parameters**.

|image2_EN|

Figure 1.3. Mathematical representation of *Id = f(Vd)* for a semiconductor tunnel diode, including device model_parameters, model_equations and a Qucs DC scan test. 

The Berkeley **Model and Algorithm Prototyping Platform** (MAPP) is a new GPL modelling and simulation tool. It is developed by the MAPP team at the Department of Elecrical Engineering and Computer Science, University of California, Berkeley using a MATLAB  subset common to the Octave numerical analysis software.  
As part of the spice4qucs project the MAPP software has been interfaced with the Qucs GUI.  
Figure 1.4 introduces a MAPP behavioural model for the tunnel diode in Figure 1.3. 
Notice how similar the models in Figures 1.3 and 1.4 are. 
MAPP circuit simulation results in the diode characteristic plotted in Figure 1.4.   

|image3_EN|  

Figure 1.4. MAPP tunnel diode model and simulated diode current as a function of applied bias voltage.



The Qucs and MAPP modelling tools allow models represented by a set of mathematical equations based on the physical properties of a device to be tested and their correct operation confirmed
prior to constructing a simulation model for inclusion in circuit schematics.  Illustrated in Figure 1.5 is a third model for the tunnel diode plus a test circuit for simulating the device
DC current versus voltage characteristics.  This model will work with Qucs-0.0.18 and spice4qucs versions of the circuit simulator.  It shows how a Qucs EDD model represents the physical model of the tunnel
diode and how this model can be represented with it's own symbol and tested by combining it with other components to form a DC characteristic test circuit. The Qucs EDD is not implemented in SPICE simulators.
SPICE 3f5 and later simulators have instead other features like, for example, the B type sources.   

|image4_EN|

Figure 1.5. Qucs EDD behavioural model for the tunnel diode first introduced in Figure 3. 
 
The Qucs EDD component has one feature which makes it particularly important for developing compact device simulation models, namely that its structure and modelling capabilities are similar to those available with the Verilog-A hardware description language.  Hence, once an MAPP/Qucs EDD model is operating satisfactorily it can be transcribed into a Verilog-A compact model by inspection or by computer synthesis.  Such a Verilog-A model and test circuit is shown in Figure 1.6.

|image5_EN|

Figure 1.6. A Verilog-A compact tunnel diode model and test circuit.

One of the main aims of the spice4qucs initiative is both improve the Qucs compact device modelling capabilities and to streamline the flow of information between each part of the modelling and simulation sequence.In all Qucs releases prior to the spice4qucs project a number of modelling tools were implemented in the distribution software but users had to translate manually each type of model format to other formats if they wished to use a model with a different simulator or modelling tool. One exception was the rudimentary translation tool called **qucsconv** for translating SPICE netlists to Qucs netlist format. It was for example not possible to simulate Qucs models encoded in the Qucs netlist format directly with a SPICE simulator or to generate Verilog-A code model directly from a Qucs EDD model. This situation will change significantly as the spice4qucs project moves forward: in the medium to long term a number of synthesis-translation routines will be added to Qucs making the process of model translation transparent to the Qucs user.  The first to be developed is the link between the Qucs netlist format and the ngspice and Xyce simulator netlist formats. Figure 1.7 shows a Qucs tunnel diode EDD model, a DC swept parameter test circuit and a set of ngspice simulation results. This is closely followed by a SPICE 3 style netlist which lists the ngspice netlist generated automatically by spice4qucs.  Notice that this netlist is not simply a list of SPICE component statements but includes an embedded ngnutmeg script between the SPICE **.control .... and .... .endc** statements. More on this topic and all the others introduced earlier can be found in later sections of this document.

|image6_EN|

Figure 1.7. Qucs EDD tunnel diode model and ngspice simulation results.


.. literalinclude:: _static/en/netlist.cir
   :language: Bash
   :linenos:
   

.. only:: html

   `back to the top <#top>`__

.. |imageQ_EN| image::  _static/en/Qucs.png
.. |image0_EN| image::  _static/en/Spice4qucsFig1.svg
.. |image1_EN| image::  _static/en/Spice4qucsFig2.svg
.. |image2_EN| image::  _static/en/Spice4qucsFig3.svg
.. |image3_EN| image::  _static/en/Spice4qucsFig4.svg
.. |image4_EN| image::  _static/en/Spice4qucsFig5.svg
.. |image5_EN| image::  _static/en/Spice4qucsFig6.svg
.. |image6_EN| image::  _static/en/Spice4qucsFig7.svg

