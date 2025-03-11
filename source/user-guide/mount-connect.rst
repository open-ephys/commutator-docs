.. _mounting:

Mounting and Connecting
**************************************************************

Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The commutator has several holes that can be used to mount it on `80/20 aluminum extrusion
<https://8020.net/framing-options/t-slotted-profiles/fractional/10series100basedprofiles.html>`_
using `t-nuts <https://youtu.be/nK-DsJxAdwM>`_ or a standard mechanical breadboard. For example:

..  grid::

    ..  grid-item::

        ..  image:: /_static/images/commutator-mount-example-1.png
            :alt: image of mounted commutator
            :align: center
            
    ..  grid-item::

        ..  image:: /_static/images/commutator-mount-example-2.png
            :alt: image of mounted commutator
            :align: center

For custom mounting solutions, you can find the 3D mCAD files in the following repos: 

-   `Coax Commutator <https://github.com/open-ephys/commutator-coax/tree/main/mechanical>`_
-   `Dual Coax Commutator <https://github.com/open-ephys/commutator-dual/tree/main/mechanical>`_
-   `SPI Commutator <https://github.com/open-ephys/commutator-spi/tree/main/mechanical>`_

These files can be be opened and their dimensions can be measured using mCAD softwares. `eDrawings
<https://www.edrawingsviewer.com/download-edrawings>`_, `Blender
<https://www.blender.org/download/>`_, `FreeCAD <https://www.freecad.org/>`_ are all free mCAD
software examples that provide this functionality. All three support STL files. Only the first
supports SolidWorks files which the original design files are. Both STL and SolidWorks files are
available in those repos.

More information on the best location to mount the commutator is available on the next
:doc:`tether-management_counterweight` page.

Connecting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

..  grid:: 
    :margin: 0

    ..  grid-item::

        ..  grid:: 1
            :margin: 0
            :padding: 0

            ..  grid-item:: **1. USB Connector**
                :padding: 0

                The commutator receives power and communicates to the USB with serial
                communication over USB through this interconnect. Newer commutators use
                USB-C. Older commutators use Micro-USB.

            ..  grid-item:: **2. Top SMA Connector**
                :padding: 0

                The commutator's stator connects to the stationary data acquisition device
                (e.g. miniscope DAQ or ONIX breakout board) through this interconnect.

            ..  grid-item:: **3. Bottom SMA Connector**
                :padding: 0

                The commutator's rotor connects to the freely moving animal headstage
                through this interconnect.

    ..  grid-item::

        ..  image:: /_static/images/connections-numbered.png

..  tip::

    *   Some USB cables only supply power. Confirm your USB cable transfers both power and digital signals.
    *   Source your coaxial cables from a reputable vendor such as `Digikey <https://www.digikey.com/>`_ or
        `Mouser <https://www.digikey.com/>`_.
    *   Source your coaxial tether from the `Open Ephys <https://open-ephys.org/tethers>`_ or 
        `make your own <https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/tethers.html>`_.
    *   For animal behavior experiments, manage the USB cable and the coaxial cable (between the commutator and DAQ)
        such that they do not interfere with the tether when the animal moves.
