
.. _status_led:

Status LED
**********************************************
The LED on the front panel provides information about the operational state of
the commutator:

.. image:: ../../_static/images/commutator-front-status-led.jpg
   :alt: Status LED
   :align: center
   :width: 50%

.. raw:: html

    <div class="container">
        <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 d-flex align-items-center justify-content-center">
                    <img src="../../_static/images/charging-led.gif" alt="led gif">
                </div>
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 d-flex flex-column m-0 p-0">
                    <div>
                        <p><b>Charging: </b>Super-capacitors are charging. The
                        commutator is effectively disabled, and can't be used
                        until charging completes, which can take up to 30
                        seconds.
                        </p> </div>
            </div>
        </div>
        <br>
        <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 d-flex align-items-center justify-content-center">
                    <img src="../../_static/images/disabled-led.gif" alt="led gif">
                </div>
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 d-flex flex-column m-0 p-0">
                    <div>
                        <p><b>Disabled: </b>All controls, except the Stop/Go
                        button or {enable: true} remote command, are ignored
                        and the motor is locked.  When the disabled status is
                        entered, the motor is halted instantly. All commands
                        (remote or manual) received during the disabled state
                        are cleared such that they do not engage when the
                        commutator is enabled.</p>
                    </div>
            </div>
        </div>
        <br>
        <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 d-flex align-items-center justify-content-center">
                    <img src="../../_static/images/enabled-led.gif" alt="led gif">
                </div>
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 d-flex flex-column m-0 p-0">
                    <div>
                        <p><b>Enabled: </b>Remote and manual controls are unlocked. </p>
                    </div>
            </div>
        </div>
    </div>

.. important:: The LED can be toggled off if it presents unwanted visual stimulus by
   pressing the LED button for > 0.5 seconds. The LED can then be toggled on by
   pressing the button again. Alternatively, the LED can be toggled on/off
   remotely using the :ref:`{led: false} command <remote_control>`
