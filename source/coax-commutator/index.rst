
.. _coax_commutator:

Coax Commutator
*************************************************

.. toctree::
   :hidden:
   :maxdepth: 1

   quick-start-guide/index
   user-guide/index
   developer-guide/index

Features
-------------------------

.. raw:: html

    <div class="container">
        <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-5 col-xs-5 m-0 p-0">
                    <img src="../_static/images/commutator-front-thin.jpg" alt="Commutator front image">
                </div>
                <div class="col-lg-9 col-md-9 col-sm-7 col-xs-7 d-flex flex-column m-0 p-0">
                    <div class="card-body">
                        <ul class="simple">
                            <li>High bandwidth link up to 18 GHz</li>
                            <li>Optical table & 80/20 rail mountable</li>
                            <li>Remote control using JSON-encoded commands</li>
                            <li>Settings are saved between power cycles</li>
                            <li>Manual control using capacitive sense buttons</li>
                            <li>Indication LED (can be turned off)</li>
                            <li>Advanced stepper driver (TMC2130)</li>
                            <ul class="simple">
                                <li>Voltage-controlled for silent operation</li>
                                <li>Precise motion using step interpolation (256 uSteps/step)</li>
                            </ul>
                            <li>USB powered and controlled</li>
                            <ul class="simple">
                                <li>Internal super-capacitor circuitry prevents loading the USB bus during
                                motion</li>
                            </ul>
                        </ul>
                    </div>
            </div>
        </div>
    </div>

Using these Docs
---------------------------------------
- To confirm proper function of the commutator by controlling it with Bonsai
  and key presses, refer to the :ref:`quick_start` page.
- To automate the commutator with orientation data from specific hardware such
  as `Miniscopes <https://open-ephys.org/miniscope-v4/miniscope-v4>`__ or `ONIX
  headstages
  <https://open-ephys.github.io/onix-docs/Hardware%20Guide/Headstages/headstage-64/index.html>`__
  refer to the complete :ref:`user_guide`.
- To interface the commutator with your custom software, third-party devices,
  modif your device, or build your own commutator, refer to the
  :ref:`dev_guide`. 

