Diode-Devices
=============

dantenna
--------

**Device Information**

.. list-table:: Antenna diode used to protect against low voltage.
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

.. list-table:: Antenna diode used to protect against high voltage.
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
