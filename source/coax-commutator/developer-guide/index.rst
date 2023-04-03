
.. _dev_guide:

Developer Guide
-------------------------------------------------

.. todo:: This section is a work in progress.

Design Files
*************************************************
Open Ephys commutators are open-source. Mechanical, electrical, and firmware
desings are available are available in ONIX-Commutator git repo. Below we
provide an explaination of the repository structure and some helpful tips if
you plan to make a commutator yourself or want to extend its functionality.

Bill of Materials (BOM)
*************************************************
This BOM for the mechanical and electrical components are provided below. This
BOM contains links to specific vendors solely to calculate a total price. The
BOM cost may vary. This BOM was created using prices on March 2nd, 2023.

..
    .. csv-table:: Table Title
        :file: "./ONIX Commutator BOM - Mechanical.csv"
        :header-rows: 1

DIY
*************************************************

The following sections describes design considerations

Mechanical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


Electrical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Computational
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Manufacturing
*************************************************

The following sections describe how to manufacture the parts that are custom

This should probably be on its own page so that we can refer people to it from multiple products' documentations instead
of each products' documentation containing its own manufacturing tips

Mechanical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you desire low quantity, first seek out local options. Many universities or libraries offer free 3D printing
services. They don't always have SLS/MJF like which is how the commutator enclosures were manufactured, but you can probably design a
new enclosure that makes use of FDM or SLA 3D printing if necessary. The biggest difference is that you will need to design
supports to assist in the printing process in an MCAD software such as Solidworks, Fusion360, or FreeCAD. If you don't have access to a SLS/MJF printer and don't want to design other
enclosures, there are many online manufacturers that will 3D print this for you. They cost more and often have a minimum
price to purchase (i.e. 3DHubs has a $90 minimum for those services at the time of writing this) which is not ideal if
you are trying to print a low quantity of pieces. Other popular ones include Formlabs, etc. etc.

Electrical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

PCBs are pretty cheap. You no longer have to order in bulk to get them relatively cheap. For instance,
You can get a 5-pack of PCBs from JLCPCB for less than $10.

General Tips
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you foresee being able to use multiple of these pieces, you benefit from ordering many for a cheaper price per piece.
If you do not foresee that, you can still benefit from economies of scale while saving yourself (or a poor overworked
undergrad/lab manager) from the labor of purchasing and assembling several parts from several vendors as well as the
dread of lead times by purchasing from us. And you get to support `open ephys <https://open-ephys.org/about-us-overview>`_ :D



Teensy
**************************************************************

Firmware
-------------------------------------

- `Arduino IDE <https://www.arduino.cc/en/Main/Software>`__
- `Teensyduino add-on <https://www.pjrc.com/teensy/td_download.html>`__
- `AccelStepper <https://www.airspayce.com/mikem/arduino/AccelStepper/>`__
- `Arduino JSON <https://arduinojson.org/>`__

The firmware can be uploaded to the device using the `Arduino
IDE <https://www.arduino.cc/en/Main/Software>`__. 

.. note:: You will need to add the `Teensyduino add-on
   <https://www.pjrc.com/teensy/teensyduino.html>`__ to the Arduino IDE to program
   the Teensy. When installing Teensyduino, you should opt to install all of the
   bundled libraries as well. This takes care of installing :code:`AccelStepper`
   library rather than having to install it manually. ArduinoJSON can be
   installed through the Arduino IDE's package manager.

.. TODO:: insert photo of teensy. unnecessary, but why not? Any other photos on this page?

The controller firmware runs on a `Teensy
3.2 <https://www.pjrc.com/store/teensy32.html>`__. To compile this firmware and
program the microcontroller, you need the following dependencies:
The Teensy is a microcontroller development board (much like the Arduino for those who are familiar). It is the brains
of the commutator. To control the commutator via computer, it helps to learn to interface with the Teensy. To do that:

#. Download the `Arduino IDE <https://www.arduino.cc/en/software>`_
#. Install the Arduino IDE's Teensy plugin, `Teensyduino <https://www.pjrc.com/teensy/td_download.html>`_
#. Install relevant `Arduino libraries <https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-installing-a-library>`_: *AccelStepper* and *Arduino JSON*
#. Open the `Arduino IDE's serial monitor <https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-serial-monitor>`_
#. Set correct COM port to which the Teensy is connected and set the serial monitor baud rate to 9600
#. Send a command to the commutator according to the communication below.

The serial monitor displays messages between the commutator and the computer to which the commutator is connected. Other serial
monitors can be used (see `Termite <https://www.compuphase.com/software_termite.htm>`_ for instance), but these
instructions recommend the Arduino IDE because the Arduino IDE is already quite common and allows the user to program
the Teensy in a convenient way if that is desired. Out-of-the-box, the commutator's Teensy is pre-programmed to receive
messages from the user through serial communication. To communicate with the commutator using the serial monitor, refer
to the following communication protocol.

Bonsai Integration
**************************************************************

`Bonsai <https://open-ephys.org/bonsai>`_ is open-source software for processing asynchronous, heterogeneous streams of
data. In our case, it can be used to coordinate orientation data (from an IMU sensor or camera sensor for instance) to
provide feedback to commutator and automate the commutation process. To learn more about how to use Bonsai, explore the
`bonsai-rx.org <https://bonsai-rx.org/>`_ website. It's recommended because it's quite nice and compatible with many
open ephys products. It is used in many of the following guides for controlling and automating the commutator.

Assembly
*************************************************

.. toctree::
    :hidden:

    mechanical
