.. _dev_guide:

Developer Guide
-------------------------------------------------

.. attention:: This section provides information on hacking a commutator or
   building your own. For an overview of Open Ephys Commutators, visit the
   :ref:`oec`.  For instructions on how to use the Coaxial Commutator, visit
   the Coaxial Commutator :ref:`quick_start` Guide and :ref:`user_guide`.

Design Files
*************************************************
Open Ephys commutators are open-source. Mechanical, electrical, and firmware designs are available in the
`onix-commutator git repo <https://github.com/open-ephys/onix-commutator>`_. Below explains how to manufacture
your own Open Ephys Commutator using these files. This is helpful if you intend to create a custom commutator or adapt
an off-shelf-commutator Open Ephys Commutator to your system by reprogramming it to accept
other inputs instead of or in addition to the JSON remote procedure calls (RPCs) that the commutator is already designed
to accept. Finally, there are some design considerations at the bottom of the page in case you are considering designing
your own commutator.

.. _bom:

Bill of Materials (BoM)
*************************************************

Open Ephys is not affiliated with any of the linked vendors in the following
`BoM <https://docs.google.com/spreadsheets/d/1M2R0Q2-OuRHzctt05BxtA3hxNcCHtRZHORzCKElmG1Q/edit?usp=sharing>`__.

Ordering and Manufacturing Parts
*************************************************

The following sections describe how to fabricate the mechanical parts that comprise the Coaxial Commutator (gears and case).

Mechanical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you desire low quantity, first seek out local options. Many universities or libraries offer free 3D printing
services. We use SLS/MJF to make these parts. You might be able to get away with FDM/SLA 3D printing though the quality
of your gear mesh is not guaranteed and you will likely have to add structural supports that assist in the printing
process. Post-processing the removal of the structural support can be time-demanding. If you don't have access to a
SLS/MJF printer and don't want to compromise the printing process, there are many online manufacturers that will 3D
print this for you. They cost more and sometimes have a minimum price to purchase (i.e.
`3DHubs <https://www.hubs.com/>`_ has a $90 minimum at the time of writing this) which is not great if you are trying to
print a low quantity of pieces. Other popular ones include `Formlabs <https://formlabs.com/>`_,
`Shapeways <https://www.shapeways.com/>`_, `Xometry <https://www.xometry.com/>`_,
`Sculpteo <https://www.sculpteo.com/en/>`_ etc. Open Ephys has no affiliation with any of these companies by the way. To
manufacture with these companies, it is often required to upload an
`STL <https://github.com/open-ephys/onix-commutator/tree/master/mechanical/single_channel/stl>`_ or STEP file, but they
are starting now to accommodate other file types as well such as sldprt files.

.. Note:: In creating your own custom commutator, it is possible to change the gear ratio. You are only required to make
          one change in the `firmware <https://github.com/open-ephys/onix-commutator/tree/master/firmware/commutator>`_.
          which it to modify the GEAR_RATIO macro on line 22.

Electrical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Printed circuit boards (PCBs) are boards that electrically connect a set of electronic components to create functional circuits.
Those parts are soldered to the PCB to create mechanically stable and reliable operation. The commutator front panel
is an example of a PCB. Fortunately, PCBs are pretty cheap to fabricate nowadays. For instance,
you can get a 5-pack of PCBs from `JLCPCB <https://jlcpcb.com>`_ for less than $5. To fabricate a PCB, a manufacturer usually
requires that you upload `Gerber files <https://github.com/open-ephys/onix-commutator/tree/master/control-board/gerber>`_. For the commutator front panel,
these Gerber files can be found in the public Github repository or produced using ECAD (electrical computer-assisted drawing) files in ECAD software. E
ECAD software permits the design of a PCB. Open Ephys uses `KiCad <https://www.kicad.org/>`_ for this purpose.
There are other ECAD softwares available, but KiCad is strongly encouraged as it is open-source, extensible, undergoing constant
improvement, and most importantly easy-to-use. Teaching such software is beyond the scope of this guide, but you can find
`tutorials on KiCad's website <https://www.kicad.org/help/learning-resources/>`_ and elsewhere on the web.

For ordering the electronics parts that are mounted onto the PCB, `Digikey <https://www.digikey.com>`_, `Mouser <https://www.mouser.com>`_, and `Arrow <https://www.arrow.com>`_ are go-to vendors.
Open Ephys has no affiliation with any of these companies. Some parts may be out-of-stock in which case you are forced to
purchase from more than one distributor if you inflexible regarding component selection. `Octopart <https://www.octopart.com>`_ is
helpful for sorting through stock at various vendors and comparing prices. The electrical components for the commutator
PCB are mounted (and electrically connected) through solder joints. Soldering instructions are beyond the scope of this
developer guide but there are several `great guides on YouTube <https://www.youtube.com/results?search_query=how+to+solder+pcb>`_.
If you are soldering this yourself, use the designators on the PCB's silkscreen and the electrical components contained
in the BoM (also labelled with designators) to match exposed solder pads to electrical components. This is how you know
where to solder each component. You can also get them pre-assembled by PCB assemblers. JLCPCB for instance, fabricates
and assembles PCBs. For this you need to use an ECAD software to generate a properly formatted BoM and Pick n' Place
file.

Teensy and Programming an Open Ephys Commutator
**************************************************************

Commutator firmware can be uploaded to the device using the `Arduino IDE <https://www.arduino.cc/en/software>`__.

.. note:: You will need to add the `Teensyduino add-on <https://www.pjrc.com/teensy/teensyduino.html>`__ to the Arduino IDE to program
   the Teensy inside the commutator. When installing Teensyduino, you should opt to install the
   bundled libraries as well. This takes care of installing :code:`AccelStepper`
   library rather than having to install it manually. ArduinoJSON can be
   installed through the Arduino IDE's package manager.

It runs on a `Teensy 3.2 <https://www.pjrc.com/store/teensy32.html>`_. To compile this firmware and
program the microcontroller, the following dependencies are required:

- `Arduino IDE <https://www.arduino.cc/en/software>`_
- `Teensyduino add-on <https://www.pjrc.com/teensy/td_download.html>`__
- `AccelStepper <https://www.airspayce.com/mikem/arduino/AccelStepper/>`_
- `Arduino JSON <https://arduinojson.org/>`_

The Teensy is a microcontroller development board (much like the Arduino for those who are familiar). It is the brains
of the commutator. To directly  control the commutator via computer, it helps to learn to interface with the Teensy. To do that:

#. Download the `Arduino IDE <https://www.arduino.cc/en/software>`_
#. Install the Arduino IDE's Teensy plugin, `Teensyduino <https://www.pjrc.com/teensy/td_download.html>`_
#. Install relevant `Arduino libraries <https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-installing-a-library>`_: *AccelStepper* and *Arduino JSON*
#. Open the `Arduino IDE's serial monitor <https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-serial-monitor>`_
#. Set correct COM port to which the Teensy is connected and set the serial monitor baud rate to 9600
#. Send a command to the commutator according to the communication below.

The serial monitor displays messages between the commutator and the computer to which the commutator is connected. To send
RPCs to the commutator through the serial monitor, type in the Arduino IDE's Serial Monitor input field. The commutator's Teensy is pre-programmed to receive
specific RPCs in the JSON format. Refer to the :ref:`remote_control` page of the User Guide for more information on that. Other serial
monitors can be used (see `Termite <https://www.compuphase.com/software_termite.htm>`_ for instance), but these
instructions recommend the Arduino IDE because the Arduino IDE is already quite common in the open-source and science community.
It also allows the user to program the Teensy in a convenient way if that is desired. Commutator firmware can be modified to accept other RPCs or inputs.

This is the `firmware with which the commutator ships <https://github.com/open-ephys/onix-commutator/tree/master/firmware/commutator>`_.

Mechanical Assembly
**************************************************************

#. Gather the materials listed in the `BoM <bom>`__ for the coaxial commutator
#. Visually inspect to confirm that all the components on the PCB are properly soldered
#. Insert the SMA rotary joint and fasten it with three M2.5 screws 10mm long to the case
#. Insert the stepper motor and fasten it to the case with four M2.5 screws 6mm long
#. Connect the stepper motor to the 4-pin connector on the back of the commutator front panel
#. Fasten the commutator PCB to the case with four M2.5 screws 6mm long
#. Insert the gears onto the rotary joint rotor and motor rotor. Glue them in place such that the gears are properly
   meshed. Clamp to ensure the gears do not mis-align during the curing process.

.. toctree::
    :hidden:

