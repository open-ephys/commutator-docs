.. _fwupdate:

Firmware update
*************************

Here are the files and instructions to update the Teensy inside the Open Ephys Commutators

.. note:: We always ship the commutators with the latest version of the firmware and we don’t make changes to the firmware often, so you will typically not need to update it.

.. _fwupdate_latest:

Latest versions
-------------------------

.. note:: The firmware version you need to use depends on the Teensy version you have.

.. table::
    :widths: 50 50

    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
    |        Commutator microcontroller type                |                             Commutator Firmware latest version                                              |
    |        as determined by procedure below               |                                   to download and update                                                    |
    +=======================================================+=============================================================================================================+
    | Teensy LC                                             | :download:`Firmware version 1.6 </_static/files/commutator.ino.SingleCoax.TeensyLC.v1.6.0.zip>`             |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
    | Teensy 3.2                                            | :download:`Firmware version 1.5 </_static/files/commutator.ino.SingleCoax.Teensy3.2.v1.5.1.zip>`            |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+


.. _fwupdate_instructions:

Installing required software for firmware update
--------------------------------------------------------------------

1. Download and install the latest version of the Arduino IDE https://www.arduino.cc/en/software/

1. In the Arduino IDE, click File > Preferences and add https://www.pjrc.com/teensy/package_teensy_index.json to the Additional Board Manager URLs. Click "OK".

1. In the main Arduino IDE window, open the Boards Manager by clicking the left-side board icon, search for "teensy", and click "Install". This will install another application, Teensyduino. 

Determining current firmware version and microcontroller type
--------------------------------------------------------------------



Instructions to update the firmware in case you don't have the latest version
--------------------------------------------------------------------------------

#. 
