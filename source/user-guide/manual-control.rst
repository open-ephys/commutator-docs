.. _manual_control:

Manual Control
*******************************************************

The front panel of the commutator has four buttons for manual control.
They are useful in the following situations:

- Quickly halting motor operation 
- Screwing or unscrewing the tether's SMA connector by turning the motor
- Untwisting the tether to correct the starting tether orientation or due to drift in the orientation information

..  important:: 
    Manual controls override any ongoing remote controls. In other
    words, remote commands sent when a button is being pressed are ignored and
    cleared.
    
..	grid::

    ..  grid-item::
        :padding: 0
        :columns: 7

        :1. Enable/Disable:	Press to toggle commutator enable/disable.

                            -   *Disabled* (LED solid red): All motor output halts instantly, and
                                motor driver is powered down. Pressing directional buttons  will not
                                work. Remote remote commands are ignored and previous target
                                positions will be cleared. In this state, pressing the
                                Enable/Disable button or sending the appropriate remote command
                                enables the device.
                            -   *Enabled* (LED solid green): The motor can be turned with button
                                presses or remote procedure commands. In this state, pressing the
                                Stop/Go button disables the device.

        :2. CW/CCW Turn: 	Manually control the motor rotation in the direction indicated on each
                            button when the commutator is *Enabled*. These inputs take precedence,
                            and ongoing remote motor control are ignored. When pressed, all target
                            turns provided via remote control are cleared, such that releasing them
                            will not result in the commutator re-engaging an old target position.
                            Remote commands sent when a button is being pressed are ignored.  

        :3. LED:    Pressing the LED turns toggles it on and off (e.g for cases where it presents an unwanted
                    visual stimulus). 

    ..  grid-item::
        :child-align: center
        :columns: 5

        ..  figure:: /_static/images/commutator-buttons-numbered.png
            :align: center
            :alt: Commutator front image

            Your commutator controller front panel might not be identical to the one pictured, but
            the manual control functions equivalently.   

..  note::
    -  	The buttons on the front panel are capacitive sensor buttons. They are not mechanical so they do not provide tactile or auditory feedback.   
    -   Older commutators with the Micro-USB require a 0.5s hold when toggling on the LED or enabling the commutator. 
    -   There might be some visual and labelling differences between the pictured commutator and the one
        you have, but all manual controls are the same. 

Reset Button
______________________________________________
On the side of the device, there is a hard **Reset Button**. Pressing this button will power cycle
the commutator.

..  image:: /_static/images/commutator-side-button-numbered.png
    :width: 50%
    :align: center
    :alt: Commutator side image

