
*************************************************
User Guide
*************************************************

What’s Included?
*************************************************

#. Commutator
#. SMA to Hirose X.FL Headstage Tether

Mounting and Connecting the OEC
*************************************************

Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The OEC can be mounted to a standard 80/20 aluminum extrusion or a standard mechanical breadboard. For custom mounting
solutions, the dimensions of the mounting holes (1/4"-20 or M6) are indicated in the below schematic:

.. image:: ../_static/images/commutator-mounting-holes.png
    :alt: schematic image

.. TODO:: Add isometric view?

If the OEC is used for an animal behavior experiment, mount the OEC such that the animal can traverse the behavior arena's full area

Connecting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Establish all electrical connections:
    #. Secure the head-mount device to the OEC's bottom SMA connector
    #. Secure the data acquisition device (DAQ) to the OEC's top SMA connector
    #. Secure the computer to the OEC's side micro-USB connector

    .. image:: ../_static/images/connections.png
        :alt: image indicating location of connections

    .. Attention:: * All cables must be appropriate length and within-spec (More info in User Guide) TODO: Insert link
        * While establishing electrical connections, ensure cables are not within range to interfere with the tether when the animal moves. For example:

        .. image:: ../_static/images/cable-management.png
           :alt: image indicating location of connections

OEC Control Modalities
*************************************************

The user can directly control the OEC manually or through a computer's serial interface. The user can also transfer OEC
control to other software to automate the commutation process.

#. **Direct Manual Control:** The OEC's manual control interface allows the user to change the OEC's direction, enable/disable the OEC, and toggle LED functionality with buttons on the OEC enclosure
#. **Direct Computer Control:** The OEC's computer control interface allows the user to perform the same functions as above as well as change the speed of commutation and query the OEC's settings
#. **Indirect Computer Control:** The OEC's computer control interface allows the user to interface the OEC with software such as Bonsai to automate the commutation process. This can be used to relieve torsion exerted on a behaving animal by a twisted electrical or optical tether

The OEC's LED functionality informs the user of its status (charging, disabled, enabled).

The following sections detail the three OEC control modalities

Manual Control
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Stop/Go Button: enable/disable the OEC
    * **Disabled (red LED):** Motor halts instantly. Pressing direction buttons does nothing. All target turns provided via remote calls are cleared such that re-enabling the motor does not result in the OEC re-engaging an old target position. To re-enable the OEC, hold the Stop/Go button for > 0.5 second or send the appropriate remote command
    * **Enabled (green LED):** The motor can be turned via button presses or remote commands. Pressing the Stop/Go button instantly disables the device

.. code-block::

    Stop/go should be changed to enable/disable to be more intuitive; those buttons don't do what I thought they did by their label

* Direction Button (2x): Manually control the motor rotation in the direction indicated on each button when the OEC is\
    These inputs take precedence over and override ongoing remote motor control. When pressed, all target turns\
    provided via remote control will be cleared, such that releasing them will not result in the OEC re-engaging an
    old target position. Remote commands sent when a button is being pressed are ignored

* LED Button: pressing the LED toggles the LED function (for cases in which the LED presents unwanted visual stimulus)

Computer Control
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Teensy
--------------------------------------------------

The Teensy is a microcontroller development board (much like the Arduino for those who are familiar). It is the brains
of the OEC. To control the OEC via computer, it helps to learn to interface with the Teensy. To do that:

#. Download the `Arduino IDE <https://www.arduino.cc/en/software>`_
#. Install the Arduino IDE's Teensy plugin, `Teensyduino <https://www.pjrc.com/teensy/td_download.html>`_
#. Install relevant `Arduino libraries <https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-installing-a-library>`_: *AccelStepper* and *Arduino JSON*
#. Open the `Arduino IDE's serial monitor <https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-serial-monitor>`_
#. Set correct COM port to which the Teensy is connected and set the serial monitor baud rate to 9600
#. Send a command to the OEC according to the communication below.

The serial monitor displays messages between the OEC and the computer to which the OEC is connected. Other serial
monitors can be used (see `Termite <https://www.compuphase.com/software_termite.htm>`_ for instance), but these
instructions recommend the Arduino IDE because the Arduino IDE is already quite common and allows the user to conveniently
program the Teensy. Out-of-the-box, the Teensy is pre-programmed to receive messages from the user through serial
communication. To communicate with the OEC using the serial monitor, refer to the following communication protocol.

Communication Protocol (JSON)
--------------------------------------------------

The OEC communicates with a computer through the serial monitor using JavaScript Object Notation (JSON). For the
purpose of interfacing with the OEC, JSON is a human-readable notation used to specify a property and assign a value to
or read the value of that corresponding property. The notation is::

{property: value}

The OEC has five properties:
enable, led, speed, turn, and read. The set of acceptable values depends on the property to which the value is being
assigned. This is how to use JSON to communicate with the OEC:

.. attention:: The OEC only accepts JSON commands while buttons are not pressed


**enable**
...................................................
Acceptable values: [*false*, *true*]

*  A *true* value for this property enables the OEC
*  A *false* value for this property disables the OEC

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

* The value for this property sets the rotational speed of the OEC in units of RPM

The default out-of-the-box value for this property is *50*

**turn**
...................................................
Acceptable values: *-255?*, *255?*]

* The value for this property sets the rotational speed of the OEC in units of RPM

There is no default out-of-the-box value for this property

**print**
...................................................
Acceptable values: n/a

* Leave the value field empty. The OEC prints out the internal state of the OEC to the user in the serial interface

There is no default out-of-the-box value for this property

Multiple commands can be sent in one JSON message in the following format::

{property1: value1, property2: value2, property3: value3}

The order of properties does not matter in this case.

Communication Protocol Examples
--------------------------------------------------

Enable the OEC::

{enable: true}

Disable the OEC's LED function::

{led: false}

Set the OEC's rotational speed to 250 RPM::

{speed: 250}

Turn the OEC's 1.1 revolutions CW::

{turn: 1.1}

Turn the OEC's 2.3 revolutions CCW::

{turn: -2.3}

Disable LED function, set speed to 25 RPM, and turn the OEC 1.1 revolutions clockwise all in one message::

{led: false, speed: 25, turn: -1.1}

Read the status of the OEC's internal parameters::

{print:}

Bonsai Integration
--------------------------------------------------

`Bonsai <https://open-ephys.org/bonsai>`_ is open-source software for processing heterogeneous streams of data. It can
be used to coordinate orientation data (IMU or visual) to provide feedback to OEC and automate the commutation process.

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
