.. _mounting:

Mounting and Connecting the Commutator
**************************************************************

Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The commutator should be mounted such that it is roughly centered over the
behavioral arena. There are several holes in various positions around the
commutator's body that are compatible standard `80/20 aluminum extrusion
<https://8020.net/framing-options/t-slotted-profiles/fractional/10series100basedprofiles.html>`_
using `t-nuts <https://youtu.be/nK-DsJxAdwM>`_ or a standard mechanical
breadboard.  Not all the holes need to be used. Select the mounting holes that
are convienient for your behavioral setup. For custom mounting solutions, the
dimensions for the mounting holes (1/4"-20 or M6) are indicated in the below
schematic:

.. image:: ../../_static/images/commutator-mounting-holes.png
    :alt: schematic image
    :align: center

.. note:: For clarity and planning, 3D models of the commutator body are
   available on the git repository

.. todo:: Show how to mount the elastic thread as well. This sentence can be
   used there: If the commutator is used for an animal behavior experiment,
   mount the commutator such that the animal can traverse the behavior setup's
   full area given the length of your tether.

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
                            <p> The commutator’s stator connects to the stationary data acquisition device (DAQ) through this interconnect </p>
                        </ol>
                    </div>
                </div>
                <div class="col d-flex flex-column m-0 p-0">
                    <div class="card-body m-0 p-0">
                        <ol class="simple" start="3">
                            <li><p><b>Bottom SMA Connector:</b></p></li>
                            <p> The commutator’s rotor connects to the freely moving animal headstage through this interconnect </p>
                        </ol>
                    </div>
                </div>
        </div>
    </div>


.. Attention::
   * Some cheap Micro-USB cables only supply power. Be sure to use a cable that
     provides power and digital signals 
   * Source your coaxial tether from a reputable vendor such as `Digikey
     <https://www.digikey.com/>`_, `Mouser <https://www.digikey.com/>`_, or `Open Ephys <https://open-ephys.org/store>`_
   * For animal behavior experiments, manage cables such that they are not
     within range to interfere with the tether when the animal moves. For
     example:

     .. image:: ../../_static/images/cable-management.png
        :alt: image indicating location of connections
        :align: center

     .. todo:: Better image
