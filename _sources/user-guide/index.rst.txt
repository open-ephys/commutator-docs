.. _ref_FAQ:

*************************************************
User Guide
*************************************************

This user guide

.. glossary::

What’s Included?
#################################################

#. Commutator
#. SMA to Hirose X.FL Headstage Tether

OEC Overview
#################################################

Features include:

* Lightweight tether for minimal disturbance to the animal
* High bandwidth (18 GHz) tether for signal fidelity in the frequencies of interest
* Manual commutator control using integrated capacitive buttons
* Computer control using human-readable JSON commands
* Optical table & 80/20 rail mountable
* RGB LED status indicator (can be turned off)
* Silent and precise motor driver
* Modular - Compatible with computer vision systems or IMU systems (not sure if this a feature)
* USB Powered

OEC functions and benefits

OEC Parameters

Saving settings
Control and speed parameters, whether changed via the remote or manual interface, are saved in non-volatile memory
each time they are changed. The device will start in the same state it was last used even after losing power

LED Feedback

One major difference between manual control and computer control is manual control toggles a jog while computer control
sets the OEC to move by a specified amount.

Combined with Bonsai, the OEC can be used to automatically commutate the tether.

The following sections provide an overview of how the user interfaces with the OEC

Manual Control
*************************************************

* Stop/Go Button: toggle OEC enable/disable manually

    Disabled (red LED): Motor halts instantly. Pressing directional buttons incurs no reaction. All
    target turns provided via remote calls is cleared such that re-enabling the motor does not result in the OEC
    re-engaging an old target position. To re-enable the OEC, hold the Stop/Go button for > 0.5 second or send the
    appropriate remote command

    Enabled (green LED): The motor can be turned via button presses or RPCs. Pressing the Stop/Go button instantly disables the device


Stop/go should be changed to enable/disable to be more intuitive; those buttons don't do what I thought they did by their label
********************************************************************************************************************************

* Direction Button (2x): Manually control the motor rotation in the direction indicated on each button when the OEC is\
    Enabled. These inputs take precedence over and override ongoing remote motor control. When pressed, all target turns\
    provided via remote control will be cleared, such that releasing them will not result in the OEC re-engaging an
    old target position. Remote commands sent when a button is being pressed are ignored

* LED Button: pressing the LED toggles the LED function (for cases in which the LED presents unwanted visual stimulus)

Computer Control
*************************************************

The following sections describe how to interact with the OEC using a computer.

Teensy
--------------------------------------------------

The Teensy is a microcontroller development board (much like the Arduino for those who are familiar). It is the brains
of the OEC. To control the OEC via computer, the user must learn to interface with the Teensy. To do that:

#. Download the `Arduino IDE <https://www.arduino.cc/en/software>`_
#. Install the Arduino IDE's Teensy plugin, `Teensyduino <https://www.pjrc.com/teensy/td_download.html>`_
#. Open the `Arduino IDE's serial monitor <https://docs.arduino.cc/software/ide-v2/tutorials/ide-v2-serial-monitor>`_
#. Set the serial monitor baud rate to 115200?

The serial monitor  displays messages to and from the OEC and the computer to which the OEC is connected. Other serial
monitors can be used (see `Termite <https://www.compuphase.com/software_termite.htm>`_ for instance), but these
instructions recommend the Arduino IDE because the Arduino IDE is already quite common and allows the user to conveniently
program the Teensy. To communicate with the OEC using the serial monitor, refer to the following communication protocol.

Communication Protocol
--------------------------------------------------

The OEC communicates with a computer through the serial monitor using JavaScript Object Notation (JSON). For the
purpose of interfacing with the OEC, JSON is a human-readable notation used to specify a property of the OEC and assign
a value to that corresponding property. The notation is: {property, value}. The OEC has five properties: enable, led,
speed, turn, and read. The set of acceptable values depends on the property to which the value is being assigned.
This is how to use JSON to communicate with the OEC:

.. attention:: The OEC only accepts JSON commands only while buttons are not pressed

.. note:: was something else going to go here?

**enable**

Acceptable values: [*false*, *true*]

    *  A *true* value for this property enables the OEC
    *  A *false* value for this property disables the OEC

The default out-of-the-box value for this property is *false*

**led**

Acceptable values: [*false*, *true*]

    * A *true* value for this property enables the LED function
    * A *false* value for this property disables the LED function

The default out-of-the-box value for this property is *true*

**speed**

Acceptable values: (*0*, *500*]

    * The value for this property sets the rotational speed of the OEC in units of RPM

The default out-of-the-box value for this property is *50*

**turn**

Acceptable values: [*-255?*, *255?*]

    * The value for this property sets the rotational speed of the OEC in units of RPM

There is no default out-of-the-box value for this property

**print**

Acceptable values: n/a

    * Leave the value field empty. The OEC prints out the internal state of the OEC to the user in the serial interface

There is no default out-of-the-box value for this property

Multiple commands can be sent in one JSON message in the following format::

{property1, value1, property2, value2, property3, value3}

The order of properties does not matter in this case.

Examples
...................................................

Enable the OEC::

{enable : true}

Disable the OEC's LED function::

{led : false}

Set the OEC's rotational speed to 250 RPM::

{speed : 250}

Turn the OEC's 1.1 revolutions CW::

{turn : 1.1}

Turn the OEC's 2.3 revolutions CCW::

{turn : -2.3}

Disable LED function, set speed to 25 RPM, and turn the OEC 1.1 revolutions clockwise all in one message::

{led: false, speed: 25, turn : -1.1}

The status of the OEC can be read using the {print:} command which will return a JSON object containing
parameters.

Bonsai Integration
--------------------------------------------------

`Bonsai <https://open-ephys.org/bonsai>`_ is open-source software for processing heterogeneous streams of data. It can
be used to coordinate orientation data (IMU or visual) to provide feedback to OEC and automate the commutation process.

#. Download and install Bonsai
#. Install packages required for your experiment:

    * Bonsai.StarterPack
    * Bonsai.ONIX.Design (required only if using Onix)
    * Bonsai.Miniscope (required only if using miniscope)

#. Download example workflow (see below)
#. Open and run example workflow (see below)
#. Active compensation using Bonsai

We have included example workflows for remote active compensation under each use case:
Usage with Miniscope DAQ
Remote control using Bonsai
https://open-ephys.github.io/onix-docs/Software%20Guide/Bonsai%20Examples/Commutator.html

To learn more about how to use Bonsai, explore the `bonsai-rx.org <https://bonsai-rx.org/>`_ website




Troubleshooting
#################################################

Warranty/Return Policy
#################################################
