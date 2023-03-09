
*************************************************
Quick Start Guide
*************************************************

.. NOTE:: For instructions on other ways to use the commutator, please refer to the :doc:`Commutator Control<../user-guide/manual-control>` sections of the more in-depth :doc:`User Guide<../user-guide/index>`

This guide instructs how to perform commutation using Bonsai software and presses of the up/down arrows on the keyboard.

#. Connect a computer to the commutator via the commutator's micro-USB connector to establish power and serial
   communication between the commutator and the computer

#. Position the commutator such that gears can freely rotate

#. Download and configure Bonsai to serve as a UI to perform commutation with key presses:

   #. `Download and Install Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_ if you haven't already
   #. Open Bonsai and `install the Bonsai.StarterPack package <https://bonsai-rx.org/docs/articles/packages.html>`_:
   #. Download and open the .bonsai file (also known as workflow) for controlling the commutator using key presses

      .. raw:: html

            <div class="bonsai-workflow-container">
                <div class="workflow-filler"></div>
                <div class="workflow-download"><img class="copy-img" src="../../_static/images/download.svg" onclick="getFileFromURL('../../_static/downloads/commutator-keypress-control.bonsai')" width=18px download/></div>
                <div class="workflow-copy"><img class="copy-img" src="../../_static/images/copy.svg" onclick="getTextFromURL('../../_static/downloads/commutator-keypress-control.bonsai')" width=18px /></div>
                <div class="workflow-name"><b>commutator‑keypress‑control.bonsai</b></div>
                <div class="workflow-image"><img src="../../_static/images/bonsai-keypress-workflow.png" /></div>
            </div>

   #. Configure the *PortName* property of the *SerialWriteString* node to reflect the port to which the commutator is connected

      #. The process to determine to which port the commutator is connected depends on the operating system:

         * On Windows, `open Device Manager <https://support.microsoft.com/en-us/windows/open-device-manager-a7f2db46-faaf-24f0-8b7b-9e4a6032fc8c>`_ and expand the *Ports* directory. The correct port is attached to the *Teensy USB Serial* ID indicated in the below screenshot

           .. TODO:: make photo for more recent version of Windows?

           .. image:: ../../_static/images/teensy-device-manager.jpg

         * On Linux,

           .. TODO:: figure out how to do this on Linux... and Mac? GIFify the process outlined below

      #. Left-click the *SerialWriteString* node and modify the *PortName* property to value found in the previous step

         .. image:: ../../_static/images/port.png

#. Run the workflow in Bonsai

   * Voila! If all above steps are correctly performed, the commutator motor rotates when the up and down arrow keys are pressed
   * Angular displacement per key-press can be adjusted by left-clicking the *String* nodes and modifying the *Value* property when the workflow is not running