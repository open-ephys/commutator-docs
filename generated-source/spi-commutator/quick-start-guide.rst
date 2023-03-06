
*************************************************
Quick Start Guide
*************************************************

This quick start guide demonstrates how to perform commutation using key presses and Bonsai software.

#. Mount the OEC above the behavioral setup such that the animal can traverse the setup's full area
    * The OEC can be mounted to 80/20 aluminum extrusion or mechanical breadboard with 1/4"-20 or M6 screws
    * If custom mounting solutions are required, refer to the user guide for OEC dimensions

#. Establish all electrical connections:
    #. Secure the head-mount device to the OEC's bottom SMA connector
    #. Secure the data acquisition device (DAQ) to the OEC's top SMA connector
    #. Secure the computer to the OEC's side micro-USB connector

    .. image:: ../_static/images/connections.png
        :alt: image indicating location of connections

    .. Attention:: * All cables must be appropriate length and within-spec (More info in User Guide) TODO: Insert link
        * While establishing electrical connections, ensure cables are not within range to interfere with the tether when the animal moves. For example:

        .. image:: ../_static/images/cable-management.png
           :alt: image indicating location of connections

#. Download and configure Bonsai:
    #. `Download Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_
    #. `Install necessary packages <https://bonsai-rx.org/docs/articles/packages.html>`_: *Bonsai.StarterPack* and *Bonsai.Miniscope*. Set package source correctly to find the necessary Bonsai packages)
    #. Download and open the example commutator workflow in Bonsai
        .. raw:: html

            <div class="bonsai-workflow-container">
                <div class="workflow-filler"></div>
                <div class="workflow-download"><img class="copy-img" src="../_static/images/download.svg" onclick="getFileFromURL('../_static/downloads/commutator-key-press-control.bonsai')" width=18px download/></div>
                <div class="workflow-copy"><img class="copy-img" src="../_static/images/copy.svg" onclick="getTextFromURL('../_static/downloads/commutator-key-press-control.bonsai')" width=18px /></div>
                <div class="workflow-name"><b>commutator-key-press-control.bonsai</b></div>
                <div class="workflow-image"><img src="../_static/images/bonsai-workflow.png" /></div>
            </div>

    #. Configure the PortName property of the Commutator node to reflect the port to which the commutator is connected by left-clicking the *SerialWriteString* node
        .. image:: ../_static/images/port.png

#. Run the commutator workflow in Bonsai:
    * Voila! If all above steps are correctly performed, the commutator motor now rotates when the keys are pressed. Angular displacement can be controlled by left-clicking the *String* node

To learn more about how to use OECs or adapt them to your specific experiment, continue reading the documentation.

.. TODO::
    * Bonsai screenshots
    * Connections images for commutators (fix labels?)
    * how to use with 80/20?