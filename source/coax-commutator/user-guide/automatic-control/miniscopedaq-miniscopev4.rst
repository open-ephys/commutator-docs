
Miniscope DAQ and UCLA Miniscope v4
**************************************************************

.. image:: ../../../_static/images/miniscopedaq-miniscopev4.jpg

There are two applications that can be used for automate commutation with the Miniscope DAQ and UCLA Miniscope v4.
They are :ref:`Bonsai` and :ref:`Miniscope-DAQ-QT-GUI`.

.. _Bonsai:

Bonsai
#######

This section outlines how to use Bonsai software to automate commutation of the
tether between a miniscope mounted on a freely moving animal and a stationary
DAQ.

#. Follow the :ref:`quick_start` to ensure you can control the commutator using Bonsai.

#. Install the **Bonsai.Miniscope** Package from Bonsai's package manager.

   - Select Community Feed

     .. image:: ../../../_static/images/bonsai-community-feed.png
        :alt: Screenshot for selecting package source

   - Install **Bonsai.Miniscope**

     .. image:: ../../../_static/images/install-bonsai-miniscope.png
        :alt: Screenshot for installing Bonsai.Miniscope

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

.. _Miniscope-DAQ-QT-GUI:

Miniscope-DAQ-QT-GUI
#################################

.. TODO:: document