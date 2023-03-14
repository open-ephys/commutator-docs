
**********************************************
Commutator Status and LED Feedback
**********************************************

Commutator States
***************************************

.. raw:: html

    <div class="container">
        <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 d-flex align-items-center justify-content-center">
                    <img src="../../_static/images/disabled-led.gif" alt="led gif">
                </div>
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 d-flex flex-column m-0 p-0">
                    <div>
                        <p><b>Disabled State:</b></p>
                        <p>All controls (except ones that enable the commutator) and motor operations are locked. When the disabled status is entered, the motor is halted instantly. All commands (remote or manual) received during the disabled state are cleared such that they do not engage when the commutator is enabled.</p>
                    </div>
            </div>
        </div>
        <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 d-flex align-items-center justify-content-center">
                    <img src="../../_static/images/charging-led.gif" alt="led gif">
                </div>
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 d-flex flex-column m-0 p-0">
                    <div>
                        <p><b>Charging State:</b></p>
                        <p> Super-capacitors are charging. The commutator is effectively disabled, except the commutator cannot be enabled until charging completes which can take up to 30 seconds. </p>
                    </div>
            </div>
        </div>
        <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 d-flex align-items-center justify-content-center">
                    <img src="../../_static/images/enabled-led.gif" alt="led gif">
                </div>
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 d-flex flex-column m-0 p-0">
                    <div>
                        <p><b>Enabled State:</b></p>
                        <p> Remote and manual controls are unlocked. </p>
                    </div>
            </div>
        </div>
    </div>


Toggle LED Feedback
*********************

The LED can be toggled off if it presents unwanted visual stimulus by touching the LED button for >0.5 seconds. The LED
can be toggled on by touching the LED button for any amount of time. Refer to this guide's :doc:`Manual Control <manual-control>`
section for more informaton about that. The LED can also be toggled on/off remotely by sending the proper JSON command to the
commutator. Refer to the :doc:`Developer Guide <../developer-guide/index>` to learn how to do this.
