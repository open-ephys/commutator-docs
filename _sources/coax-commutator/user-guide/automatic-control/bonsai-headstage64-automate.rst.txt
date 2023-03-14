
****************************************************************
Automate Commutation with Bonsai and Headstage-64
****************************************************************

This section outlines how to use Bonsai software to automate commutation of the tether between a headstage-64 mounted on a freely moving animal and a stationary DAQ.

#. Mount the commutator and establish all electrical connections according to the information found in the :doc:`Mounting and Connecting <../mount-connect>` section of this user guide

#. Download and configure Bonsai:

   * `Download and Install Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_ if you haven't already
   * Open Bonsai and `install the Bonsai.StarterPack and Bonsai.Onix packages <https://bonsai-rx.org/docs/articles/packages.html>`_ if you haven't already

#. Download, configure, and run the .bonsai file (also known as a workflow) for automating commutation using orientation
   data from the headstage-64's on-board IMU sensor:

   .. raw:: html

            {% with static_path = '../../../_static', name = 'commutator-headstage64-automate' %}
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

#. Load data produced by the above workflow in Python or MATLAB:

   * Python: :download:`load_headstage64.py <../../../_static/downloads/load_headstage64.py>`
   * MATLAB: :download:`load_headstage64.m <../../../_static/downloads/load_headstage64.m>`
