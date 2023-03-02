:notoc:

.. **Date**: |today|

*************************************************
Open Ephys Commutators
*************************************************

.. image:: _static/images/commutator.png
    :alt: commutator image

Overview
*************

Open Ephys Commutators (OECs) are open-source, motorized commutators for reducing torsion of the tether that connects a
stationary data acquisition device to the headstage of a freely-moving animal undergoing electrophysiological or optical
measurement. OECs confer the following benefits to your ephys or miniscope experiments:

#. Promote exploratory behavior by reducing strain on the animal's head exerted by a heavy, twisted tether [#]_
#. Increase signal reliability by preserving the integrity of the tether and reducing the possibility of electrical disconnection [#]_


.. [#] .. image:: _static/images/footnote1_plot.png
            :alt: mouse movement plots

        (D) Cumulative 3D trajectories for each tether epoch. When the standard tether was used, the animal spent the
            majority of its time in restricted spatial locations, each approximately the size of a typical home cage. The
            ONIX ultra-coax allowed freedom to explore the entire maze.
        (E) The cumulative 3D trajectories of a second, unimplanted mouse match those of the mouse with the ONIX tether.

.. [#] .. image:: _static/images/blah.png
            :alt: ephys signal plots

        merp

Guides
=============================================

.. raw:: html

    <div class="container">
      <div  class="row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 row-cols-xs-1">
        <div class="col mb-4">
          <div class="card h-100 text-center intro-card shadow">
            <a href = quick-start-guide/index.html>
                <img src="_static/images/paper.svg" class="card-img-top" height="160">
                <div class="card-body flex-fill">
                  <p class="card-reference">Quick Start Guide</p>
                </div>
            </a>
          </div>
        </div>
        <div class="col mb-4">
          <div class="card h-100 text-center intro-card shadow">
            <a href =  user-guide/index.html>
                <img src="_static/images/noun_screwdriver.svg" class="card-img-top" height="160">
                <div class="card-body flex-fill">
                  <p class="card-reference">User Guide</p>
                </div>
            </a>
          </div>
        </div>
        <div class="col mb-4">
          <div class="card h-100 text-center intro-card shadow">
            <a href = designer-guide/index.html>
                <img src="_static/images/paper.svg" class="card-img-top" height="160">
                <div class="card-body flex-fill">
                  <p class="card-reference">Developer Guide</p>
                </div>
            </a>
          </div>
        </div>
      </div>
    </div>




License
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This work is licensed under CC BY-SA 4.0.

To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/

.. toctree::
   :hidden:
   :maxdepth: 2
   :titlesonly:

   quick-start-guide/index
   user-guide/index
   developer-guide/index
