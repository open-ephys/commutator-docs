.. _oec:

.. title:: Home

.. image:: /_static/images/commutator-front-thin.jpg
  :alt: Commutator front image
  :width: 230px

**Open Ephys Commutators** provide nearly torque-free tether management for freely moving
recordings. Inertial-measurement units (IMUs) or video-based pose-estimation methods (e.g.
`DeepLabCut <https://github.com/DeepLabCut/DeepLabCut>`_ or 
`SLEAP <https://github.com/talmolab/sleap>`_) provide real-time measurements of animal orientation.
These technologies can be used to drive active commutation instead of relying on tether torque
measurement, which is used in conventional active commutators. This permits the use of exceptionally
thin tethers that promote natural animal behavior but are too flexible to be used with conventional
commutators.

Open Ephys commutators `are available <https://open-ephys.org/commutators>`__ for two different types of tethers: coaxial (either single or dual channel) and SPI.

- **Single Coax**: Commutates a single coaxial 18 GHz connection 
- **Dual Coax**: Commutates up to two coaxial 18 GHz connections
- **SPI**: Commutates one 12-conductor Omnetics PZN-12 SPI connection

All of our commutators work in a similar way. This documentation applies to all variants and highlights differences where appropriate.

Follow the :ref:`quick_start` guide to verify the core functionality of your Open Ephys commutator. Learn in-depth about the commutators' features in the :ref:`user_guide`, or dive straight into the :doc:`user-guide/automatic-control/index` section to integrate a commutator with your acquisition hardware and software.

.. toctree::
    :hidden:
    :maxdepth: 2
    :titlesonly:

    quick-start-guide
    user-guide/index
    developer-guide

