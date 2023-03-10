
**********************************************
Commutator Status and LED Feedback
**********************************************

Commutator Status
************************

* Disabled Status:
    All controls (except ones that enable the commutator) and motor operations are locked. When the disabled status is entered,
    the motor is halted instantly. All commands (remote or manual) received during the disabled state will be cleared such
    that they do not engage when the commutator is enabled.

* Charging Status:
    Super-capacitors are charging. The commutator is effectively disabled, except the commutator cannot be enabled until charging completes which can take up to 30 seconds.

* Enabled Status:
    Remote and manual controls are unlocked.

LED Feedback
************************

* Solid Green:
    Commutator is enabled.

* Solid Red:
    Commutator is disabled.

* Flashing Red:
    Commutator is charging.

LED Feedback can be toggled when the LED presents unwanted visual stimulus. Refer to this guide's :doc:`Manual Control <manual-control>`
section to learn to do this manually and :doc:`Details of Remote Control <remote-control/details-remote-control>`
section to learn how to do this remotely.
