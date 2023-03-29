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
                            Deeplcabcut </a> or <a
                            href="https://github.com/talmolab/sleap"> SLEAP
                            </a>) provide real-time measurements of animals'
                            rotational state in an environment. This obviates
                            the need for tether torque measurements to drive an
                            active commutator during neural recordings in
                            freely moving animals because the rotational state of
                            the animal is known and the
                            commutator can simply follow along. This method
                            permits the use of extremely thin <a
                            href="http://www.axon-cable.com/en/02_products/06_coaxial-cables/02/index.aspx">
                            extremely thin tethers </a> that cannot function
                            with a standard active commutator because they are
                            too flexible to accurately translate rotational torque.  
                            <br> 
                            <br> 
                            Open Ephys Commutators are open-source, motorized
                            commutators that use this principle to prevent
                            eletrical or optical tethers from twisting during
                            experiments with freely moving animals. They can be
                            controlled manually through button presses or
                            remote input pose-estimation software.
                            Open Ephys Commutators include:
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



.. todo::
    * Responsive design
    * Replace coax commutator picture with slideshow containing both SPI and
      coax commutators once SPI picture is abailable
    * Align quick-start guide icons
    * Steal certain theme/css stuff from onix docs
    * Link to coax headstage sales page instead of coax headstage section of
      the onix docs
