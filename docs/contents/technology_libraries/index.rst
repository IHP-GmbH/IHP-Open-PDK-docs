Technology Libraries
====================

Technology libraries are delivered under ``ihp-sg13g2/libs.tech/``.

This tree contains the tool-specific technology support used by the SG13G2 PDK,
including layout-technology files, simulator model libraries, schematic-entry
symbols, and field-solver integrations.

Technology Directory Structure
------------------------------

The technology-library section follows the structure captured in
``docs/structure.txt`` and is organized around tool integrations.

.. list-table:: Technology library structure
   :header-rows: 1

   * - Directory
     - Delivered content
   * - ``klayout/``
     - ``lyt``, ``lyp``, ``map`` files, macros, pycells, netlist import support, 2.5D view support, and filler scripts
   * - ``magic/``
     - magic technology files
   * - ``netgen/``
     - Tcl setup files
   * - ``gdsfactory/``
     - programmatic-layout integration
   * - ``openroad/``
     - OpenROAD export support
   * - ``parasitics/``
     - ITF collateral
   * - ``librelane/``
     - digital-flow support
   * - ``ngspice/``
     - model libraries
   * - ``xyce/``
     - model libraries
   * - ``gnucap/``
     - model libraries and validation flow
   * - ``xschem/``
     - symbols and examples
   * - ``qucs-s/``
     - symbols and examples
   * - ``verilog-a/``
     - source models in Verilog-A
   * - ``digital/``
     - standard-cell primitives for the Digital simulator
   * - ``openems/``
     - EM FDTD field-solver support
   * - ``palace/``
     - FEM field-solver support

Library Notes
-------------

``klayout/``
~~~~~~~~~~~~

The KLayout technology directory is the main place for layout-view technology
support. The current tree contains:

- ``tech/sg13g2.lyt``: technology definition
- ``tech/sg13g2.lyp``: layer-properties file
- ``tech/sg13g2.map``: layer-map file
- macros and scripts under the KLayout tree
- pycell support under ``python/``
- 2.5D and cross-section related support under ``tech/``
- filler support referenced by digital-flow scripts

``magic/``
~~~~~~~~~~

The Magic technology directory contains the core ``.tech`` files and supporting
generator scripts used by Magic-based flows.

``netgen/``
~~~~~~~~~~~

The Netgen technology directory currently delivers the Tcl setup file
``ihp-sg13g2_setup.tcl``. This file contains device-specific comparison setup,
including resistor handling, property tolerances, and series/parallel rules.

``gdsfactory/``
~~~~~~~~~~~~~~~

The GDSFactory directory provides the Python-based layout-integration entry
point for SG13G2.

``openroad/``
~~~~~~~~~~~~~

The OpenROAD directory currently centers on export collateral. In particular:

- ``export.yml`` enumerates reference-library files prepared for OpenROAD flows
- ``generate.py`` regenerates ``export.yml`` from the current ``libs.ref`` tree

This makes ``openroad/`` primarily an integration/export bridge rather than a
standalone schematic or model library.

``parasitics/``
~~~~~~~~~~~~~~~

The ``parasitics/`` directory carries extraction-related collateral, currently
centered on ITF data.

``librelane/``
~~~~~~~~~~~~~~

The LibreLane support directory contains digital-flow configuration. The top-level
``config.tcl`` binds together:

- standard-cell and IO reference libraries
- Liberty corner selection
- LEF, GDS, CDL, Verilog, and SPICE references
- KLayout, Magic, and Netgen tool paths

Subdirectories such as ``sg13g2_stdcell`` and ``sg13g2_io`` carry library-specific
flow data.

``ngspice/`` and ``xyce/``
~~~~~~~~~~~~~~~~~~~~~~~~~~

These directories contain simulator model libraries.

- ``ngspice/models`` contains SPICE model and corner libraries
- ``ngspice/osdi`` contains compiled model payloads
- ``xyce/models`` contains SPICE model and corner libraries
- ``xyce/plugins`` contains compiled Xyce plugins

``gnucap/``
~~~~~~~~~~~

The Gnucap directory provides an alternative model implementation and validation
flow based on Verilog-A and Gnucap plugins.

``xschem/`` and ``qucs-s/``
~~~~~~~~~~~~~~~~~~~~~~~~~~~

These are the primary schematic-entry support directories in ``libs.tech``.

- ``xschem/`` delivers symbols, examples, testbenches, and simulator setup
- ``qucs-s/`` delivers symbols and worked examples

``verilog-a/``
~~~~~~~~~~~~~~

The Verilog-A directory contains compact-model source code organized by model
family and the scripts used to compile these models into simulator-specific
payloads.

``digital/``
~~~~~~~~~~~~

The Digital directory provides standard-cell primitive content for the
``Digital`` simulator.

``openems/`` and ``palace/``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These directories contain field-solver support:

- ``openems/`` for FDTD EM simulation workflows
- ``palace/`` for FEM EM simulation workflows

.. toctree::
    :maxdepth: 1
    :caption: Pages

    Model Compilation and Gnucap <../tech_library/03_model_compilation_and_gnucap>
