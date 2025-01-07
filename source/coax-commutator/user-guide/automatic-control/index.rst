Automate Commutation
*************************
The commutator's :ref:`remote control <remote_control>` enables the user
to interface the commutator with software to automate commutation during 
freely moving animal behavior experiments with minimal manual intervention.

.. image:: ../../../_static/images/demo.gif
    :align: center

Our docs demonstrate two ways to automate commutation:


#.  Using orientation data from a headstage. This requires a headstage or a miniscope that is
    capable of providing orientation data such as Open Ephys headstages with BNO055 IMU sensors.

    .. raw:: html

        <div class="row row-cols-2 gx-1">
            <div class="card text-center page-card">
            <a href="https://open-ephys.github.io/bonsai-onix1-docs/articles/hardware/index.html">
                <div class="card-body">
                    <h3>Commutate with ONIX <i class="fas fa-external-link"></i></h3>
                    <img src="../../../_static/images/breakout_1r5_beta.png"
                    class="hover-zoom card-image-bottom" style="margin:0" alt="OpenEphys.Onix1 bonsai
                    package documentation">
                </div>
            </a>
            </div>
            <div class="card text-center page-card">
            <a href="https://open-ephys.github.io/miniscope-docs/ucla-miniscope-v4/user/miniscope-daq/commutate/index.html">
                <div class="card-body">
                    <h3 class="">Commutate with Miniscope DAQ <i class="fas fa-external-link"></i></h3>
                    <img src="../../../_static/images/miniscope-daq_ucla-miniscope-v4.webp"
                    class="hover-zoom card-image-bottom" style="margin:0" alt="OpenEphys.Onix1 bonsai
                    package documentation">
                </div>
            </a>
            </div>
        </div>

#.  Using computer vision. This requires a computer with sufficient graphics processing capabilities
    and training a network to track your animal. Follow the :ref:`computer_vision` guide.

    .. raw:: html

        <div class="row row-cols-2 gx-1">
            <div class="card text-center page-card">
            <a href="~/coax-commutator/user-guide/automatic-control/computer-vision.html">
                <div class="card-body">
                    <h3>Commutate with Computer Vision <i class="fas fa-external-link"></i></h3>
                    <img src="../../../_static/images/computer-vision.jpg"
                    class="hover-zoom card-image-bottom" style="margin:0" alt="OpenEphys.Onix1 bonsai
                    package documentation">
                </div>
            </a>
            </div>
        </div>

..  note:: 
    The above examples for automated commutation use `Bonsai <https://open-ephys.org/bonsai>`__.
    Bonsai is open-source software for processing asynchronous, heterogeneous
    streams of data. To learn more about how to use Bonsai with our hardware, visit:

    -   `OpenEphys.Onix1 Getting Started Guide <https://open-ephys.github.io/bonsai-onix1-docs/articles/getting-started/index.html>`__
    -   `UCLA Miniscope 4.0 Data Acquisition Guide
        <https://open-ephys.github.io/miniscope-docs/ucla-miniscope-v4/user/miniscope-daq/index.html>`__
    -   `Official Bonsai documentation <https://bonsai-rx.org/>`__.

If you are unable to integrate the Open Ephys Commutator as described above, refer to the
:ref:`remote_control` guide to write your own script that writes serial commands to turn the
commutator. If that is insufficient, try consulting the :ref:`dev_guide` or contacting Open Ephys
for help.

.. toctree::
    :hidden:

    computer-vision
