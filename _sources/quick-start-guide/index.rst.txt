
*************************************************
Quick Start Guide
*************************************************

This quick start guide demonstrates how to automate tether commutation using Bonsai software

.. NOTE:: This quick start guide is designed to be used with the miniscope v4. To coordinate the OEC with other devices,
    please refer to the more detailed guides.

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
    #. Configure the PortName property of the Commutator node to reflect the port to which the commutator is connected

#. Run the commutator workflow in Bonsai:
    * Voila! If all above steps are correctly performed, the commutator motor now rotates when the headstage rotates

To learn more about how to use OECs or adapt them to your specific experiment, continue reading the documentation.
