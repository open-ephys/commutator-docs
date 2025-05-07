.. _fwupdate:

Update Firmware
*************************

Here are the files and instructions to update Open Ephys Commutator firmware.

..  note:: 
    We always ship the commutators with the latest version of the firmware and we don't make 
    changes to the firmware often, so you will typically not need to update it.

Identify Your Commutator Controller Version
=============================================

The first step to update your firmware is to identify which microcontroller is in your commutator.
This determines which firmware file and instructions you need to update the firmware. The list of
microcontrollers contained by Open Ephys commutators is:

-   RP2040
-   Teensy LC
-   Teensy 3.2

..  image:: /_static/images/commutator-mcu-mermaid.png

.. mermaid diagram 
..
    flowchart LR
        A{"Does your commutator have USB-C?"}
        A -->|"Yes"| B(["RP2040"])
        A -->|"No"| C["Query your commutator with {print:true} command (instructions below)."]
        C --- D{"What does the commutator print?"}
        D -->|"lc"| E(["Teensy LC"])
        D -->|"3.2"| F(["Teensy 3.2"])

..  dropdown:: Query commutator with ``{print:true}`` command

    #.  Connect your commutator to USB and wait for the status LED to stop blinking red. This can take
        up to 30 seconds. Avoid using a USB hub so that the connection is reliable.

    #.  Open up your preferred serial monitor. If you don't have one, use the `Arduino IDE
        <https://www.arduino.cc/en/software/>`_ serial monitor.

        -   If you are using the Arduino IDE, go to Tools > Serial Monitor to open a serial connection
            to the commutator.

            .. image:: /_static/images/fw-update/4-serial-monitor.png

    #.  Type ``{print:true}`` into the serial monitor prompt and press Enter. This will provide information
        about the commutator's microcontroller firmware version.
        
        -   If you are using the Arduino IDE, this step looks like:

            .. image:: /_static/images/fw-update/5-print.png

.. _fwupdate_latest:

Latest firmware
================

Now that you know which microcontroller your commutator has, choose the pre-compiled firmware file
that corresponds to your commutator.

..  tab-set::

    ..  tab-item:: Teensy LC

        ..  rubric:: Teensy LC HEX files
            :heading-level: 4

        Coax commutator
            :download:`Firmware version 1.6 </_static/files/commutator.ino.SingleCoax.TeensyLC.v1.6.0.zip>` 

        .. SPI commutator
        ..     :download:`Firmware version 1.6 </_static/files/commutator.ino.SPI.TeensyLC.v1.6.0.zip>`
        .. Dual Commutator
        ..     :download:`Firmware version 1.6 </_static/files/commutator.ino.DualCoax.TeensyLC.v1.6.0.zip>`

    ..  tab-item:: Teensy 3.2

        ..  rubric:: Teensy 3.2 HEX files
            :heading-level: 4

        Coax commutator
            :download:`Firmware version 1.5 </_static/files/commutator.ino.SingleCoax.Teensy3.2.v1.5.1.zip>`     

        .. SPI commutator
        ..     :download:`Firmware version 1.5 </_static/files/commutator.ino.SPI.Teensy3.2.v1.5.1.zip>`
        .. Dual Commutator
        ..     :download:`Firmware version 1.5 </_static/files/commutator.ino.DualCoax.Teensy3.2.v1.5.1.zip>`

    .. tab-item:: RP2040

        ..  rubric:: RP2040 UF2 files
            :heading-level: 4

        Not available yet

Update Firmware
=======================================

..  tab-set::

    ..  tab-item:: Teensy

        #.  Download the HEX file that corresponds to your commutator.

        #.  Connect the commutator to your PC through USB. 

        #.  Download the `Teensy Loader <https://www.pjrc.com/teensy/loader.html>`_ and follow 
            instructions to open the Teensy Loader for your operating system.

        #.  Click the reset button on the commutator.

            ..  figure:: /_static/images/teensy-loader_reset-button-press.svg

                The Teensy Loader changes appearance after successfully completing this step.

        #.  Select the downloaded HEX file by clicking the first button in the upper-left corner of
            the Teensy Loader. 
        
            ..  figure:: /_static/images/teensy-loader_hex-file-select.svg

                Click the 1st button indicated in the left screenshot. The selected file is
                shown in the bottom status strip as indicated in the right screenshot after successfully
                completing this step 

        #.  Upload the HEX file to the Teensy by pressing the second button in the upper-left
            corner of the Teensy Loader.

            ..  figure:: /_static/images/teensy-loader_upload.svg

                Click the 2nd button indicated in the left screenshot. A "Download Complete" message
                appears as shown in the right screenshot after successfully completing this step.

        #.  Reboot the Teensy pressing the third button in the upper-left corner of the Teensy
            Loader.

            ..  figure:: /_static/images/teensy-loader_reboot.svg

                Click the 3rd button indicated in the left screenshot. A "Reboot OK" message
                appears as shown in the right screenshot after successfully completing this step.

            This can step can also be completed by disconnecting/reconnecting the commutator's USB
            though you won't get a "Reboot OK" message in the Teensy Loader.

    ..  tab-item:: RP2040

        #.  Download the UF2 file that corresponds to your commutator.

        #.  Connect your commutator to your PC through USB. 

        #.  Tap the reset button twice in quick succession. A virtual drive labeled :code:`RPI-RP2`
            should appear connected to your computer. 
        
        #.  Copy-and-paste the downloaded UF2 file from your PC to that drive.

        #.  When the copy process is completed, the virtual :code:`RPI-RP2` drive disconnects and
            your commutator controller reboots with the updated firmware.