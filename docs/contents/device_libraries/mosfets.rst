MOSFETs
=======

This page documents the MOSFET primitives currently exposed through the SG13G2
schematic libraries.

MOSFET Overview
---------------

The current ``xschem`` primitive library exposes both standard and RF-oriented
MOSFET symbols.

.. list-table:: Delivered MOSFET symbols
   :header-rows: 1

   * - Symbol
     - Model style
     - Typical use
   * - ``sg13_lv_nmos``
     - low-voltage NMOS
     - general analog and digital design
   * - ``sg13_hv_nmos``
     - high-voltage NMOS
     - thick-oxide / 3.3 V class usage
   * - ``sg13_lv_pmos``
     - low-voltage PMOS
     - general analog and digital design
   * - ``sg13_hv_pmos``
     - high-voltage PMOS
     - thick-oxide / 3.3 V class usage
   * - ``sg13_lv_rf_nmos``
     - RF NMOS view
     - RF-oriented simulation flow
   * - ``sg13_hv_rf_nmos``
     - RF high-voltage NMOS view
     - RF-oriented thick-oxide simulation flow
   * - ``sg13_lv_rf_pmos``
     - RF PMOS view
     - RF-oriented simulation flow
   * - ``sg13_hv_rf_pmos``
     - RF high-voltage PMOS view
     - RF-oriented thick-oxide simulation flow

MOS User Parameters
-------------------

The standard MOS symbols expose the same main user parameters.

.. list-table:: User-visible MOSFET parameters
   :header-rows: 1

   * - Parameter
     - Meaning
     - Used by
     - Notes
   * - ``w``
     - total transistor width
     - all MOSFET symbols
     - width is entered directly in the symbol
   * - ``l``
     - channel length
     - all MOSFET symbols
     - length is entered directly in the symbol
   * - ``ng``
     - number of gates or fingers
     - all MOSFET symbols
     - the Xschem documentation describes this as the gate-count parameter
   * - ``m``
     - multiplicity
     - all MOSFET symbols
     - additional instances of the same device
   * - ``rfmode``
     - RF-model switch
     - RF MOS symbols
     - present in RF symbols; default is ``1`` in the RF-NMOS symbol templates
   * - ``model``
     - simulator model name
     - all MOSFET symbols
     - standard symbols use ``sg13_*`` model names
   * - ``lvs_model``
     - LVS-facing model name
     - RF MOS symbols
     - RF symbols separate the simulation model from the LVS model name

MOS Default Symbol Templates
----------------------------

The current Xschem defaults for representative MOS symbols are:

.. list-table:: Default MOS symbol values
   :header-rows: 1

   * - Symbol
     - Default values
   * - ``sg13_lv_nmos``
     - ``l=0.13u``, ``w=0.15u``, ``ng=1``, ``m=1``, ``model=sg13_lv_nmos``
   * - ``sg13_hv_nmos``
     - ``l=0.45u``, ``w=0.3u``, ``ng=1``, ``m=1``, ``model=sg13_hv_nmos``
   * - ``sg13_lv_pmos``
     - ``l=0.13u``, ``w=0.15u``, ``ng=1``, ``m=1``, ``model=sg13_lv_pmos``
   * - ``sg13_lv_rf_nmos``
     - ``l=0.72u``, ``w=1.0u``, ``ng=1``, ``m=1``, ``rfmode=1``, ``model=sg13_lv_nmos``, ``lvs_model=rfnmos``

Notes on Extracted Parameters
-----------------------------

The existing LVS-oriented MOS documentation states that:

- ``w`` and ``l`` are preserved and compared directly
- ``m`` is generally absorbed into the total extracted width
- ``ng`` is not compared separately because extracted width already represents
  the total effective device width

The same documentation also notes that finger width can be interpreted as
``w / ng`` when reasoning about a multi-finger device.

MOS Simulator Library Mapping
-----------------------------

MOSFET models are delivered through the simulator model directories.

MOS in ``ngspice``
~~~~~~~~~~~~~~~~~~

- corner selectors: ``cornerMOSlv.lib`` and ``cornerMOShv.lib``
- family model files: ``sg13g2_moslv_mod.lib`` and ``sg13g2_moshv_mod.lib``
- additional files exist for statistical and mismatch-enabled usage
- compiled Verilog-A payloads are available in ``ngspice/osdi``

MOS in ``Xyce``
~~~~~~~~~~~~~~~

- corner selectors: ``cornerMOSlv.lib`` and ``cornerMOShv.lib``
- family model files: ``sg13g2_moslv_mod.lib`` and ``sg13g2_moshv_mod.lib``
- compiled Verilog-A plugins are available in ``xyce/plugins``

MOS in ``Gnucap``
~~~~~~~~~~~~~~~~~

The Gnucap tree contains MOS model and corner sources such as:

- ``cornerMOSlv.va``
- ``cornerMOShv.va``
- ``sg13g2_moslv_paramset.va``
- ``sg13g2_moshv_paramset.va``

This mirrors the model-implementation flow used for resistors: compiled plugins
plus Verilog corner modules, rather than a direct SPICE ``.lib`` include flow.

MOS Examples
------------

The Xschem test library already includes MOS examples for:

- DC sweeps
- AC response
- temperature sweeps
- Monte Carlo studies
- RF-mode comparisons
