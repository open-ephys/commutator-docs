
*************************************************
Open Ephys Commutators
*************************************************

Overview
*************************************************

.. raw:: html

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 d-flex">
                <div class="col mb-4">
                    <img class="card-img-top" src="_static/images/commutator_front.jpg" alt="Commutator front image" style="margin: 0">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 d-flex" style="margin-top: 0em!important">
                <div class="col mb-4">
                    <div class="card-body">
                        <p class="card-text">
                            Open Ephys Commutators are open-source, motorized commutators that receive input to automate the commutate conductors. This is useful in a number of contexts, particularly for connecting conductors between a stationary data acquisition device and the headstage of a freely moving mouse undergoing electrophysiological or optical measurement when designs must be lightweight, wired, and exert minimal torsion/torque at a crucial interconnect. Version include:
                        </p>
                        <ul class="simple">
                            <li><p><b>Ultra-Coax Commutator:</b></p></li>
                            <p style="margin-left: 1em"> High bandwidth coaxial cable designed to be lightweight to promote natural mouse behavior </p>
                            <li><p><b>SPI Commutator:</b></p></li>
                            <p style="margin-left: 1em"> SPI assembly designed to accommodate common headstage interconnects </p>
                        </ul>
                        <p class="card-text">
                            To start using your commutator, please refer to the corresponding quick-start guides in the following section:
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

Quick-Start Guides
*************************************************

.. raw:: html

    <div class="container-fluid">
      <div class="row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 row-cols-xs-1">
        <div class="col">
          <div class="card h-100 text-center intro-card shadow">
            <a href = ./ultra-coax-commutator/quick-start-guide.html>
                <img src="_static/images/coax-icon.jpg" class="card-img-top" height="160">
                <div class="card-body flex-fill">
                  <p class="card-reference">Ultra-Coax Commutator Quick-Start Guide</p>
                </div>
            </a>
          </div>
        </div>
        <div class="col">
          <div class="card h-100 text-center intro-card shadow">
            <a href = ./spi-commutator/quick-start-guide.html>
                <img src="_static/images/SPI.png" class="card-img-top" height="160">
                <div class="card-body flex-fill">
                  <p class="card-reference">SPI Commutator Quick-Start Guide</p>
                </div>
            </a>
          </div>
        </div>
      </div>
    </div>

License
*************************************************

This work is licensed under CC BY-SA 4.0.

To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/

.. toctree::
   :hidden:
   :maxdepth: 1

   self
   ultra-coax-commutator/overview
   spi-commutator/overview

.. TODO::
    * How to improve format?
    * Add picture slideshow for various commutators when possible
    * Change quick-start guide icons and buttons? Align buttons' icons. b&w - very dry? (add some color, make it pop)
    * Rip certain theme/css stuff from onix docs