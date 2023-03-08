
******************************************************************
How to Automate Commutation with EEG GUI and Ephys Headstage
******************************************************************

This guide instructs how to use the EEG GUI software to automate commutation of the tether between an ephys head stage mounted on a freely moving animal and a stationary DAQ.

.. TODO:: Finishing modifying this for automating the ephys headstage commutation with eeg gui

#. Mount the commutator and establish all electrical connections according to the information found in the :doc:`Mounting and Connecting <../mount-connect>` section of this user guide


#. Download and configure Bonsai:

    #. `Download Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_
    #. Open Bonsai and `install the necessary package <https://bonsai-rx.org/docs/articles/packages.html>`_: *Bonsai.StarterPack*
    #. Download and open the .bonsai file (also known as workflow) for controlling the commutator using key presses

        .. raw:: html

            <div class="bonsai-workflow-container">
                <div class="workflow-filler"></div>
                <div class="workflow-download"><img class="copy-img" src="../../../_static/images/download.svg" onclick="getFileFromURL('../../../_static/downloads/commutator-key-press-control.bonsai')" width=18px download/></div>
                <div class="workflow-copy"><img class="copy-img" src="../../../_static/images/copy.svg" onclick="getTextFromURL('../../../_static/downloads/commutator-key-press-control.bonsai')" width=18px /></div>
                <div class="workflow-name"><b>commutator‑key‑press‑control.bonsai</b></div>
                <div class="workflow-image"><img src="../../../_static/images/bonsai-workflow.png" /></div>
            </div>

    #. Configure the *PortName* property of the *SerialWriteString* node to reflect the port to which the commutator is connected by left-clicking the *SerialWriteString* node and modifying the *PortName* property

        .. image:: ../../../_static/images/port.png
           :align: center

#. Run the workflow in Bonsai

    * If all above steps are correctly performed, the commutator motor rotates when the headstage rotates