Libraries
==========

Reference Libraries
===================

Reference libraries in the **IHP-Open-PDK** are named using the following scheme:

  `<Process name>` _ `<Library Type Abbreviation>` _ `<Library Name>`

All sections are **lower case** and separated by an **underscore**. The sections are;


- The `Process name` in is the name of the process technology, for this PDK it is always `sg13g2`.

- The `Library Type Abbreviation` is a short two letter abbreviation for the type of content found in the library. The table below shows the current list of `Library Type Abbreviations`;

  +--------------------------------+-----------------------------+
  | Library Type                   | `Library Type Abbreviation` |
  +================================+=============================+
  | Primitive Cells                | `pr`                        |
  +--------------------------------+-----------------------------+
  | Digital Standard Cells         | `stdcell`                   |
  +--------------------------------+-----------------------------+
  | IO and Periphery               | `io`                        |
  +--------------------------------+-----------------------------+
  | Static RAM                     | `sram`                      |
  +--------------------------------+-----------------------------+

- The `Library Name` is an optional short abbreviated name used when there are multiple libraries of a given type released from a single `library source`. If only one library of a given type is going to ever be released, this can be left out.

Each library type is organized using similar directory sturcture shown below:


.. code-block:: bash
    
  .
  ├── sg13g2_io
  │   ├── cdl
  │   ├── doc
  │   ├── gds
  │   ├── lef
  │   ├── lib
  │   ├── spice
  │   ├── verilog
  │   └── xschem
  ├── sg13g2_pr
  │   └── gds
  ├── sg13g2_sram
  │   ├── cdl
  │   ├── doc
  │   ├── gds
  │   ├── lef
  │   ├── lib
  │   └── verilog
  └── sg13g2_stdcell
      ├── cdl
      ├── doc
      ├── gds
      ├── lef
      ├── lib
      ├── spice
      └── verilog


Technology Libraries
===================



Creating New Libraries
======================

Third party developers are encourage to create new and interesting libraries for usage with the SG13G2 process technology. These libraries can even be included in the SG13G2 PDK if it meets the following criteria;

 - It is released under an Apache 2.0 approved license.
 - TODO: Finish the criteria.

