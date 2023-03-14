
****************************************************************
How to Automate Commutation with Bonsai and Headstage-64
****************************************************************

This guide instructs how to use Bonsai software to automate commutation of the tether between a headstage-64 mounted on a freely moving animal and a stationary DAQ.

#. Mount the commutator and establish all electrical connections according to the information found in the :doc:`Mounting and Connecting <../mount-connect>` section of this user guide

#. Download and configure Bonsai:

   #. `Download and Install Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_ if you haven't already
   #. Open Bonsai and `install the Bonsai.StarterPack and Bonsai.Onix packages <https://bonsai-rx.org/docs/articles/packages.html>`_
   #. Download and open the .bonsai file (also known as workflow) for automating commutation using data from the headstage-64's on-board IMU sensor or external Lighthouse sensor

      .. raw:: html

            <div class="bonsai-workflow-container">
                <div class="workflow-filler"></div>
                <div class="workflow-download"><img class="copy-img" src="../../../_static/images/download.svg" onclick="getFileFromURL('../../../_static/downloads/commutator-headstage64-automate.bonsai')" width=18px download/></div>
                <div class="workflow-copy"><img class="copy-img" src="../../../_static/images/copy.svg" onclick="getTextFromURL('../../../_static/downloads/commutator-headstage64-automate.bonsai')" width=18px /></div>
                <div class="workflow-name"><b>commutator-headstage64-automate.bonsai</b></div>
                <div class="workflow-image"><img src="../../../_static/images/bonsai-headstage64-workflow.svg" /></div>
            </div>

   #. Configure the PortName property of the SerialWriteString node to reflect the port to which the commutator is connected by left-clicking the SerialWriteString node and modifying the PortName property

      .. TODO:: Finishing modifying this section for automating the headstage-64 commutation

      .. image:: ../../../_static/images/port.png
           :align: center

#. Run the workflow in Bonsai. If all above steps are correctly performed, the commutator motor rotates when the headstage-64 rotates

#. Load data produced by the above workflow in Python or MATLAB:

   * Python: :download:`load_headstage64.py <../../../_static/downloads/load_headstage64.py>`
   * MATLAB: :download:`load_headstage64.py <../../../_static/downloads/load_headstage64.py>`
