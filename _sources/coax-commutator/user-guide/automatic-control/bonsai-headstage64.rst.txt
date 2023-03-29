
Automate Commutation with Bonsai and Headstage-64
****************************************************************
This section outlines how to use Bonsai software to automate commutation of the
tether between a headstage-64 mounted on a freely moving animal and a
stationary DAQ.

#. Follow the :ref:`quick_start` to ensure you can control the commutator using Bonsai.

#. Install the **Bonsai.ONIX** Package from Bonsai's package manager.

   - Select Community Feed

     .. todo:: Image

   - Install **Bonsai.ONIX**

     .. todo:: Image

#. Download, configure, and run the following Bonsai workflow for automating commutation using orientation
   data from the headstages’s on-board IMU sensor:

   .. raw:: html

            {% with static_path = '../../../_static', name = 'commutator-headstage64-automate' %}
                {% include 'workflow.html' %}
            {% endwith %}

   .. note:: Be sure to Configure the **PortName** property of the
      **Commutator** node to reflect the port to which the commutator is
      connected.

#. Run the workflow in Bonsai. If all above steps are correctly performed, the commutator will follow headstage rotations

#. Load data produced by the above workflow in Python or MATLAB:

   * Python: :download:`load_headstage64.py <../../../_static/downloads/load_headstage64.py>`
   * MATLAB: :download:`load_headstage64.m <../../../_static/downloads/load_headstage64.m>`
