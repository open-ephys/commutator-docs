
Computer Vision
****************************************************************

.. image:: ../../../_static/images/computervision.jpg

.. Note:: To commutate in real-time using computer vision, a high-end NVIDIA graphics card is recommended. The better
   the GPU, the more computationally heavy tasks your computer will be able to perform in real-time such as processing
   higher resolution images or more frames per second.

There are two pose-estimation software suites that can be interfaced with Bonsai and a camera to automate commutation of
the coaxial tether attached to the head stage of a freely moving animal using computer vision.
They are :ref:`SLEAP` and :ref:`DeepLabCut`

.. _SLEAP:

SLEAP
##########

This section outlines how to use Bonsai and SLEAP to automate commutation of the
coaxial tether connected to the headstage of a freely moving animal using computer vision.

#. Follow the :ref:`quick_start` to ensure you can control the commutator using Bonsai.

#. Install the **Bonsai.Sleap.Design** and **Bonsai.StarterPack** Packages from Bonsai's package manager.

   - Select Bonsai Feed

     .. image:: ../../../_static/images/bonsai-feed.png
        :alt: Screenshot for selecting package source

   - Install **Bonsai.Sleap.Design** and **Bonsai.StarterPack** by searching and clicking install. For example:

     .. image:: ../../../_static/images/install-bonsai-starter.png
        :alt: Screenshot for installing Bonsai.StarterPack

#. Prepare your network model for automating commutation:

   #. Follow `these instructions to train a network model <https://sleap.ai/develop/tutorials/initial-labeling.html>`_
      if you do not already have one

   #. Follow `these instructions to configure your trained network <https://sleap.ai/develop/guides/choosing-models.html>`_

#. Download, configure, and run the following Bonsai workflow for automating commutation using SLEAP:

   .. raw:: html

        <div class="bonsai-workflow-container">
            <div class="workflow-filler"></div>
            <div class="workflow-download"><img class="download-copy-img" src="../../../_static/images/download.svg" onclick="getFileFromURL('../../../_static/downloads/sleap-commutate.zip')" width=18px /></div>
            <div class="workflow-copy"><img class="download-copy-img" src="../../../_static/images/copy.svg" onclick="getTextFromURL('../../../_static/downloads/sleap-commutate.zip')" width=18px /></div>
            <div class="workflow-name"><b>sleap-commutate.zip</b></div>
            <div class="workflow-image"><img src="../../../_static/images/sleap-commutate.svg" alt="sleap-commutate" /></div>
        </div>

   #. Direct the *Algorithm* node/sub-workflow to your trained network (.pb file)
      by single-left-clicking the *Algorithm* node and setting the value for *ModelFileName*

   #. Direct the *Algorithm* node/sub-workflow to your network configuration (.json file)
      by single-left-clicking the *PredictSinglePose* node and setting the value for *TrainingConfig*

   .. todo:: set up camera, save file

   .. note:: Be sure to configure the **PortName** property of the **Commutator** node to reflect the port to which the
      commutator is connected.

#. Run the workflow in Bonsai. If all above steps are correctly performed, the commutator will follow mouse rotations

.. _DeepLabCut:

DeepLabCut
#################