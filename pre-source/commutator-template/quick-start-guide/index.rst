
*************************************************
Quick Start Guide
*************************************************

This quick start guide demonstrates how to perform commutation using key presses and Bonsai software.

#. Position the commutator such that gears can freely rotate

#. Connect a computer to the commutator via the commutator's micro-USB connector

#. Download and configure Bonsai:

    #. `Download Bonsai <https://bonsai-rx.org/docs/articles/installation.html>`_
    #. Open Bonsai and `install the necessary package <https://bonsai-rx.org/docs/articles/packages.html>`_: *Bonsai.StarterPack*
    #. Download the .bonsai file (also known as workflow) for controlling the commutator using key presses

        .. raw:: html

            <div class="bonsai-workflow-container">
                <div class="workflow-filler"></div>
                <div class="workflow-download"><img class="copy-img" src="../_static/images/download.svg" onclick="getFileFromURL('../_static/downloads/commutator-key-press-control.bonsai')" width=18px download/></div>
                <div class="workflow-copy"><img class="copy-img" src="../_static/images/copy.svg" onclick="getTextFromURL('../_static/downloads/commutator-key-press-control.bonsai')" width=18px /></div>
                <div class="workflow-name"><b>commutator‑key‑press‑control.bonsai</b></div>
                <div class="workflow-image"><img src="../_static/images/bonsai-workflow.png" /></div>
            </div>

    #. Configure the *PortName* property of the *SerialWriteString* node to reflect the port to which the commutator is connected by left-clicking the *SerialWriteString* node and modifying the *PortName* property

        .. image:: ../_static/images/port.png
           :align: center

#. Run the commutator workflow in Bonsai. If all above steps are correctly performed, the commutator motor rotates when the up and down arrow keys are pressed. Angular displacement can be adjusted by left-clicking the *String* node and modifying the *Value* property.

To learn more about how to use commutators or adapt them to your specific experiment, continue reading the documentation.

.. TODO::
    What do you think of making the quick-start guide hardware-agnostic?
        * Pros:
            * blah
        * Cons:
            * blah