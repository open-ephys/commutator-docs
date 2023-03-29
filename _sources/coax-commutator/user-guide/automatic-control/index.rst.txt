Automating Commutation
*************************
The commutator's :ref:`remote control system <remote_control>`  enables the
user to interface the commutator with software to automate the commutation
process for the purpose of (for example) preserving signal integrity and
relieving the torsion exerted on a freely moving animal during animal behavior
experiments.

.. image:: ../../../_static/images/demo.gif
    :align: center

The following sections outline how to automate the commutator with different
headstages, miniscopes, and pose-esitimation data sources. To interface your
Open Ephys commutator with a third-party/custom system, refer to the
:ref:`dev_guide`

.. toctree::
    :hidden:

    bonsai-headstage64
    bonsai-miniscope
    bonsai-computervision
    gui-miniscope


.. note:: Many of these examples use `Bonsai <https://open-ephys.org/bonsai>`_.
   Bonsai is open-source software for processing asynchronous, heterogeneous
   streams of data. In our case, it can be used to coordinate orientation data
   (from an IMU sensor or camera sensor for instance) to provide feedback to
   commutator and automate the commutation process. To learn more about how to
   use Bonsai, explore the `bonsai-rx.org <https://bonsai-rx.org/>`_ website.
   It is briefly introduced here because it is utilized heavily in the
   remainder following guides for controlling and automating commutation.
