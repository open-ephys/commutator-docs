
.. _status_led:

Status LED
**********************************************

The LED on the front panel provides information about the operational state of the commutator:

..  grid::

    ..  grid-item:: 
        :columns: 8

        ..  list-table:: 
            :header-rows: 1
            :stub-columns: 1
            :class: hover-table

            *   -   LED State
                -   Commutator State
            *   -   blinking red
                -   **Charging:** Super-capacitors are charging. The commutator is effectively
                    disabled, and can't be used until charging completes which can take up to 30
                    seconds.
            *   -   solid red
                -   **Disabled:** All controls, except the Stop/Go button or ``{enable: true}``
                    remote command, are ignored and the motor is locked.  When the disabled status
                    is entered, the motor is halted instantly. All commands (remote or manual)
                    received during the disabled state are cleared such that they do not engage when
                    the commutator is enabled.
            *   -   solid green
                -   **Enabled:** Remote and manual controls are unlocked.
            *   -   no color
                -   **LED Disabled:** The commutator could be in any of the above states.

        The LED can be toggled off if it presents unwanted visual stimulus by pressing the LED button. The
        LED can then be toggled on by pressing the button again. Alternatively, the LED can be toggled
        off/on remotely using the :ref:`{led:false} or {led:true} command <remote_control>`.
                
    ..  grid-item::
        :columns: 4

        ..  figure:: /_static/images/commutator-front-status-led.jpg
            :alt: Status LED
            :align: center
            :class: hover-image

            Your commutator controller front panel might not be identical to the one pictured, but
            the status LED functions equivalently.   

..  note::
    Toggling the LED on commutators that use Micro-USB requires holding the LED button for > 0.5 seconds.
