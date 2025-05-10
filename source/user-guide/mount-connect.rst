Mounting and Connecting
************************

Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The commutator has several holes that can be used to mount it on `80/20 aluminum extrusion
<https://8020.net/framing-options/t-slotted-profiles/fractional/10series100basedprofiles.html>`_
using `t-nuts <https://youtu.be/nK-DsJxAdwM>`_ or a standard mechanical breadboard. For example:

..  grid::

    ..  grid-item::

        ..  image:: /_static/images/commutator-mount-example-1.png
            :alt: image 1 of mounted commutator
            :align: center
            
    ..  grid-item::

        ..  image:: /_static/images/commutator-mount-example-2.png
            :alt: image 2 of mounted commutator
            :align: center

For custom mounting solutions, you can find the 3D mCAD files in the following repos: 

-   `For any commutator with a Teensy <https://github.com/open-ephys/commutators/tree/main/mechanical>`_ 
    (i.e. if your commutator has a Micro-USB port)
-   For any commutator with an RP2040 (i.e. if your commutator as a USB-C port)

    -   `Coax Commutator <https://github.com/open-ephys/commutator-coax/tree/main/mechanical>`_
    -   `Dual Coax Commutator <https://github.com/open-ephys/commutator-dual/tree/main/mechanical>`_
    -   `SPI Commutator <https://github.com/open-ephys/commutator-spi/tree/main/mechanical>`_

These files can be be opened and the design dimensions can be measured using mCAD software that
supports either SolidWorks files (e.g. `eDrawings
<https://www.edrawingsviewer.com/download-edrawings>`_) or STL files (e.g, `FreeCAD
<https://www.freecad.org/>`_). Both file types are available in the repositories linked above.

More information on the best location to mount the commutator is available on the
:doc:`tether-management_counterweight` page.

Connecting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. tab-set::

    .. tab-item:: Coax Commutator

        ..  grid:: 
            :margin: 0

            ..  grid-item::

                ..  grid:: 1
                    :margin: 0
                    :padding: 0

                    ..  grid-item:: **1. USB Connector**
                        :padding: 0

                        The commutator receives power and communicates to the PC over USB through
                        this interconnect. Newer commutators use USB-C. Older commutators use
                        Micro-USB.

                    ..  grid-item:: **2. Top SMA Connector**
                        :padding: 0

                        The commutator's stator connects to a stationary data acquisition device
                        that has a coaxial port (e.g. Miniscope DAQ or ONIX breakout board) through
                        this SMA interconnect.

                    ..  grid-item:: **3. Bottom SMA Connector**
                        :padding: 0

                        The commutator's rotor connects to a freely moving animal headstage that has
                        a coaxial connector through this SMA interconnect.

            ..  grid-item::

                ..  image:: /_static/images/connections-numbered.png

    .. tab-item:: SPI Commutator

        ..  grid:: 
            :margin: 0

            ..  grid-item::

                ..  grid:: 1
                    :margin: 0
                    :padding: 0

                    ..  grid-item:: **1. USB Connector**
                        :padding: 0

                        The commutator receives power and communicates to the PC over USB through
                        this interconnect. Newer commutators use USB-C. Older commutators use
                        Micro-USB.

                    ..  grid-item:: **2. Top SPI Connector**
                        :padding: 0

                        The commutator's stator connects to a stationary data acquisition device
                        that has a SPI port (e.g. the Open Ephys Acquisition Board) through
                        this 12-pin Omnetics PZN-12 interconnect.

                    ..  grid-item:: **3. Bottom SPI Connector**
                        :padding: 0

                        The commutator's rotor connects to a freely moving animal headstage that has
                        a SPI connector through this 12-pin Omnetics PZN-12 interconnect.

            ..  grid-item::

                ..  image:: /_static/images/spi-commutator.png

..  tip::

    *   Some USB cables only supply power. Confirm your USB cable transfers both power and digital signals.
    *   Source USB and coax cables from a reputable vendor such as `Digikey <https://www.digikey.com/>`_,
        `Mouser <https://www.digikey.com/>`_, or `Open Ephys <https://open-ephys.org/cables>`__.
    *   Source your tether from `Open Ephys <https://open-ephys.org/tethers>`__ or 
        `make your own <https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/tethers.html>`_.
    *   For animal behavior experiments, manage cables such that they do not interfere with the
        tether when the animal moves.
