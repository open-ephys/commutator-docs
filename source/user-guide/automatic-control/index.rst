.. _automate-commutation:

Automate Commutation
*************************
The commutator's :ref:`remote control <remote_control>` enables the user
to interface the commutator with software to automate commutation during 
freely moving animal behavior experiments with minimal manual intervention.

.. image:: /_static/images/demo.gif
    :align: center

Using Orientation Data from a Headstage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This method requires a headstage or a miniscope that is capable of providing orientation data such as Open
Ephys headstages with BNO055 IMU orientation sensors.

.. raw:: html

    <div class="row row-cols-2 gx-1">
        <div class="card text-center page-card">
        <a href="https://open-ephys.github.io/bonsai-onix1-docs/articles/hardware/index.html">
            <div class="card-body">
                <h3>Commutate with ONIX <i class="fas fa-external-link"></i></h3>
                <img src="../../_static/images/breakout_1r5_beta.png"
                class="hover-zoom card-image-bottom" style="margin:0" alt="OpenEphys.Onix1 bonsai
                package documentation">
            </div>
        </a>
        </div>
        <div class="card text-center page-card">
        <a href="https://open-ephys.github.io/miniscope-docs/ucla-miniscope-v4/user/miniscope-daq/commutate/index.html">
            <div class="card-body">
                <h3>Commutate with Miniscope DAQ <i class="fas fa-external-link"></i></h3>
                <img src="../../_static/images/miniscopedaq.webp"
                class="hover-zoom card-image-bottom" style="margin:0" alt="OpenEphys.Miniscope bonsai
                package documentation">
            </div>
        </a>
        </div>
    </div>


Using Computer Vision
^^^^^^^^^^^^^^^^^^^^^^^

This method requires a computer with sufficient graphics processing capabilities
and training a network to track your animal. Follow the :ref:`computer_vision` guide

.. toctree::
    :hidden:

    computer-vision
