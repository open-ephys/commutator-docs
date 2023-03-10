
**************************************************************
Mounting and Connecting the Commutator
**************************************************************

Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The commutator can be mounted to a standard `80/20 aluminum extrusion <https://8020.net/framing-options/t-slotted-profiles/fractional/10series100basedprofiles.html>`_ using `t-nuts <https://youtu.be/nK-DsJxAdwM>`_ or a standard mechanical breadboard.
For custom mounting solutions, the dimensions for the mounting holes (1/4"-20 or M6) are indicated in the below schematic:

.. image:: ../../_static/images/commutator-mounting-holes.png
    :alt: schematic image
    :align: center

For more clarity, access the 3D model which can be downloaded `here <https://github.com/open-ephys/onix-commutator>`_ or
in the :doc:`Mechanical<../developer-guide/mechanical>` section of our :doc:`Developer Guide<../developer-guide/index>`
which contains more information about the enclosure and how to view such a 3D file.

If the commutator is used for an animal behavior experiment, mount the commutator such that the animal can traverse the
behavior setup's full area given the length of your tether.

Connecting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. raw:: html

    <div class="container">
        <div class ="row">
            <p class="card-text">
                There are three electrical interconnects on the commutator:
            </p>
        </div>
        <div class="row">
            <img src="../../_static/images/connections-numbered.png" alt="commutator connections image">
        </div>
        <div class="row">
                <div class="col d-flex flex-column m-0 p-0">
                    <div class="card-body m-0 p-0">
                        <ol class="simple">
                            <li><p><b>Micro-USB Connector:</b></p></li>
                            <p> The commutator receives power and communicates to another device (probably a computer) with serial communication (USB/UART) through this interconnect </p> </ol>
                        </ol>
                    </div>
                </div>
                <div class="col d-flex flex-column m-0 p-0">
                    <div class="card-body m-0 p-0">
                        <ol class="simple" start="2">
                            <li><p><b>Top SMA Connector:</b></p></li>
                            <p> The commutator???s stator connects to the stationary data acquisition device (DAQ) through this interconnect </p>
                        </ol>
                    </div>
                </div>
                <div class="col d-flex flex-column m-0 p-0">
                    <div class="card-body m-0 p-0">
                        <ol class="simple" start="3">
                            <li><p><b>Bottom SMA Connector:</b></p></li>
                            <p> The commutator???s rotor connects to the freely moving animal headstage through this interconnect </p>
                        </ol>
                    </div>
                </div>
        </div>
    </div>


.. Attention::
    * Ensure that the Micro-USB carries digital signals as well as power
    * Source your coaxial tether from a reputable vendor such as `Digikey <https://www.digikey.com/>`_, `Mouser <https://www.digikey.com/>`_,
      or `Open Ephys <https://open-ephys.org/store>`_
    * For animal behavior experiments, manage cables such that they are not within range to interfere with the tether when the animal moves. For example:

      .. image:: ../../_static/images/cable-management.png
            :alt: image indicating location of connections
            :align: center
