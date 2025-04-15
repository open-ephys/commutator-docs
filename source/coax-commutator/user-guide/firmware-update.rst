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

1. Connect your commutator to USB and wait for the Status LED to stop blinking red. When it is connected, the commutator charges its internal battery, which can take up to 30 seconds. Avoid using a USB hub so that the connection is reliable.

#. Open the Arduino IDE.

#. Select the Teensy from the Board dropdown menu.

#. Go to Tools -> Serial Monitor to open a serial connection to the commutator

#. Type {print:} into the serial monitor prompt and press enter. This will tell you the microcontroller type in the commutator and the installed firmware version.

Instructions to update the firmware in case you don't have the latest version
--------------------------------------------------------------------------------

#. If the firmware version is not the latest, download the :ref:`fwupdate_latest` according to the microcontroller type 

#. In the Arduino IDE, make sure the Teensy is selected as the Board. Click verify on any sketch and you will see another window pop up, the Teensy Loader application.

#. In the Teensy Loader, go to File > Open HEX File. Select the hex file you downloaded earlier, and click OK.

#. Press the physical button on the side of the commutator to upload the firmware.

Test that the firmware update worked
--------------------------------------------------------------------------------

To test the upload, in the Arduino IDE, go to Tools -> Serial Monitor and type {print:} into the serial monitor prompt. Press enter and you should see the version of the commutator now matches what you uploaded.

You can test your commutator works in Bonsai like explained in the :ref:`quick_start`, before moving on to using sensor data to drive it.