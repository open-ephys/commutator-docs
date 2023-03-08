
******************************************************************
How to Automate Commutation with GUI and Miniscopev4
******************************************************************

This guide instructs how to use the EEG GUI software to automate commutation of the tether between a miniscopev4 mounted on a freely moving animal and a stationary DAQ.

.. TODO:: Finishing modifying this for automating the ephys headstage commutation with eeg gui

#. Mount the commutator and establish all electrical connections according to the information found in the :doc:`Mounting and Connecting <../mount-connect>` section of this user guide


#. Download and configure Bonsai:

    #. `Download and Install placeholder GUI <https://open-ephys.org/gui>`_ if you haven't already
    #. Open the GUI and `install the necessary plug-ins <https://bonsai-rx.org/docs/articles/packages.html>`_: *plug-in*
    #. Download and open the .bonsai file (also known as workflow) for automating commutation using data from the miniscopev4's on-board IMU sensor
    #. Configure stuff. Placeholder image below:

        .. image:: ../../../_static/images/port.png
           :align: center

#. Run the workflow in Bonsai

    * If all above steps are correctly performed, the commutator motor rotates when the headstage rotates