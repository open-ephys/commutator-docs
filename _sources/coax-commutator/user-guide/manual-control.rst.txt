.. _manual_control:

Manual Control
*******************************************************
The front panel of the commutator has four buttons for manual control.
They are useful for situations such as:

- Quickly halting motor operation 
- Screwing or unscrewing the tether's SMA connector by turning the motor
- Untwisting the tether due to an error during automated commutation

.. important:: Manual controls override any ongoing remote controls. In other
   words, remote commands sent when a button is being pressed are ignored and
   cleared.
   
.. note:: The buttons on the front panel are capacitive sensor buttons. They are not mechanical so they do not provide tactile or auditory feedback.   

.. image:: ../../_static/images/commutator-buttons-numbered.png
    :width: 50%
    :align: center
    :alt: Commutator front image

:1. Stop/Go: 	  Press to toggle commutator enable/disable.

		  - *Disabled* (LED is red): All motor output halts instantly, and motor
		    driver is powered down. Pressing directional buttons in the stopped state
		    will not work. All target turns provided via remote calls will be
		    cleared, such that re-enabling the motor will not result in the commutator
		    re-engaging an old target position. In this state, pressing and holding
		    the Stop/Go button for > 0.5 second, or sending the appropriate remote
		    command will enable the device.
		  - *Enabled* (LED  green): When in the *enabled* state, the LED will be
		    green and the motor can be turned via button presses or remote procedure commands. In this
		    state, pressing the Stop/Go button will instantly disable the device.

:2. Directional: Press to manually control the motor rotation in the direction indicated on
              	 each button when the commutator is *Enabled*. These inputs take
              	 precedence over and override ongoing remote motor control.  When
              	 pressed, all target turns provided via remote control will be
              	 cleared, such that releasing them will not result in the
              	 commutator re-engaging an old target position. Remote commands
              	 sent when a button is being pressed are ignored.

:3. LED: Pressing the LED turns it off (e.g for cases where it presents an
     	 unwanted visual stimulus). Pressing the LED button for > 0.5 seconds enables the LED.

Reset Button
______________________________________________
On the side of the device, there is a hard **Reset Button**. Pressing this button will reset the internal
microcontroller's firmware. This might be useful if USB connectivity or custom firmware is causing difficulty.

.. image:: ../../_static/images/commutator-side-button-numbered.png
    :width: 50%
    :align: center
    :alt: Commutator side image

