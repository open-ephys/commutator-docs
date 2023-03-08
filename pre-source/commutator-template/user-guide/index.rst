
*************************************************
User Guide
*************************************************

What’s Included?
*************************************************

A. Ultra-Coax Commutator
B. SMA to BNC Coaxial Cable
C. SMA to Hirose X.FL Headstage Tether for ultra-coax tether?
D. R/A SMA to SMA tether for miniscope?
E. Mounting screws (probably not included)

.. TODO::
    * Are the above parts actually included? Am I missing any parts that are supposed to be shipped with the commutator
    * Add picture of items actually included

Mounting and Connecting the Commutator
*************************************************

Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The commutator can be mounted to a standard `1" 80/20 aluminum extrusion <https://8020.net/framing-options/t-slotted-profiles/fractional/10series100basedprofiles.html>`_ using `t-nuts <https://youtu.be/nK-DsJxAdwM>`_ or a standard mechanical breadboard.
For custom mounting solutions, the dimensions for the mounting holes (1/4"-20 or M6) are indicated in the below schematic:

.. image:: ../_static/images/commutator-mounting-holes.png
    :alt: schematic image
    :align: center

.. TODO:: Add isometric view to be more clear?

If the commutator is used for an animal behavior experiment, mount the commutator such that the animal can traverse the behavior setup's full area

Connecting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Establish all electrical connections:
    #. Secure the head-mount device to the commutator's bottom SMA connector
    #. Secure the data acquisition device (DAQ) to the commutator's top SMA connector
    #. Secure the computer to the commutator's side micro-USB connector

    .. image:: ../_static/images/connections.png
        :alt: image indicating location of connections
        :align: center

    .. Attention:: * All cables must be appropriate length and within-spec (More info in User Guide) TODO: Insert link
        * While establishing electrical connections, ensure cables are not within range to interfere with the tether when the animal moves. For example:

        .. image:: ../_static/images/cable-management.png
            :alt: image indicating location of connections
            :align: center

Commutator Control Modalities
*************************************************

The user can control the commutator manually or through a computer's serial interface.

* **Manual Control:** The commutator's manual control system allows the user to change the commutator's direction, enable/disable the commutator, and toggle LED functionality with buttons on the commutator enclosure
* **Computer Control:** The commutator's computer control system allows the user to perform the same functions as above as well as change the speed of commutation and query the commutator's settings user a serial communication interface. This also allows the user to interface the commutator with other software and hardware to automate the commutation process. This can be used to relieve torsion exerted on a behaving animal by a twisted electrical or optical tether

The following sections detail the two commutator control modalities

Manual Control
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Stop/Go Button: enable/disable the commutator

    * **Disabled (red LED):** Motor halts instantly. Pressing direction buttons does nothing. All target turns provided via remote calls are cleared such that re-enabling the motor does not result in the commutator re-engaging an old target position. To re-enable the commutator, hold the Stop/Go button for > 0.5 second or send the appropriate remote command
    * **Enabled (green LED):** The motor can be turned via button presses or remote commands. Pressing the Stop/Go button instantly disables the device

.. TODO:: Should stop/go change to enable/disable? those buttons don't do what I thought they did by their label

* Direction Button (2x): Manually control the motor rotation in the direction indicated on each button when the commutator is\

    These inputs take precedence over and override ongoing remote motor control. When pressed, all target turns\
    provided via remote control will be cleared, such that releasing them will not result in the commutator re-engaging an
    old target position. Remote commands sent when a button is being pressed are ignored

* LED Button: pressing the LED toggles the LED function (for cases in which the LED presents unwanted visual stimulus)

Computer Control
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Teensy
--------------------------------------------------

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
instructions recommend the Arduino IDE because the Arduino IDE is already quite common and allows the user to conveniently
program the Teensy. Out-of-the-box, the Teensy is pre-programmed to receive messages from the user through serial
communication. To communicate with the commutator using the serial monitor, refer to the following communication protocol.

Communication Protocol (JSON)
--------------------------------------------------

The commutator communicates with a computer through the serial monitor using JavaScript Object Notation (JSON). For the
purpose of interfacing with the commutator, JSON is a human-readable notation used to specify a property and assign a value to
or read the value of that corresponding property. The notation is::

{property: value}

The commutator has five properties:
enable, led, speed, turn, and read. The set of acceptable values depends on the property to which the value is being
assigned. This is how to use JSON to communicate with the commutator:

.. attention:: The commutator only accepts JSON commands while buttons are not pressed


**enable**
...................................................
Acceptable values: [*false*, *true*]

*  A *true* value for this property enables the commutator
*  A *false* value for this property disables the commutator

The default out-of-the-box value for this property is *false*

**led**
...................................................
Acceptable values: [*false*, *true*]

* A *true* value for this property enables the LED function
* A *false* value for this property disables the LED function

The default out-of-the-box value for this property is *true*

**speed**
...................................................
Acceptable values: (*0*, *500*]

* The value for this property sets the rotational speed of the commutator in units of RPM

The default out-of-the-box value for this property is *50*

**turn**
...................................................
Acceptable values: *-255?*, *255?*]

* The value for this property sets the rotational speed of the commutator in units of RPM

There is no default out-of-the-box value for this property

**print**
...................................................
Acceptable values: n/a

* Leave the value field empty. The commutator prints out the internal state of the commutator to the user in the serial interface

There is no default out-of-the-box value for this property

Multiple commands can be sent in one JSON message in the following format::

{property1: value1, property2: value2, property3: value3}

The order of properties does not matter in this case.

Communication Protocol Examples
--------------------------------------------------

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

Disable LED function, set speed to 25 RPM, and turn the commutator 1.1 revolutions clockwise all in one message::

{led: false, speed: 25, turn: -1.1}

Read the status of the commutator's internal parameters::

{print:}

Bonsai Integration
--------------------------------------------------

`Bonsai <https://open-ephys.org/bonsai>`_ is open-source software for processing heterogeneous streams of data. It can
be used to coordinate orientation data (IMU or visual) to provide feedback to commutator and automate the commutation process.

Download and configure Bonsai:
    #. `Download Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_
    #. `Install necessary packages <https://bonsai-rx.org/docs/articles/packages.html>`_: *Bonsai.StarterPack* and *Bonsai.Miniscope*. Set package source correctly to find the necessary Bonsai packages)
    #. Download and open the example commutator workflow in Bonsai
    #. Configure the PortName property of the Commutator node to reflect the port to which the commutator is connected

We have included example workflows for remote active compensation under each use case:
Usage with Miniscope DAQ
Remote control using Bonsai
https://open-ephys.github.io/onix-docs/Software%20Guide/Bonsai%20Examples/Commutator.html

To learn more about how to use Bonsai, explore the `bonsai-rx.org <https://bonsai-rx.org/>`_ website

Troubleshooting
*************************************************

This is a placeholder. Once common issues are known that can't fixed by elegantly addressing the solution in other parts
of the guide, we start filling out this section.
