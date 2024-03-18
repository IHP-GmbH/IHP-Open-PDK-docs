Diode-Devices
=============

dantenna
--------

**Device Information**

.. list-table:: Antenna diode - Low voltage protection
   :header-rows: 1
   :stub-columns: 1

   * - Property
     - Value
   * - Description
     - Protection diode for MOS gates. Substrate is anode, metal is cathode.
   * - Device Recognition
     - Activ + Recog.diode
   * - Model Name
     - dantenna
   * - Layout Cell Name
     - sg13g2_pr - dantenna
   * - Parameters
     - w, l, a, p, m
   * - Additional Notes
     - The anode of the diode should be connected to the ptap1 resistor.

**Parameters Information**

.. list-table:: Xschem and LVS views Compatibility for dantenna Parameters
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Description
     - Xschem-View
     - LVS-View
   * - W
     - Diode device active width
     - ✅
     - ✅
   * - L
     - Diode device active length
     - ✅
     - ✅
   * - A
     - Diode device active area
     - ❌
     - ✅
   * - P
     - Diode device active perimeter
     - ❌
     - ✅
   * - m
     - Number of diodes (multiplicity)
     - ❌
     - ✅


**Layout Information** (Refer to :ref:`layout layers`)

.. image:: images/dantenna_layout.png
    :width: 600
    :align: center
    :alt: dantenna device - layout

.. rst-class:: center

    Figure 4.4.1 Layout for dantenna diode device


dpantenna
---------

**Device Information**

.. list-table:: Antenna diode - High voltage protection
   :header-rows: 1
   :stub-columns: 1

   * - Property
     - Value
   * - Description
     - Protection diode for MOS gates. Substrate is cathode, metal is anode.
   * - Device Recognition
     - Activ + Recog.diode + pSD
   * - Model Name
     - dpantenna
   * - Layout Cell Name
     - sg13g2_pr - dpantenna
   * - Parameters
     - w, l, a, p, m
   * - Additional Notes
     - The cathode of the diode should be connected to the ntap1 resistor.

**Parameters Information**

.. list-table:: Xschem and LVS views Compatibility for dpantenna Parameters
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Description
     - Xschem-View
     - LVS-View
   * - W
     - Diode device active width
     - ✅
     - ✅
   * - L
     - Diode device active length
     - ✅
     - ✅
   * - A
     - Diode device active area
     - ❌
     - ✅
   * - P
     - Diode device active perimeter
     - ❌
     - ✅
   * - m
     - Number of diodes (multiplicity)
     - ❌
     - ✅


**Layout Information** (Refer to :ref:`layout layers`)

.. image:: images/dpantenna_layout.png
    :width: 600
    :align: center
    :alt: dpantenna device - layout

.. rst-class:: center

    Figure 4.4.2 Layout for dpantenna diode device


schottky_nbl1
-------------

**Device Information**

.. list-table:: schottky diode.
   :header-rows: 1
   :stub-columns: 1

   * - Property
     - Value
   * - Description
     - Schottky Diode.
   * - Device Recognition
     - Activ, metal1, NWell, ThickGateOx, SalBlock, nBuLay, pSD, nSD.blk, PWell.blk, Recog.diode
   * - Model Name
     - schottky_nbl1
   * - Layout Cell Name
     - sg13g2_pr - schottky_nbl1
   * - Parameters
     - l, w, Nx, Ny, m
   * - Additional Notes
     - Anode is the activ & metal under SalBlock, cathode is the activ & metal inside Nwell.

**Parameters Information**

.. list-table:: Xschem and LVS views Compatibility for schottky_nbl1 Parameters
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Description
     - Xschem-View
     - LVS-View
   * - W
     - ContBar width
     - ❌
     - ✅
   * - L
     - ContBar length
     - ❌
     - ✅
   * - Nx
     - Number of schottky diodes in x-axis
     - ❌
     - ✅
   * - Ny
     - Number of schottky diodes in y-axis
     - ❌
     - ✅
   * - m
     - Number of schottky diodes (multiplicity)
     - ❌
     - ✅

**Layout Information** (Refer to :ref:`layout layers`)

.. image:: images/schottky_nbl1_layout.png
    :width: 600
    :align: center
    :alt: schottky_nbl1 device - layout

.. rst-class:: center

    Figure 4.4.3 Layout for schottky_nbl1 diode device
