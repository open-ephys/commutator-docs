.. _automate-commutation:

Automated Commutation
*************************
The commutator's :ref:`remote control <remote_control>` enables moment-to-moment orientation data from a freely moving animal to drive the commutator automatically with minimal manual intervention. Orientation data can be acquired from a 3D capable headstage or miniscope, or from extracted from a behavioral camera (computer vision). Different software options exist to interface between the source of orientation data and the commutator.

.. image:: /_static/images/demo.gif
    :align: center

Using a 3D Capable Headstage/Miniscope
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This method requires a headstage or a miniscope that has an onboard sensor capable of providing absolute orientation data such as the Open Ephys 3D capable headstages with 9-axis inertial measurement units (IMUs). Click a card from the matrix below to navigate to instructions for automating commutation using your particular set of hardware and software.

..  grid:: 

    ..  grid-item:: 
        :columns: 12
        
        ..  grid:: 
            :gutter: 0
            :margin: 0
            :padding: 0

            ..  grid-item:: 
                :columns: 1
                :child-direction: row
                :child-align: center
                :margin: 0
                :padding: 0

            ..  grid-item:: ONIX
                :child-direction: row
                :child-align: center
                :margin: 0
                :padding: 0

            ..  grid-item:: Acquisition Board Gen3
                :child-direction: row
                :child-align: center
                :margin: 0
                :padding: 0

            ..  grid-item:: Miniscope DAQ
                :child-direction: row
                :child-align: center
                :margin: 0
                :padding: 0

    ..  grid-item:: 
        :columns: 12

        ..  grid:: 

            ..  grid-item:: Bonsai
                :columns: 1
                :child-align: center
                :margin: 0
                :padding: 0
                :class: center-text

            ..  grid-item-card::
                :link: https://open-ephys.github.io/bonsai-onix1-docs/articles/hardware/index.html 
                :img-background: /_static/images/breakout-bonsai.png 
                :class-card: page-card

            ..  grid-item:: 
                :child-align: center
                :class: center-text

                Not currently supported

            ..  grid-item-card:: 
                :link: https://open-ephys.github.io/miniscope-docs/ucla-miniscope-v4/user/miniscope-daq/commutate/index.html
                :img-background: /_static/images/miniscopedaq-bonsai.png 
                :class-card: page-card

    ..  grid-item:: 
        :columns: 12

        ..  grid:: 

            ..  grid-item:: Open Ephys GUI
                :columns: 1
                :child-align: center
                :margin: 0
                :padding: 0
                :class: center-text

            ..  grid-item-card::
                :link: https://open-ephys.github.io/gui-docs/User-Manual/Plugins/Commutator-Control.html
                :img-background: /_static/images/breakout-oegui.png 
                :class-card: page-card 

                ..  raw:: html

                    <div data-bs-toggle="tooltip" data-bs-placement="top" 
                    title="The Onix Source plugin is in development. Check back soon!" 
                    data-container="body" style="height:100%; width:100%; overflow:visible;
                    z-index:1000; position:absolute;"></div>

            ..  grid-item-card:: 
                :link: https://open-ephys.github.io/acq-board-docs/Tutorials/Commutator.html
                :img-background: /_static/images/acqboard-oegui.png 
                :class-card: page-card 

            ..  grid-item:: 
                :child-align: center
                :class: center-text

                Not applicable

Using Computer Vision
^^^^^^^^^^^^^^^^^^^^^^^

This method requires a computer with sufficient graphics processing capabilities
and training a network to track your animal and extract orientation data. Follow the :ref:`computer_vision` guide

.. toctree::
    :hidden:

    computer-vision
