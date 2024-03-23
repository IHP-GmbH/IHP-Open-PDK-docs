Truth Table for SG13G2 SiGe BiCMOS Process
==========================================

The Topological Truth Table is a design aid that helps establish the relationship between:

    - IHP-defined topological layers: These are the fundamental building blocks used to construct an integrated circuit (IC) layout.
    - Discrete structures: These are individual elements within the IC, such as transistors, resistors, and capacitors.

.. note::

    The table serves two primary purposes:

    - Verifying implant layer generation: This table can be used to ensure that the specified implants are correctly applied to various discrete structures.
    - Understanding layer-structure interactions: clarifies how each topological layer interacts with different structures. 

    Here's an explanation of the symbols used in the table:

        **0**: The topological level must not touch the structure.

        **1**: The topological level must either enclose or match the structure.

        **X**: The layer has no electrical impact on the structure.

    By effectively utilizing the Topological Truth Table, designers can ensure accurate and efficient layout creation within the integrated circuit design process.

.. .. only:: html

..    .. csv-table:: Truth Table for SG13G2 SiGe BiCMOS Process
..       :class: rotate-table
..       :file: tables/truth_table_lvs.csv
..       :header-rows: 1
..       :stub-columns: 1
..       :widths: auto

.. .. only:: latex

..    .. csv-table:: Truth Table for SG13G2 SiGe BiCMOS Process - Part 1
..       :file: tables/truth_table_lvs_1.csv
..       :header-rows: 1
..       :stub-columns: 1
..       :widths: auto

..    .. csv-table:: Truth Table for SG13G2 SiGe BiCMOS Process - Part 2
..       :file: tables/truth_table_lvs_2.csv
..       :header-rows: 1
..       :stub-columns: 1
..       :widths: auto

..    .. csv-table:: Truth Table for SG13G2 SiGe BiCMOS Process - Part 3
..       :file: tables/truth_table_lvs_3.csv
..       :header-rows: 1
..       :stub-columns: 1
..       :widths: auto

.. rst-class:: rotated-header

.. csv-table:: Truth Table for SG13G2 SiGe BiCMOS Process
   :class: longtable, align-default, docutils
   :file: tables/truth_table_lvs.csv
   :header-rows: 1
   :stub-columns: 1
   :widths: auto
