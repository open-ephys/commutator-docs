
.. _remote_control:

Remote Control
*************************************************************
The commutator communicates with a computer using `JavaScript Object Notation
(JSON) <https://en.wikipedia.org/wiki/JSON>`__ strings sent over the USB cable
using a (`virtual <https://en.wikipedia.org/wiki/Virtual_COM_port>`__) serial
port connection. This allows it to be controlled from any software or
script capable of writing data to a serial port. Virtually every programming
language will have a library for doing this (e.g. the `pySerial
<https://pyserial.readthedocs.io/en/latest/pyserial.html>`__ Python library).
Additionally, many software (e.g. Arduino IDE) provide a serial monitor to 
read from and write to a serial port without any programming.

..  attention:: 
    :ref:`Manual control <manual_control>` takes precedence over
    remote commands. The commutator will dispose all JSON commands that are
    received while manual controls are in use.

All JSON commands must be appended by a LF character. If multiple valid JSONs are received before
receiving a LF character, only the first one will be processed when a LF character is finally received. 

..  note::
    Commutators with the Micro-USB connector do not need the LF character but can 
    operate with it.

JSON Commands
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

JSON is a human-readable data format for assigning values to or reading values from
properties. The notation is::

{property: value}

The commutator responds to six JSON properties: `enable`, `led`, `turn`, and `print`. The set of
acceptable values depends on the property to which the value is being assigned. Each of these
properties is documented here:

{enable: *bool*}     
    A boolean value to enable or disable the commutator. 

    - *true*: enable the commutator. 
    - *false* (default): disable the commutator

    For example, to enable the commutator:

    .. code-block::

        {enable: true} 

{led: *bool*}     
    A boolean value to enable or disable the :ref:`status LED <status_led>`.

    - *true* (default): Turn on the status LED
    - *false*: Turn off the status LED.

    For example, to turn the status LED off:

    .. code-block::

        {led: false} 

{turn: *float*}
    A floating point value indicating the number of turns to perform. The sign
    indicates the direction of motion. Turn commands are integrated. For
    instance, if a second turn command is received before the first completes,
    the final position of the commutator will be the sum of both commands. For
    example, to turn the commutator clockwise (from some perspective) 1.1
    turns:

    .. code-block::

        {turn: 1.1}

    To turn it back counterclockwise (from the same perspective) by 0.5 turns:

    .. code-block::

        {turn: -0.5}

{print: *null*}
    Return a JSON string containing parameters and motor operational state. For
    example:

    .. code-block::

        {print: null}

    returns something like

    .. code-block::
    
        {"gear_ratio": 2.0, "board_rev": G, "firmware": "0.1.0", "enable": true, "led": false,
        "charge_current": 0.1534, "power_good": true}

    though the exact output depends on the commutator version and its current working status.

.. note:: **Micro-USB version only**

    {speed: *float*}     
        A floating point value in the range (*0*, *1000*] to set the maximum
        rotation speed in RPM. The default value is 100 RPM. For example, to set
        the maximal rotation speed to 6.28319 RPM:

        .. code-block::

            {speed: 6.28319}

    {accel: *float*}     
        A floating point value in the range (*0*, *1000*] to set the maximum
        rotational acceleration in RPMM. The default value is 200 RPMM. For
        example, to set the rotational acceleration to 6.28319 RPMM:

        .. code-block::

            {accel: 6.28319}

    The enabled state, LED state, motor speed, and motor acceleration settings,
    whether changed via the remote or manual interface, are saved automatically in
    non-volatile memory each time they are changed. The device will start in the
    same state it was last used.

Compound JSON commands
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Multiple commands can be sent in a compound JSON message in the following format::

{property1: value1, property2: value2, property3: value3}

The order of properties does not matter. For instance::

{led: false, enable: true, turn : -1.1}

will turn the LED off, enable the commutator, and tell the commutator
to turn 1.1 rotations CCW. The order that these events happen in hardware
is dictated by the firmware.

