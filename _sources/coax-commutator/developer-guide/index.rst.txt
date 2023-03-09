
*************************************************
Developer Guide
*************************************************

Open Source Designs
*************************************************

The designs for the commutators are open-source. Accordingly, all of the files relevant to manufacturing the commutator are
available in this `public Open Ephys Github repo <https://github.com/open-ephys/onix-commutator>`_. The downloads are
also available below:

Bill of Materials (BoM)
*************************************************

This BoM contains links to specific vendors solely to calculate a total price. open ephys is not affiliated, and there
are other places to get these parts. This BoM was created using prices on March 2nd, 2023.

Prices depend on where you decide to manufacture these parts. More on that below.

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

.. TODO:: insert photo of teensy. unnecessary, but why not? Any other photos on this page?

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

Communication Protocol (JSON)
**************************************************************

The commutator communicates with a computer through the serial monitor using JavaScript Object Notation (JSON). For the
purpose of interfacing with the commutator, JSON is a human-readable notation used to specify a property and assign a value to
or read the value of that corresponding property. The notation is::

{property: value}

The commutator has five properties/commands:
*enable*, *led*, *speed*, *turn*, and *read*. The set of acceptable values depends on the property to which the value is being
assigned. This is how to use JSON to communicate with the commutator:

.. attention:: The commutator rejects JSON commands while manual controls are in use

JSON Commands
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. TODO:: reformat this

enable
###############
Acceptable values: *false*, *true*

*  A *true* value for this property enables the commutator
*  A *false* value for this property disables the commutator

The default out-of-the-box value for this property is *false*

led
###############
Acceptable values: *false*, *true*

* A *true* value for this property enables the LED function
* A *false* value for this property disables the LED function

The default out-of-the-box value for this property is *true*

speed
###############
Acceptable values: (*0*, *500*]

* The value for this property sets the rotational speed of the commutator in units of RPM

The default out-of-the-box value for this property is *50*

turn
###############
Acceptable values: [*-255?*, *255?*]

* The value for this property sets the rotational speed of the commutator in units of RPM

There is no default out-of-the-box value for this property

.. TODO:: what is the set of acceptable values?

print
###############
Acceptable values: n/a

* Leave the value field empty. The commutator prints out the internal state of the commutator to the user in the serial interface

There is no default out-of-the-box value for this property

Compound JSON Command
#################################################

Multiple commands can be sent in a compound JSON message in the following format::

{property1: value1, property2: value2, property3: value3}

The order of properties does not matter.

JSON Command Examples
**************************************************************

Enable the commutator::

{enable: true}

Disable the commutator's LED function::

{led: false}

Set the commutator's rotational speed to 250 RPM::

{speed: 250}

Turn the commutator's 1.1 revolutions CW::

{turn: 1.1}

Turn the commutator's 2.3 revolutions CCW::

{turn: -2.3}

Disable LED feedback function, set speed to 25 RPM, and turn the commutator 1.1 revolutions clockwise all in one message::

{led: false, speed: 25, turn: -1.1}

Query the status of the commutator's internal parameters::

{print:}

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