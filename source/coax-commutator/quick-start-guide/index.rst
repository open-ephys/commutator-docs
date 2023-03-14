
*************************************************
Quick Start Guide
*************************************************

.. NOTE:: For instructions on how to interface the commutator with orientation data from other
          hardware (such as `UCLA miniscope headstage <https://open-ephys.org/miniscope-v4/miniscope-v4>`_ and
          `headstage-64 <https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/headstage-64/index.html>`_) to automate
          the commutation process, please refer to the :doc:`Automatic Control<../user-guide/automatic-control/index>` sections of
          the more in-depth :doc:`User Guide<../user-guide/index>`

This guide instructs how to perform commutation using Bonsai software and presses of the left/right arrows on the keyboard.
It is useful for remotely controlling the commutator and verifying its core functionality.

#. Connect a computer to the commutator via the commutator's micro-USB connector to establish power and serial
   communication between the commutator and the computer (only the interconnect numbered 1 in the following figure is
   necessary for this quick start guide):

   .. image:: /_static/images/connections-numbered.png

#. Position the commutator such that gears can freely rotate

#. Download and configure Bonsai:

   * `Download and Install Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_ if you haven't already
   * Open Bonsai and `install the Bonsai.StarterPack package <https://bonsai-rx.org/docs/articles/packages.html>`_ if you haven't already

#. Download, configure and run the .bonsai file (also known as a workflow) for controlling the commutator using key presses:

   .. raw:: html

            {% with static_path = '../../_static', name = 'commutator-keypress-control' %}
                {% include 'workflow.html' %}
            {% endwith %}

   * Configure the *PortName* property of the *SerialWriteString* node to reflect the port to which the commutator is
     connected.

     * The process to determine to which port the commutator is connected depends on the operating system:

       * On Windows, `open Device Manager <https://support.microsoft.com/en-us/windows/open-device-manager-a7f2db46-faaf-24f0-8b7b-9e4a6032fc8c>`_
         and expand the *Ports* directory. The correct port is indicated by the *Teensy USB Serial* entry as seen as in the below example screenshot.
         In the example, the correct port is *COM5*

         .. image:: /_static/images/teensy-device-manager.jpg

       * On Linux, run ``ls /dev/tty*`` in the root directory and note the port name */dev/ttyUSB\** with

     * Left-click the *SerialWriteString* node (highlighted below) and modify the *PortName* property (highlighted below)
       to the value found in the previous step

       .. image:: /_static/images/bonsai-keypress-comport.png

#. Run the workflow in Bonsai

   * Voila! If all above steps are correctly performed, the commutator motor rotates when the left and right arrow keys are pressed
   * Angular displacement per key-press can be adjusted by left-clicking the *String* nodes and modifying the *Value* property when the workflow is not running
