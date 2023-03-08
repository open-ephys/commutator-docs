
*************************************************
Developer Guide
*************************************************

Open Source Designs
*************************************************

The designs for the commutators are open-source. Accordingly, all of the files relevant to manufacturing the commutator are
available in this `public Open Ephys Github repo <https://github.com/open-ephys/onix-commutator>`_. The downloads are
also available below:

Bill of Materials (BoM)
*************************************************

This BoM contains links to specific vendors solely to calculate a total price. open ephys is not affiliated, and there
are other places to get these parts. This BoM was created using prices on March 2nd, 2023.

Prices depend on where you decide to manufacture these parts. More on that below.

..
    .. csv-table:: Table Title
        :file: "./ONIX Commutator BOM - Mechanical.csv"
        :header-rows: 1

DIY
*************************************************

The following sections describes design considerations

Mechanical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



Electrical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Computational
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Manufacturing
*************************************************

The following sections describe how to manufacture the parts that are custom

This should probably be on its own page so that we can refer people to it from multiple products' documentations instead
of each products' documentation containing its own manufacturing tips

Mechanical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you desire low quantity, first seek out local options. Many universities or libraries offer free 3D printing
services. They don't always have SLS/MJF like which is how the commutator enclosures were manufactured, but you can probably design a
new enclosure that makes use of FDM or SLA 3D printing if necessary. The biggest difference is that you will need to design
supports to assist in the printing process in an MCAD software such as Solidworks, Fusion360, or FreeCAD. If you don't have access to a SLS/MJF printer and don't want to design other
enclosures, there are many online manufacturers that will 3D print this for you. They cost more and often have a minimum
price to purchase (i.e. 3DHubs has a $90 minimum for those services at the time of writing this) which is not ideal if
you are trying to print a low quantity of pieces. Other popular ones include Formlabs, etc. etc.

Electrical
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

PCBs are pretty cheap. You no longer have to order in bulk to get them relatively cheap. For instance,
You can get a 5-pack of PCBs from JLCPCB for less than $10.

General Tips
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you foresee being able to use multiple of these pieces, you benefit from ordering many for a cheaper price per piece.
If you do not foresee that, you can still benefit from economies of scale while saving yourself (or a poor overworked
undergrad/lab manager) from the labor of purchasing and assembling several parts from several vendors as well as the
dread of lead times by purchasing from us. And you get to support `open ephys <https://open-ephys.org/about-us-overview>`_ :D

Assembly
*************************************************

.. toctree::
    :hidden:

    mechanical