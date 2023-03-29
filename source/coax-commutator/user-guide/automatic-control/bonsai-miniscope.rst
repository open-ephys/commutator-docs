
Automate Commutation with Bonsai and UCLA Miniscope v4
**************************************************************
This section outlines how to use Bonsai software to automate commutation of the
tether between a miniscope mounted on a freely moving animal and a stationary
DAQ.

#. Follow the :ref:`quick_start` to ensure you can control the commutator using Bonsai.

#. Install the **Bonsai.Miniscope** Package from Bonsai's package manager.

   - Select Community Feed

     .. todo:: Image

   - Install **Bonsai.Miniscope**

     .. todo:: Image

#. Mount the commutator and establish all electrical connections according to
   the information found in the :ref:`mounting`.

#. Download, configure, and run the following Bonsai workflow for automating commutation using orientation
   data from the miniscope’s on-board IMU sensor:

   .. raw:: html

            {% with static_path = '../../../_static', name = 'commutator-miniscopev4-automate' %}
                {% include 'workflow.html' %}
            {% endwith %}

   .. note:: Be sure to Configure the **PortName** property of the
      **Commutator** node to reflect the port to which the commutator is
      connected.

#. Run the workflow in Bonsai. If all above steps are correctly performed, the
   commutator will follow miniscope rotations
