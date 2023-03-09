
**************************************************************
Remote Control
**************************************************************

.. TODO:: fix .bonsai download buttons and templates for all docs in the remote control section

Automating Commutation
*************************

The commutator's remote control system allows the user to:

* Enable/disable the commutator
* Command the commutator to rotate
* Change the speed of commutator's speed of rotation
* Toggle the LED Feedback function
* Query the commutator's settings

This remote control system equipped with the above set of commands allows the user to interface the commutator with
other software and hardware to automate the commutation process for the purpose of (for example) preserving signal
integrity and relieving the torsion exerted on a freely moving animal during animal behavior experiments.

What is Bonsai?
*************************

`Bonsai <https://open-ephys.org/bonsai>`_ is open-source software for processing asynchronous, heterogeneous streams of
data. In our case, it can be used to coordinate orientation data (from an IMU sensor or camera sensor for instance) to
provide feedback to commutator and automate the commutation process. To learn more about how to use Bonsai, explore the
`bonsai-rx.org <https://bonsai-rx.org/>`_ website. It is used in many of the following guides for controlling and
automating commutation.

.. toctree::
    :hidden:

    bonsai-keypress-control
    bonsai-headstage64-automate
    bonsai-miniscope-automate
    gui-miniscope-automate
