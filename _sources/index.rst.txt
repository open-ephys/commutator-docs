:notoc:

.. **Date**: |today|

.. image:: _static/images/commutator.png
    :alt: commutator image

*************************************************
Open Ephys Commutators
*************************************************

Open Ephys Commutators (OECs) are open-source, motorized commutators for reducing torsion of the tether that connects a
stationary data acquisition device to the headstage of a freely-moving animal undergoing electrophysiological or optical
measurement. OECs confer the following benefits to your ephys or miniscope experiments:

#. Promote exploratory behavior by reducing strain on the animal's head exerted by a heavy, twisted tether [#]_
#. Increase signal reliability by preserving the integrity of the tether and reducing the possibility of electrical disconnection [#]_

Features include:

* Light tether for minimal disturbance to the animal
* High bandwidth (18 GHz) tether for signal fidelity in the frequencies of interest
* Manual commutator control using integrated capacitive buttons
* Computer control using human-readable JSON commands
* Optical table & 80/20 rail mountable
* RGB LED status indicator (can be turned off)
* Silent and precise motor driver
* Modular - Compatible with computer vision systems or IMU systems (not sure if this a feature)
* USB Powered

Getting Started
=============================================

.. NOTE:: This guide is designed to be used with the miniscope v4. To use the OEC with other devices,
    please refer to the more :ref:`detailed-guides` below.

#. Mount the OEC above the behavioral setup such that the animal can traverse the setup's full area
    * The mounting holes are...

#. Establish all electrical connections:
    * Connect the head-mounted device's tether to the OEC's bottom connector
    * Connect the acquisition system's connector to the OEC's top connector
    * Connect a computer to the OEC using a USB-A to micro-USB cable

    .. Attention:: * All cables must be appropriate length and within-spec (More info in User Manual)
        * While establishing electrical connections, ensure cables are not within range to interfere with tether

#. Configure Bonsai
    #. Download Bonsai
    #. Install packages required for your experiment:
        * Bonsai.StarterPack
        * Bonsai.Miniscope
    #. Configure commutator port correctly under the PortName property of the Commutator node.
#.


To learn more about about how to use OECs or develop your own commutator, refer to the following guides:

.. _detailed-guides:

Detailed Guides
=============================================

.. raw:: html

    <div class="container">
      <div  class="row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 row-cols-xs-1">
        <div class="col mb-4">
          <div class="card h-100 text-center intro-card shadow">
            <a href = About/example1.html>
                <img src="_static/images/paper.svg" class="card-img-top" height="160">
                <div class="card-body flex-fill">
                  <p class="card-reference">User Guide</p>
                </div>
            </a>
          </div>
        </div>
        <div class="col mb-4">
          <div class="card h-100 text-center intro-card shadow">
            <a href =  About/example2.html>
                <img src="_static/images/noun_screwdriver.svg" class="card-img-top" height="160">
                <div class="card-body flex-fill">
                  <p class="card-reference">Developer Guide</p>
                </div>
            </a>
          </div>
        </div>
      </div>
    </div>

Footnotes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. [#] .. image:: _static/images/footnote1_plot.png
            :alt: mouse movement plots

        (D) Cumulative 3D trajectories for each tether epoch. When the standard tether was used, the animal spent the
            majority of its time in restricted spatial locations, each approximately the size of a typical home cage. The
            ONIX ultra-coax allowed freedom to explore the entire maze.
        (E) The cumulative 3D trajectories of a second, unimplanted mouse match those of the mouse with the ONIX tether.

.. [#] .. image:: _static/images/blah.png
            :alt: ephys signal plots

        merp

License
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This work is licensed under CC BY-SA 4.0.

To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/

.. toctree::
   :hidden:
   :maxdepth: 2
   :titlesonly:

   About/index
