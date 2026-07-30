SRAM Library (sg13g2_sram)
==========================

The ``sg13g2_sram`` library provides SRAM macro instances under
``$PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_sram/``.

Delivered views
---------------

The library currently ships:

- ``cdl/``: macro CDL netlists
- ``gds/``: macro layouts
- ``lef/``: abstract macro views
- ``lib/``: Liberty timing models
- ``verilog/``: behavioral and macro Verilog views
- ``doc/``: macro datasheets

Available macro families
------------------------

The delivered SRAM set contains both one-port and two-port macros.

- one-port macros use names beginning with ``RM_IHPSG13_1P_``
- two-port macros use names beginning with ``RM_IHPSG13_2P_``

Examples present in the current library include:

- ``RM_IHPSG13_1P_1024x32_c2_bm_bist``
- ``RM_IHPSG13_1P_256x64_c2_bm_bist``
- ``RM_IHPSG13_1P_8192x32_c4``
- ``RM_IHPSG13_2P_64x32_c2``
- ``RM_IHPSG13_2P_1024x16_c2_bm_bist``

The current tree contains 29 macro entries each in ``cdl/``, ``gds/``, ``lef/``,
and ``doc/``, with the ``lib/`` directory carrying multiple timing corners per macro.

What the datasheets provide
---------------------------

The text datasheets in ``doc/`` describe the macro interface and operating
behavior. For example, the datasheet for ``RM_IHPSG13_1P_1024x32_c2_bm_bist``
documents:

- macro size: 1024 words x 32 bits
- one-cycle data access
- explicit address, data, mask, enable, and clock pins
- BIST-related interface signals
- supply pins such as ``VDD``, ``VSS``, and ``VDDARRAY``

Designers should treat the SRAM library as a macro library with multiple fixed
instances, not as a parameterized memory generator inside the PDK documentation.

Detailed Macro List
-------------------

.. csv-table:: SRAM macro inventory
   :file: tables/sg13g2_sram_macros.csv
   :header-rows: 1
