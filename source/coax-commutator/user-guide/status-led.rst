
**********************************************
Commutator Status and LED Feedback
**********************************************

.. TODO::
    * Add LED gifs
    * reformat below?

Commutator Status and LED Feedback:
***************************************

:Disabled State:
    All controls (except ones that enable the commutator) and motor operations are locked. When the disabled status is entered,
    the motor is halted instantly. All commands (remote or manual) received during the disabled state will be cleared such
    that they do not engage when the commutator is enabled

    Indicated by solid red LED

:Charging State:
    Super-capacitors are charging. The commutator is effectively disabled, except the commutator cannot be enabled until charging completes which can take up to 30 seconds.

    Indicated by flashing red LED

:Enabled State:
    Remote and manual controls are unlocked.

    Indicated by solid green LED

.. NOTE::
    The LED can be toggled when it presents unwanted visual stimulus by holding the LED capacitive sensor button for >0.5
    seconds. Refer to this guide's :doc:`Manual Control <manual-control>` section for more information on that. The LED can
    also be toggled remotely by sending the proper JSON command to the commutator. Refer to the :doc:`Developer Guide <../developer-guide/index>`
    section to learn how to do this)
