.. _fwupdate:

Firmware Update
*************************

Here are the files and instructions to update the firmware of the Open Ephys Commutators

.. note:: We always ship the commutators with the latest version of the firmware and we don’t make changes to the firmware often, so you will typically not need to update it.

.. _fwupdate_latest:

Latest firmware versions
---------------------------

.. note:: The firmware version you need to use depends on the Teensy version you have.

.. table::
    :widths: 50 50

    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
    |        Commutator microcontroller type                |                             Commutator Firmware latest version                                              |
    |        as determined by the procedure below           |                                   to download and update                                                    |
    +=======================================================+=============================================================================================================+
    | Teensy LC                                             | :download:`Firmware version 1.6 </_static/files/commutator.ino.SingleCoax.TeensyLC.v1.6.0.zip>`             |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
    | Teensy 3.2                                            | :download:`Firmware version 1.5 </_static/files/commutator.ino.SingleCoax.Teensy3.2.v1.5.1.zip>`            |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+

.. _fwupdate_instructions:

Installing required software for firmware update
--------------------------------------------------------------------

#. Download and install the latest version of the `Arduino IDE <https://www.arduino.cc/en/software/>`_.

#. In the Arduino IDE, click File > Preferences. In the Settings tab, add ``https://www.pjrc.com/teensy/package_teensy_index.json`` to the Additional Board Manager URLs field. Click OK.

    .. image:: /_static/images/fw-update/1-additional-board.png

#. In the main Arduino IDE window, open the Boards Manager by clicking the left-side board icon, search for "teensy", and click Install. This will install another application, Teensyduino. 

    .. image:: /_static/images/fw-update/2-teensy-install.png

Determining current firmware version and microcontroller type
--------------------------------------------------------------------

#. Connect your commutator to USB and wait for the Status LED to stop blinking red. When it is connected, the commutator charges its internal battery, which can take up to 30 seconds. Avoid using a USB hub so that the connection is reliable.

#. Open the Arduino IDE.

#. Select the microcontroller from the Board dropdown menu.

    .. image:: /_static/images/fw-update/3-board-select.png

#. Go to Tools > Serial Monitor to open a serial connection to the commutator.

    .. image:: /_static/images/fw-update/4-serial-monitor.png

#. Type ``{print:}`` into the serial monitor prompt and press Enter. This will tell you the microcontroller type the commutator has and what firmware version is installed.

    .. image:: /_static/images/fw-update/5-print.png

Instructions to update the firmware in case you don't have the latest version
--------------------------------------------------------------------------------

#. If the firmware version is not the :ref:`latest version <fwupdate_latest>`, download the latest version for the microcontroller type in your commutator.

#. In the Arduino IDE, make sure the Teensy is selected as the Board. Click the checkmark on any sketch. 

    .. image:: /_static/images/fw-update/6-verify-sketch.png

#. You should see another window pop up: the Teensy Loader application.

    .. image:: /_static/images/fw-update/7-teensy-loader.png

#. In the Teensy Loader, go to File > Open HEX File. Select the hex file you downloaded earlier, and click OK.

    .. image:: /_static/images/fw-update/8-open-hex.png

#. Press the physical button on the side of the commutator to upload the firmware.

    .. image:: /_static/images/fw-update/9-button-press.png

Test that the firmware was updated and test your commutator works
--------------------------------------------------------------------------------

To test if the firmware was updated, in the Arduino IDE, go to Tools > Serial Monitor and type ``{print:}`` into the serial monitor prompt. Press Enter and you should see the version of the commutator now matches what you uploaded.

You can test your commutator works in Bonsai as explained in the :ref:`quick_start`, before moving on to using sensor data to drive it.