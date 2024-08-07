Inductor Devices
================

inductor
--------

**Device Information**

.. list-table:: Inductor
   :header-rows: 1
   :stub-columns: 1

   * - Property
     - Value
   * - Description
     - 2-Terminal inductor (Single output)
   * - Device Recognition
     - IND, TopMetal2, PWell.blk, text
   * - Model Name
     - inductor
   * - Layout Cell Name
     - sg13g2_pr - inductor2
   * - Parameters
     - w, s, d, nr_r
   * - Netlist Syntax
     - `L1 LA LB sub! inductor w=2u s=2.1u d=25.35u nr_r=1`
   * - Additional Notes
     - Surrounded by filler exclusion layer for all metals, activ and GatPoly layers.

**Parameters Information**

.. list-table:: Schematic and LVS views Compatibility for inductor2 Parameters
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Description
     - Schematic-View
     - LVS-View
     - LVS-Comparison
   * - W
     - Width of inductor metal lines
     - ❌
     - ✅
     - ✅
   * - S
     - Spacing between metal lines of inductor
     - ❌
     - ✅
     - ✅
   * - D
     - Diameter of the inductor
     - ❌
     - ✅
     - ✅
   * - nr_r
     -  Number of turns
     - ❌
     - ✅
     - ✅

**Layout Information** (Refer to :ref:`layout layers`)

.. image:: images/inductor2_layout.png
    :width: 500
    :align: center
    :alt: inductor2 device - layout

.. rst-class:: center

    Figure 4.8.1 Layout for inductor2 device


inductor3
---------

**Device Information**

.. list-table:: Inductor3
   :header-rows: 1
   :stub-columns: 1

   * - Property
     - Value
   * - Description
     - 3-Terminal inductor (Differential output)
   * - Device Recognition
     - IND, TopMetal2, PWell.blk, text
   * - Model Name
     - inductor3
   * - Layout Cell Name
     - sg13g2_pr - inductor3
   * - Parameters
     - w, s, d, nr_r
   * - Netlist Syntax
     - `L1 LA LC LB sub! inductor3 w=2u s=2.1u d=25.35u nr_r=2`
   * - Additional Notes
     - Surrounded by filler exclusion layer for all metals, activ and GatPoly layers.

**Parameters Information**

.. list-table:: Schematic and LVS views Compatibility for Inductor3 Parameters
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Description
     - Schematic-View
     - LVS-View
     - LVS-Comparison
   * - W
     - Width of inductor metal lines
     - ❌
     - ✅
     - ✅
   * - S
     - Spacing between metal lines of inductor
     - ❌
     - ✅
     - ✅
   * - D
     - Diameter of the inductor
     - ❌
     - ✅
     - ✅
   * - nr_r
     -  Number of turns
     - ❌
     - ✅
     - ✅

**Layout Information** (Refer to :ref:`layout layers`)

.. image:: images/inductor3_layout.png
    :width: 500
    :align: center
    :alt: inductor3 device - layout

.. rst-class:: center

    Figure 4.8.2 Layout for inductor3 device
