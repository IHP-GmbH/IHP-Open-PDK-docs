LVS Testing
===========

.. tip::
    - This section provides instructions for testing SG13G2-LVS using KLayout.
    - For detailed steps and resources, please refer to `Testing`_ directory.

.. _Testing: https://github.com/IHP-GmbH/IHP-Open-PDK/tree/dev/ihp-sg13g2/libs.tech/klayout/tech/lvs/testing


Folder Structure
----------------

.. code-block:: rst

    📁 testing
    ┣ 📜README.md                 This file documents the contents of the testing directory.
    ┣ 📜Makefile                  Used for testing the SG13G2 LVS rule deck.
    ┣ 📜run_regression.py         Main regression script for testing SG13G2 devices.
    ┣ 📜run_regression_cells.py   Main regression script for testing SG13G2 cells.
    ┣ 📁testcases                 Contains all test cases used for LVS testing.

Devices Status
--------------

The following table explains the list of available SG13G2 devices we have supported in our LVS runset.

+-----------------+------------------+
| Device          | Tested           |
+=================+==================+
| **MOSFET**      |                  |
+-----------------+------------------+
| sg13_lv_nmos    |✅                |
+-----------------+------------------+
| sg13_hv_nmos    |✅                |
+-----------------+------------------+
| sg13_lv_pmos    |✅                |
+-----------------+------------------+
| sg13_hv_pmos    |✅                |
+-----------------+------------------+
| **RF-MOSFET**   |                  |
+-----------------+------------------+
| rfnmos          |✅                |
+-----------------+------------------+
| rfnmosHV        |✅                |
+-----------------+------------------+
| rfpmos          |✅                |
+-----------------+------------------+
| rfpmosHV        |✅                |
+-----------------+------------------+
| **BJTs**        |                  |
+-----------------+------------------+
| npn13G2         |✅                |
+-----------------+------------------+
| npn13G2L        |✅                |
+-----------------+------------------+
| npn13G2V        |✅                |
+-----------------+------------------+
| pnpMPA          |✅                |
+-----------------+------------------+
| **Diodes**      |                  |
+-----------------+------------------+
| dantenna        |✅                |
+-----------------+------------------+
| dpantenna       |✅                |
+-----------------+------------------+
| schottky_nbl1   |✅                |
+-----------------+------------------+
| **Resistors**   |                  |
+-----------------+------------------+
| rsil            |✅                |
+-----------------+------------------+
| rppd            |✅                |
+-----------------+------------------+
| rhigh           |✅                |
+-----------------+------------------+
| lvsres          |✅                |
+-----------------+------------------+
| **Capacitors**  |                  |
+-----------------+------------------+
| SVaricap        |✅                |
+-----------------+------------------+
| cap_cmim        |✅                |
+-----------------+------------------+
| rfcmim          |✅                |
+-----------------+------------------+
| **ESD**         |                  |
+-----------------+------------------+
| diodevdd_4kv    |✅                |
+-----------------+------------------+
| diodevdd_2kv    |✅                |
+-----------------+------------------+
| diodevss_4kv    |✅                |
+-----------------+------------------+
| diodevss_2kv    |✅                |
+-----------------+------------------+
| idiodevdd_4kv   |✅                |
+-----------------+------------------+
| idiodevdd_2kv   |✅                |
+-----------------+------------------+
| idiodevss_4kv   |✅                |
+-----------------+------------------+
| idiodevss_2kv   |✅                |
+-----------------+------------------+
| nmoscl_2        |✅                |
+-----------------+------------------+
| nmoscl_4        |✅                |
+-----------------+------------------+
| **Inductors**   |                  |
+-----------------+------------------+
| inductor        |✅                |
+-----------------+------------------+
| inductor3       |✅                |
+-----------------+------------------+
| **Taps**        |                  |
+-----------------+------------------+
| ptap1           |✅                |
+-----------------+------------------+
| ntap1           |✅                |
+-----------------+------------------+

Devices Regression Usage
------------------------

.. code-block:: bash

    run_regression.py (--help| -h)
    run_regression.py [--device=<device>] [--run_dir=<run_dir_path>] [--mp=<num>]


Example:

.. code-block:: bash

    python3 run_regression.py --device_name=MOS --run_dir=test_mos


**Options**

.. code-block:: rst

    `--help -h`                  Print this help message.
    `--device=<device>`          Select device category you want to run regression on.
    `--run_dir=<run_dir_path>`   Run directory to save all the results [default: pwd]
    `--mp=<num>`                 The number of threads used in run.


Another approach for testing SG13G2 devices, you could make a full test for SG13G2 LVS rule deck, by executing the following command in current testing directory:

.. code-block:: bash
    
    make test-LVS-main


Cells Regression Usage
----------------------

.. code-block:: bash

    run_regression_cells.py (--help| -h)
    run_regression_cells.py [--cell=<cell>] [--run_dir=<run_dir_path>] [--mp=<num>]


Example:

.. code-block:: bash

    python3 run_regression_cells.py --cell=sg13g2_inv_1 --run_dir=test_inv


**Options**

.. code-block:: rst

    `--help -h`                  Print this help message.
    `--cell=<cell>`              Specify the cell to run; all cells run if not specified.
    `--run_dir=<run_dir_path>`   Run directory to save all the results [default: pwd]
    `--mp=<num>`                 The number of threads used in run.


Another approach for testing SG13G2 cells, you could make a full test for SG13G2 cells, by executing the following command in current testing directory:

.. code-block:: bash

    make test-LVS-cells


LVS Outputs
***********

You could find the regression run results at your run directory if you previously specified it through `--run_name=<run_name>`. Default path of run directory is `unit_tests_<date>_<time>` in the current testing directory.

**Folder Structure of regression run results**

.. code-block:: rst

    📁 unit_tests_<date>_<time>
    ┣ 📜 unit_tests_<date>_<time>.log
    ┣ 📜 all_test_cases_results.csv
    ┗ 📜 rule_deck_rules.csv
    ┗ 📁 <device_name>
        ┣ 📜 <device_name>_lvs.log
        ┣ 📜 <device_name>.gds
        ┣ 📜 <device_name>.cdl
        ┣ 📜 <device_name>_extracted.cir                     
        ┣ 📜 <device_name>.lvsdb


The outcome includes a database file for each device (`<device_name>.lvsdb`) containing LVS extractions and comparison results. You can view it by opening your gds file with: `klayout <device_name>.gds -mn <device_name>.lvsdb`. Alternatively, you can visualize it on your GDS file using the netlist browser option in the tools menu of the KLayout GUI.
