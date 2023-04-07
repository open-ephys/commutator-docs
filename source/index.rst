.. _oec:

Open Ephys Commutators
*************************************************

.. toctree::
   :hidden:

   coax-commutator/index
   spi-commutator/index

.. raw:: html

    <div class="container">
        <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-5 col-xs-5 m-0 p-0">
                    <img src="_static/images/commutator-front-thin.jpg" alt="Commutator front image">
                </div>
                <div class="col-lg-9 col-md-9 col-sm-7 col-xs-7 d-flex flex-column m-0 p-0">
                    <div class="card-body">
                        <p class="card-text">
                            Internal-measurement
                            units (IMUs) or video-based pose-estimation methods
                            (e.g. <a
                            href="https://github.com/DeepLabCut/DeepLabCut">
                            DeepLabCut </a> or <a
                            href="https://github.com/talmolab/sleap"> SLEAP
                            </a>) provide real-time measurements of freely moving animals'
                            3D pose. A commutator can be interfaced with such technologies
                            to drive active commutation instead of relying on feedback loops that
                            require measuring torque on the tether such as in the case of conventional active
                            commutators. This permits the use of novel <a
                            href="https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/headstage-64/index.html">
                            extremely thin tethers </a> that promote natural animal behavior.
                            <br> 
                            <br> 
                            Open Ephys Commutators are open-source, motorized
                            commutators that utilize this principle to prevent
                            electrical or optical tethers from twisting during
                            experiments with freely moving animals. They can be
                            controlled manually through button presses or
                            remote control by pose-estimation software.
                            Currently available Open Ephys Commutators include:
                        </p>
                        <ul class="simple">
                            <li><p><b>Coax Commutator:</b></p></li>
                            <p style="margin-left: 1em"> Compatible with <a href="https://open-ephys.org/miniscope-v4/miniscope-v4">UCLA miniscope headstages</a> and <a href="https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/headstage-64/index.html"> Open Ephys electrophysiology headstages</a> </p>
                            <li><p><b>SPI Commutator:</b></p></li>
                            <p style="margin-left: 1em"> Compatible with headstages that use SPI digital communcaiton such as those from <a href="https://open-ephys.org/acquisition-system/low-profile-spi-headstage-64ch">Open Ephys</a> and <a href="https://intantech.com/pricing.html">Intan</a> </p>
                        </ul>
                        <p class="card-text">
                            To start using your your Open Ephys Commutator, please
                            refer to the guide that corresponds with your
                            device:
                        </p>
                    </div>
            </div>
        </div>
    </div>

.. raw:: html

    <div class="container d-flex flex-wrap">
            <div class="col" style="min-width: 20%">
                <div class="card intro-card h-100 text-center shadow">
                    <a class="card-link" href="./coax-commutator/index.html">
                        <img class="card-img-top" src="_static/images/coax-cables-unlabeled.jpg">
                        <div class="card-body">
                            <p class="card-reference">Coax Commutator User Guide</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col" style="min-width: 20%">
                <div class="card intro-card h-100 text-center shadow">
                    <a class="card-link" href="./spi-commutator/index.html">
                        <img class="card-img-top" src="_static/images/SPI-cable.jpg">
                        <div class="card-body">
                            <p class="card-reference">SPI Commutator User Guide</p>
                        </div>
                    </a>
                </div>
            </div>
    </div>

