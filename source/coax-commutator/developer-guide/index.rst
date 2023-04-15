.. _dev_guide:

Developer Guide
-------------------------------------------------

.. attention:: This section provides informaiton on hacking a commutator or
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

Bill of Materials (BoM)
*************************************************

BoMs contain references to specific vendors solely to calculate a total price; Open Ephys is not affiliated with
any of them.

The BoM for the mechanical components is provided below.

.. TODO:: post mechanical BoM here. Also provide link to a a google sheet or a spreadsheet in a repo?

..
    .. csv-table:: Table Title
        :file: "./ONIX Commutator BOM - Mechanical.csv"
        :header-rows: 1

The BoM for the electrical components is provided below.

.. TODO:: post electrical BoM here. Also provide link to a a google sheet or a spreadsheet in a repo?

..
    .. csv-table:: Table Title
        :file: "./ONIX Commutator BOM - Electrical.csv"
        :header-rows: 1

Ordering and Manufacturing Parts
*************************************************

The following sections describe how to fabricate the parts that comprise the Coaxial Commutator

Mechanical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you desire low quantity, first seek out local options. Many universities or libraries offer free 3D printing
services. They don't always have SLS/MJF which is how the commutator enclosures are manufactured, but you might be able
to use a FDM/SLA 3D printing if necessary. The big difference is that you will probably be required to to add structural
supports that assist in the printing process. Post-processing the removal of the structural support can be time-demanding.
If you don't have access to a SLS/MJF printer and don't want to
deal with supports, there are many online manufacturers that will 3D print this for you. They cost more and often have a minimum
price to purchase (i.e. `3DHubs <hubs.com>`_ has a $90 minimum for those services at the time of writing this) which is not ideal if
you are trying to print a low quantity of pieces. Other popular ones include `Formlabs <formlabs.com>`_,
`Shapeways <shapeways.com>`_, `Xometry <xometry.com>`_, `Sculpteo <sculpteo.com>`_ etc. Open Ephys has no affiliation
with any of these companies. Usually to manufacture with the companies, it is required to upload an `STL <https://github.com/open-ephys/onix-commutator/tree/master/mechanical/single_channel/stl>`_ or STEP file,
but they are starting now to accommodate other file types as well such as sldprt files.

.. Note:: In creating your own custom commutator, it is possible to change the gear ratio while making minimal changes
   the commutator electronics and `firmware <https://github.com/open-ephys/onix-commutator/tree/master/firmware/commutator>`_.
   The only change that must be made is a modification of the GEAR_RATIO macro on line 22

Electrical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Printed circuit boards (PCBs) are boards that electrically connect a set of electronics components to create functional circuits.
Those parts are soldered to the PCB to create mechanically stable and reliable operation. The commutator front panel
is an example of a PCB. If you were to make a own commutator that utilizes a similar type front panel, you will likely
be required to purchase fabrication from another company. Thankfully, PCBs are pretty cheap to fabricate nowadays.
You no longer have to order in bulk to get them relatively cheap. For instance,
You can get a 5-pack of PCBs from `JLCPCB <jlcpcb.com>`_ for less than $5. To fabricate a PCB, a manufacturer usually
requires that you upload `Gerber files <https://github.com/open-ephys/onix-commutator/tree/master/control-board/gerber>`_.
To create a PCB (or modify the one used as the front panel of the Open Ephys Commutator), ECAD software such as `KiCad <https://www.kicad.org/>`_ is used.
There is other ECAD software available, but KiCad is strongly encouraged as it is open-source, extensible, undergoing constant
improvement, and most importantly easy-to-use. Gerbers can be produced in CAD software after the design is finalized.
Teaching such software is beyond the scope of this guide, but you can find
`tutorials on KiCad's website <https://www.kicad.org/help/learning-resources/>`_ and elsewhere on the web.

For ordering the electronics parts that are mounted onto the PCB, `Digikey <digikey.com>`_, `Mouser <mouser.com>`_, and `Arrow <arrow.com>`_ are go-to vendors.
Open Ephys has no affiliation with any of these companies. Some parts may be out-of-stock in which case you are forced to
purchase from more than one distributor if you inflexible regarding component selection. `Octopart <octopart.com>`_ is
helpful for sorting through stock at various vendors and comparing prices. The electrical components for the commutator
PCB are mounted (and electrically connected) through solder joints. Soldering instructions are beyond the scope of this
developer guide but there are several `great guides on YouTube <https://www.youtube.com/results?search_query=how+to+solder+pcb>`_.
You can also get them pre-assembled by PCB assemblers. Some PCB fabricators will also assemble the PCBs like JLCPCB.

Teensy and Programming an Open Ephys Commutator
**************************************************************

Commutator firmware can be uploaded to the device using the `Arduino IDE <https://www.arduino.cc/en/Main/Software>`__.

.. note:: You will need to add the `Teensyduino add-on <https://www.pjrc.com/teensy/teensyduino.html>`_ to the Arduino IDE to program
   the Teensy inside the commutator. When installing Teensyduino, you should opt to install the
   bundled libraries as well. This takes care of installing :code:`AccelStepper`
   library rather than having to install it manually. ArduinoJSON can be
   installed through the Arduino IDE's package manager.

It runs on a `Teensy 3.2 <https://www.pjrc.com/store/teensy32.html>`__. To compile this firmware and
program the microcontroller, the following dependencies are required:

- `Arduino IDE <https://www.arduino.cc/en/Main/Software>`__
- `Teensyduino add-on <https://www.pjrc.com/teensy/td_download.html>`__
- `AccelStepper <https://www.airspayce.com/mikem/arduino/AccelStepper/>`__
- `Arduino JSON <https://arduinojson.org/>`__

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
It also allows the user to program the Teensy in a convenient way if that is desired. Its firmware can be modified to accept other RPCs or inputs.

This is the `firmware with which the commutator ships <https://github.com/open-ephys/onix-commutator/tree/master/firmware/commutator>`_.

Mechanical Assembly
**************************************************************

After the PCB is finished being soldered, assembly is pretty straight forward. The stepper motor is inserted and fastened by
four M2.5 screws 6mm long. The SMA rotary joint is inserted and fastened by M2.5 screws 10mm long. The stepper motor connects to a
4-pin connector on the one of the commutator PCB's daughter boards. The commutator PCB is fastened to the enclosure with
#2-56 screws. The trickiest part is attaching the gears. They are glued to the motor and rotary joint rotors. Clamp
to ensure the gears do not mis-align during the curing process.

.. TODO:: are #2-56 actually the screws used for fastening PCB to enclosure? Metric equivalent? What glue is used?

Design Consideration
**************************************************************



.. toctree::
    :hidden:

