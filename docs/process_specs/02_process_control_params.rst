Process Control Parameters
==========================

.. role:: red
   :class: red-text

.. role:: blue
   :class: blue-text

.. role:: ital
   :class: blue-text2

NMOS-Specs
----------

.. tip::
    `VGS ≤ 1.65 V @ 125°C`

.. csv-table:: NMOS - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/nmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300

PMOS-Specs
----------

.. tip::
    `VGS ≤ 1.65 V @ 125°C`

.. csv-table:: PMOS - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/pmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300

iNMOS-Specs
-----------

.. tip::
    `VGS ≤ 1.65 V @ 125°C`

.. csv-table:: INMOS - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/inmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


HV-NMOS-Specs
-------------

.. tip::
    `VGS ≤ 3.3V (Maximum) @ 27°C for LG ≥ 0.6 µm`

.. csv-table:: HV-NMOS - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/hvnmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


HV-PMOS-Specs
-------------

.. tip::
    `VGS ≤ 3.3V (Maximum) @ 27°C for LG ≥ 0.5 µm`

.. csv-table:: HV-PMOS - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/hvpmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


HV-iNMOS-Specs
--------------

.. tip::
    `VGS ≤ 3.3V (Maximum) @ 27°C for LG ≥ 0.6 µm`

.. csv-table:: HV-iNMOS - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/hvinmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


Rsil-Specs
----------

.. tip::
    Rsil utilizes **salicided, n-doped gate polysilicon** as resistor material.

.. csv-table:: Rsil - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/rsil_params.csv
    :widths: 200, 150, 150, 100, 100, 100, 100, 300


Rppd-Specs
----------

.. tip::
    Rppd utilizes **unsalicided, p-doped gate polysilicon** as resistor material. For realizing precision resistors, a line width of 2µm or higher is recommended.

.. csv-table:: Rppd - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/rppd_params.csv
    :widths: 200, 150, 150, 100, 100, 100, 100, 300


Rhigh-Specs
-----------

.. tip::
    Rhigh utilizes **unsalicided, partially compensated gate polysilicon** as resistor material.

.. csv-table:: Rhigh - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/rhigh_params.csv
    :widths: 200, 150, 150, 100, 100, 100, 100, 300


Schottky_nbl1-Specs
-------------------

.. tip::
    This Schottky barrier diode utilizes **Nbulay** as cathode.

.. csv-table:: Schottky_nbl1 - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/schottky_nbl1_params.csv
    :widths: 200, 150, 150, 100, 100, 100, 100, 300


S-Varicap-Specs
---------------

.. tip::
    Thick Gate Oxide

.. csv-table:: S-Varicap - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/svaricap_params.csv
    :widths: 200, 150, 150, 100, 100, 100, 100, 300


MIM Capacitor-Specs
-------------------

.. csv-table:: MIM Capacitor - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/mimcap_params.csv
    :widths: 200, 150, 150, 100, 100, 100, 100, 300


Resistances, Line Width Deltas, Temperature Coefficients
--------------------------------------------------------

.. csv-table:: Resistances, Line Width Deltas, Temperature Coefficients - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/res_params.csv
    :widths: 250, 200, 100, 100, 100, 100, 100, 300


Contact & Via Resistances
-------------------------

.. csv-table:: Contact & Via Resistances - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/contact_vias_params.csv
    :widths: 250, 200, 150, 100, 100, 100, 150, 300


Maximum Current Densities
-------------------------

.. tip::
    `(11 years @105°C)`

.. csv-table:: Maximum Current Densities - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/curr_dens_params.csv
    :widths: 200, 200, 150, 100, 100, 100, 100, 300


Layer Thickness Values
----------------------

.. csv-table:: Layer Thickness Values - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/layer_thick_params.csv
    :widths: 300, 200, 100, 100, 100, 100, 100, 300


Parasitic Capacitances
----------------------

.. csv-table:: Parasitic Capacitances - Process Control Parameters
    :header: "Parameter", "Name", "Unit", "Min", "Target", "Max", "Meas.Cond.", "Comment"
    :stub-columns: 0
    :file: tables/parasitic_cap_params.csv
    :widths: 250, 200, 150, 100, 100, 100, 100, 300
