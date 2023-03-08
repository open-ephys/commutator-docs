
**************************************************************
How to Automate Commutation with Bonsai and Miniscope
**************************************************************

This guide instructs how to use Bonsai software to automate commutation of the tether between a miniscope mounted on a freely moving animal and a stationary DAQ.

#. Mount the commutator and establish all electrical connections according to the information found in the :doc:`Mounting and Connecting <../mount-connect>` section of this user guide

#. Download and configure Bonsai:

    #. `Download and Install Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_ if you haven't already
    #. Open Bonsai and `install the necessary package <https://bonsai-rx.org/docs/articles/packages.html>`_: *Bonsai.StarterPack* and *Bonsai.Miniscope*
    #. Download and open the .bonsai file (also known as workflow) for automating commutation using data from the miniscope’s on-board IMU sensor

        .. raw:: html

            <div class="bonsai-workflow-container">
                <div class="workflow-filler"></div>
                <div class="workflow-download"><img class="copy-img" src="../../../_static/images/download.svg" onclick="getFileFromURL('../../../_static/downloads/commutator-miniscopev4.bonsai')" width=18px download/></div>
                <div class="workflow-copy"><img class="copy-img" src="../../../_static/images/copy.svg" onclick="getTextFromURL('../../../_static/downloads/commutator-miniscopev4.bonsai')" width=18px /></div>
                <div class="workflow-name"><b>commutator‑key‑press‑control.bonsai</b></div>
                <div class="workflow-image"><img src="../../../_static/images/bonsai-miniscopev4.svg" /></div>
            </div>

    #. Configure stuff. Placeholder image below:

        .. TODO:: Finishing modifying this section for automating the miniscope commutation

        .. image:: ../../../_static/images/port.png
           :align: center

#. Run the workflow in Bonsai

    * If all above steps are correctly performed, the commutator motor rotates when the miniscope rotates
