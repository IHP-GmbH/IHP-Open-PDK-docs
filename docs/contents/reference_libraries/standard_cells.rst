Standard Cell Library (sg13g2_stdcell)
======================================

The ``sg13g2_stdcell`` library provides the digital standard-cell reference
library under ``$PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/``.

Delivered views
---------------

The library currently ships the following main views and collateral:

- ``cdl/``: transistor-level CDL netlist
- ``gds/``: layout database
- ``lef/``: abstract physical views including ``sg13g2_stdcell.lef`` and ``sg13g2_tech.lef``
- ``lib/``: Liberty timing models for multiple corners
- ``verilog/``: Verilog models
- ``doc/``: cell list, release notes, and timing PDFs
- ``sch/``: tool-specific schematic sources
- ``sym/``: tool-specific symbol libraries

Schematic and symbol support
----------------------------

The upstream symbol and schematic documentation shows that the standard-cell
library is integrated with both ``xschem`` and ``qucs-s``.

- ``sym/xschem`` contains Xschem standard-cell symbols
- ``sym/qucs-s`` contains Qucs-S XML and geometry symbol files
- ``sch/xschem`` contains Xschem schematic sources for the cells
- ``sch/qucs-s`` contains Qucs-S schematic sources for the cells

For Xschem, the symbols are defined as subcircuit symbols and descend into the
matching schematics by default. The hierarchy-selection behavior is controlled
by the ``xschemrc`` configuration shipped in ``libs.tech/xschem``.

Timing and model corners
------------------------

The ``lib/`` and ``doc/`` directories contain multiple operating corners. The
currently shipped set includes typical, slow, and fast timing views for both
the 1.2 V and 1.5 V supply families.

Examples of delivered files include:

- ``sg13g2_stdcell_typ_1p20V_25C.lib``
- ``sg13g2_stdcell_slow_1p08V_125C.lib``
- ``sg13g2_stdcell_fast_1p32V_m40C.lib``
- ``sg13g2_stdcell_typ_1p50V_25C.lib``

The ``doc/sg13g2_stdcell.celllist`` file and timing PDFs document the available
cells and the corner-specific timing views.

.. _stdcell_detailed_cell_list:
Detailed Cell List
------------------

.. csv-table:: Standard-cell inventory
   :file: tables/sg13g2_stdcell_cells.csv
   :header-rows: 1
