
Short Description of Actions
============================

General Actions
~~~~~~~~~~~~~~~

(valid in all modes)

+---------------------------------------+----------------------------------------------------------------------------------------+
| mouse wheel                           | Scrolls vertically the drawing area. You can also scroll outside the current size.     |
+---------------------------------------+----------------------------------------------------------------------------------------+
| mouse wheel + Shift Button            | Scrolls horizontally the drawing area. You can also scroll outside the current size.   |
+---------------------------------------+----------------------------------------------------------------------------------------+
| mouse wheel + Ctrl Button             | Zooms into or outof the drawing area.                                                  |
+---------------------------------------+----------------------------------------------------------------------------------------+
| drag'n'drop file into document area   | Tries to open file as Qucs schematic or data display.                                  |
+---------------------------------------+----------------------------------------------------------------------------------------+



"Select"-Mode
~~~~~~~~~~~~~

|image0_EN|

(Menu: Edit->Select)

+-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| left mouse button                 | Selects the element below the mouse cursor. If several components are placed there, you can clicking several times in order to select the wanted one.                                                                               |
|                                   | Keeping the mouse button pressed, you can move the component below the mouse cursor and all selected ones. If you want to fine position the components, press the CTRL key during moving and the grid is disabled.                  |
|                                   | Keeping the mouse button pressed without any element below it opens a rectangle. After releasing the mouse button, all elements within this rectangle are selected.                                                                 |
|                                   | A selected diagram or painting can be resized by pressing the left mouse button over one of its corners and moving by keeping the button pressed.                                                                                   |
|                                   | After clicking on a component text, it can be edited directly. The enter key jumps to the next property. If the property is a selection list, it can only be changed with the cursor up/down keys.                                  |
|                                   | Clicking on a circuit node enters the "wire mode".                                                                                                                                                                                  |
+-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| left mouse button + Ctrl Button   | Allows more than one element to be selected, i.e. selecting an element does not deselect the others. Clicking on a selected element deselects it. This mode is also valid for selecting by opening a rectangle (see item before).   |
+-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| right mouse button                | Clicking on a wire selects a single straight line instead of the complete line.                                                                                                                                                     |
+-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| double-click right mouse button   | Opens a dialog to edit the element properties (The labels of wires, the parameters of components, etc.).                                                                                                                            |
+-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


"Insert Component"-Mode
~~~~~~~~~~~~~~~~~~~~~~~

(Click on a component/diagram in the left area)

+----------------------+-------------------------------------------------------------+
| left mouse button    | Place a new instance of the component onto the schematic.   |
+----------------------+-------------------------------------------------------------+
| right mouse button   | Rotate the component. (Has no effect on diagrams.)          |
+----------------------+-------------------------------------------------------------+


"Wire"-Mode
~~~~~~~~~~~

|image1_EN|

(Menu: Insert->Wire)

+-----------------------------------+---------------------------------------------------------------------------------+
| left mouse button                 | Sets the starting/ending point of the wire.                                     |
+-----------------------------------+---------------------------------------------------------------------------------+
| right mouse button                | Changes the direction of the wire corner (first left/right or first up/down).   |
+-----------------------------------+---------------------------------------------------------------------------------+
| double-click right mouse button   | Ends a wire without being on a wire or a port.                                  |
+-----------------------------------+---------------------------------------------------------------------------------+


"Paste"-Mode
~~~~~~~~~~~~

|image2_EN|

(Menu: Edit->Paste)

+----------------------+---------------------------------------------------------------+
| left mouse button    | Place the elements onto the schematic (from the clipboard).   |
+----------------------+---------------------------------------------------------------+
| right mouse button   | Rotate the elements.                                          |
+----------------------+---------------------------------------------------------------+


Mouse in "Content" Tab
~~~~~~~~~~~~~~~~~~~~~~

|image3_EN|


+--------------------+---------------------+----------------------------------------------+
| left click         | Selects file.                                                      |
+--------------------+---------------------+----------------------------------------------+
| double-click       | Opens file.                                                        |
+--------------------+---------------------+----------------------------------------------+
| right click        | Displays menu with: |                                              |
|                    +---------------------+----------------------------------------------+
|                    |   "open"            | - open selected file                         |
|                    +---------------------+----------------------------------------------+
|                    |   "rename"          | - change name of selected file               |
|                    +---------------------+----------------------------------------------+
|                    |   "delete"          | - delete selected file                       |
|                    +---------------------+----------------------------------------------+
|                    |   "delete group     | - delete selected file and its relatives     |
|                    |                     |   (schematic, data display, dataset)         |
+--------------------+---------------------+----------------------------------------------+


Keyboard
~~~~~~~~

Many actions can be activated/done by the keyboard strokes. This can be
seen in the main menu right beside the command. Some further key
commands are shown in the following list:

+---------------------------+--------------------------------------------------------------------------------------+
| "Delete" or "Backspace"   | Deletes the selected elements or enters the delete mode if no element is selected.   |
+---------------------------+--------------------------------------------------------------------------------------+
| Cursor left/right         | Changes the position of selected markers on their graphs.                            |
|                           | If no marker is selected, move selected elements.                                    |
|                           | If no element is selected, scroll document area.                                     |
+---------------------------+--------------------------------------------------------------------------------------+
| Cursor up/down            | Changes the position of selected markers on more-dimensional graphs.                 |
|                           | If no marker is selected, move selected elements.                                    |
|                           | If no element is selected, scroll document area.                                     |
+---------------------------+--------------------------------------------------------------------------------------+
| Tabulator                 | Changes to the next open document (according to the TabBar above).                   |
+---------------------------+--------------------------------------------------------------------------------------+

.. only:: html

   `back to the top <#top>`__

.. |image0_EN| image:: _static/en/select.png
.. |image1_EN| image:: _static/en/wire.png
.. |image2_EN| image:: _static/en/paste.png
.. |image3_EN| image:: _static/en/contab.png

.. |image0_DE| image:: _static/de/select.png
.. |image1_DE| image:: _static/de/wire.png
.. |image2_DE| image:: _static/de/paste.png
.. |image3_DE| image:: _static/de/inhalttab.png

.. |image0_CS| image:: _static/cs/select.png
.. |image1_CS| image:: _static/cs/wire.png
.. |image2_CS| image:: _static/cs/paste.png
.. |image3_CS| image:: _static/cs/contab.png

.. |image0_ES| image:: _static/es/select.png
.. |image1_ES| image:: _static/es/wire.png
.. |image2_ES| image:: _static/es/paste.png
.. |image3_ES| image:: _static/es/contab.png

.. |image0_FR| image:: _static/fr/select.png
.. |image1_FR| image:: _static/fr/wire.png
.. |image2_FR| image:: _static/fr/paste.png
.. |image3_FR| image:: _static/fr/contab.png

.. |image0_RU| image:: _static/ru/select.png
.. |image1_RU| image:: _static/ru/wire.png
.. |image2_RU| image:: _static/ru/paste.png
.. |image3_RU| image:: _static/ru/contab.png

.. |image0_UK| image:: _static/uk/select.png
.. |image1_UK| image:: _static/uk/wire.png
.. |image2_UK| image:: _static/uk/paste.png
.. |image3_UK| image:: _static/uk/contab.png
