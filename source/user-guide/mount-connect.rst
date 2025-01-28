.. _mounting:

Mounting and Connecting
**************************************************************

Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The commutator should be mounted such that it is roughly centered over the behavioral arena. There
are several holes in various positions around the commutator's body that are compatible standard
`80/20 aluminum extrusion
<https://8020.net/framing-options/t-slotted-profiles/fractional/10series100basedprofiles.html>`_
using `t-nuts <https://youtu.be/nK-DsJxAdwM>`_ or a standard mechanical breadboard. Select the
mounting holes that are convenient for your behavioral setup; not all the holes need to be used. For
custom mounting solutions, the locations for the mounting holes (which accommodate 1/4"-20 or M6
SHCS) are indicated in the below schematic:

..  ..  tab-set::
..     :sync-group: commutator-type

..     ..  tab-item:: Coax
..         :sync: coax

..         ..  image:: /_static/images/commutator-mounting-holes.png
..             :alt: schematic image
..             :align: center

..         For additional clarity, a 3D model of the commutator body is
..         available `here <https://github.com/open-ephys/commutator-coax/tree/main/mechanical>`_

..     ..  tab-item:: Dual Coax
..         :sync: dual-coax

..         Content 2
        
..         For additional clarity, a 3D model of the commutator body is
..         available `here <https://github.com/open-ephys/commutator-dual/tree/main/mechanical>`_

..     ..  tab-item:: SPI
..         :sync: spi

..         Content 3

..         For additional clarity, a 3D model of the commutator body is
..         available `here <https://github.com/open-ephys/commutator-spi/tree/main/mechanical>`_

If you need specific mounting dimensions, open the original design files and take
measurements using a CAD program that supports the filetypes. For example, Dassault provides a `free
software <https://www.edrawingsviewer.com/download-edrawings>`_ for viewing of and measuring dimensions
in Solidworks files. The mechanical designs can be found in the following GitHub repositories:

- `Coax <https://github.com/open-ephys/commutator-coax/tree/main/mechanical>`_
- `Dual Coax <https://github.com/open-ephys/commutator-dual/tree/main/mechanical>`_
- `SPI Coax <https://github.com/open-ephys/commutator-spi/tree/main/mechanical>`_

If the commutator is used for an animal behavior experiment, mount it such that the animal can
traverse the behavior setup's full area given the length of your tether. Elastic thread can be
utilized to prevent the tether from entering the animal's field while the the animal moves around by
catching the thread onto the gear hook and attaching it to the tether at various points using Kapton
tape.

..  figure:: /_static/images/tether-drawing.png
    :alt: tether drawing
    :align: center

    The Kapton tape dots (yellow) and elastic thread (blue) prevent the tether (purple) from draping into the mouse's
    field when the mouse is under the commutator as demonstrated in the top drawing while allowing the mouse to traverse
    the full space of the behavior arena as demonstrated in the bottom drawing.

Connecting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Compatible tethers depend on the commutator type you have. 

The coax commutators are compatible with a variety of tethers as long as they are terminated with a
SMA connector (such as the `micro and mini Open Ephys tethers <https://open-ephys.org/tethers>`_). A
standard, high quality SMA-SMA cable (such as `these from Open Ephys
<https://open-ephys.org/cables>`_) can be used between the commutator and the data acquisition
device. There are three electrical interconnects on the coax commutator:

.. grid:: 

    .. grid-item::

        .. image:: /_static/images/connections-numbered.png

    .. grid-item::

        .. grid:: 1

            .. grid-item:: **USB Connector**

                The commutator receives power and communicates to the USB with serial
                communication over USB through this interconnect. The newer commutators use
                USB-C; the older commutators use Micro-USB.

            .. grid-item:: **Top SMA Connector**

                The commutator's stator connects to the stationary data acquisition device
                (e.g. miniscope DAQ or ONIX breakout board) through this interconnect.

            .. grid-item:: **Bottom SMA Connector**

                The commutator's rotor connects to the freely moving animal headstage
                through this interconnect.

The dual coax is similar except it has two top SMA connectors and two bottom SMA connectors
making five total interconnects.

The SPI commutator is similar to the single coax commutator except it utilizes 12-conductor Omnetics
connectors instead of SMA connectors. It is compatible with tethers that have this connector.

.. ..  tab-set::
..     :sync-group: commutator-type

..     ..  tab-item:: Coax
..         :sync: coax

..         A variety of tethers are compatible with the commutator as long as they are terminated with
..         a SMA connector (such as the `Miniscope V4 tether
..         <https://open-ephys.org/miniscope-v4/miniscope-v4-coax-cable-kit>`_). A standard, high
..         quality SMA-SMA cable (such as `these from Open Ephys
..         <https://open-ephys.org/cables>`_) can be used between the commutator and
..         the data acquisition device. There are three electrical interconnects on the commutator:

..         .. grid:: 

..             .. grid-item::

..                 .. image:: /_static/images/connections-numbered.png

..             .. grid-item::

..                 .. grid:: 1

..                     .. grid-item:: **USB Connector**

..                         The commutator receives power and communicates to the USB with serial
..                         communication over USB through this interconnect. The newer commutators use
..                         USB-C; the older commutators use Micro-USB.

..                     .. grid-item:: **Top SMA Connector**

..                         The commutator's stator connects to the stationary data acquisition device
..                         (e.g. miniscope DAQ or ONIX breakout board) through this interconnect.

..                     .. grid-item:: **Bottom SMA Connector**

..                         The commutator's rotor connects to the freely moving animal headstage
..                         through this interconnect.

..         The dual coax is similar except it has two top SMA connectors and two bottom SMA connectors
..         making five total interconnects.

..     ..  tab-item:: SPI
..         :sync: spi

..         The SPI commutator is similar to the single coax commutator except it utilizes 12-conductor
..         Omnetics connectors instead of SMA connectors.

..  Attention::
    *   Some USB cables only supply power. Confirm cable transfers both
        power and digital signals.
    *   Source your coaxial cables from a reputable vendor such as `Digikey <https://www.digikey.com/>`_ or
        `Mouser <https://www.digikey.com/>`_.
    *   Source your coaxial tether from the `Open Ephys <https://open-ephys.org/tethers>`_ or 
        `make your own <https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/tethers.html>`_.
    *   For animal behavior experiments, manage the USB cable and the coaxial cable (between the commutator and DAQ)
        such that they do not interfere with the tether when the animal moves. For example:

    ..  image:: /_static/images/commutator-cable-management.png
        :alt: image suggesting cable management
        :align: center
