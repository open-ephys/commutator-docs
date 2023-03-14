
*************************************************
Open Ephys Commutators
*************************************************

Overview
*************************************************

.. raw:: html

    <div class="container">
        <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-5 col-xs-5 m-0 p-0">
                    <img src="_static/images/commutator-front-thin.jpg" alt="Commutator front image">
                </div>
                <div class="col-lg-9 col-md-9 col-sm-7 col-xs-7 d-flex flex-column m-0 p-0">
                    <div class="card-body">
                        <p class="card-text">
                            Open Ephys Commutators are open-source, motorized commutators that can be controlled through button presses or remote input. This is useful in a number of contexts, particularly for automating the commutation of conductors between a stationary data acquisition device and the headstage of a freely moving mouse undergoing electrophysiological or optical measurement. Open Ephys Commutators include:
                        </p>
                        <ul class="simple">
                            <li><p><b>Coax Commutator:</b></p></li>
                            <p style="margin-left: 1em"> Compatible with <a href="https://open-ephys.org/miniscope-v4/miniscope-v4">UCLA miniscope headstages</a> and <a href="https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/headstage-64/index.html"> Open Ephys electrophysiology headstages</a> </p>
                            <li><p><b>SPI Commutator:</b></p></li>
                            <p style="margin-left: 1em"> Compatible with headstages that have standard SPI electrophysiology interconnects such as those from <a href="https://open-ephys.org/acquisition-system/low-profile-spi-headstage-64ch">Open Ephys</a> and <a href="https://intantech.com/pricing.html">Intan</a> </p>
                        </ul>
                        <p class="card-text">
                            To start using your Open Ephys Commutator, please refer to the guide that corresponds with your commutator:
                        </p>
                    </div>
            </div>
        </div>
    </div>

Commutator Guides
*************************************************

.. raw:: html

    <div class="container d-flex flex-wrap">
            <div class="col" style="min-width: 20%">
                <div class="card h-100 text-center shadow">
                    <a class="card-link" href="./coax-commutator/index.html">
                        <img class="card-img-top" src="_static/images/coax-cables-unlabeled.jpg">
                        <div class="card-body">
                            <p class="card-reference">Coax Commutator User Guide</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col" style="min-width: 20%">
                <div class="card h-100 text-center shadow">
                    <a class="card-link" href="./spi-commutator/index.html">
                        <img class="card-img-top" src="_static/images/SPI-cable.jpg">
                        <div class="card-body">
                            <p class="card-reference">SPI Commutator User Guide</p>
                        </div>
                    </a>
                </div>
            </div>
    </div>

License
*************************************************

This work is licensed under CC BY-SA 4.0.

To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/

.. toctree::
   :hidden:

   self
   coax-commutator/index
   spi-commutator/index

.. TODO::
    * responsive design
    * Replace coax commutator picture with slideshow containing both SPI and coax commutators once SPI picture is abailable
    * Align quick-start guide icons
    * Steal certain theme/css stuff from onix docs
    * link to coax headstage sales page instead of coax headstage section of the onix docs