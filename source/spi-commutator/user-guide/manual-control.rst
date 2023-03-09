
*******************************************************
Manual Commutator Control
*******************************************************

.. TODO:: Should stop/go change to enable/disable? those buttons don't do what I thought they did by their label

This guide instructs how to control the commutator using buttons on the commutator's PCB/enclosure. This is useful for
situations such as when the user wants to quickly stop automated commutation or untwist the tether without disconnecting the
it from the head stage.

* Stop/Go Button:
    * If the commutator is already disabled (solid red LED), the stop/go button enables the commutator by being pressed for >0.5 seconds
    * If the commutator is already enabled (solid green LED), The stop/go button disables the commutator instantly by being pressed for any time at all

* Direction Button (2x):
    * The direction button changes the direction of the commutator's rotation to the direction indicated by the respective
      button's silk screen. This only happen while the commutator is in its enabled state.

* LED Button:
    * If LED feedback function is already disabled, the LED button enables the LED feedback function by being pressed for >0.5 seconds
    * If LED feedback function is already enabled, the LED button disables the LED feedback function by being pressed for any time at all

.. Note:: Manual controls override any ongoing remote controls. In other words, remote commands sent when a button is being pressed are ignored and cleared