DRC Testing
===========

.. tip::
    - This section provides instructions for testing SG13G2-DRC using KLayout.
    - For detailed steps and resources, please refer to `Testing`_ directory.

.. _Testing: https://github.com/IHP-GmbH/IHP-Open-PDK/tree/dev/ihp-sg13g2/libs.tech/klayout/tech/drc/testing


Folder Structure
----------------

.. code-block:: rst

    📁 testing
    ┣ 📜README.md                       This file to document the regression.
    ┣ 📜run_regression.py               Main regression script used for DRC testing.
    ┣ 📁testcases                       All testcases used in regression.


Usage Guide
-----------

Golden Results (For Developers Only)
************************************

.. note::
    This section is intended for *developers*. If you are an end user, you can safely ignore it.

Golden unit tests are generated for all implemented and verified DRC rules and are stored in the `unit_golden` directory. These serve as the reference ("golden") results to validate the correctness of the DRC implementation.

To regenerate golden results based on the current rule implementation, use the following script:

.. code-block:: bash

    gen_golden.py (--help | -h)
    gen_golden.py [--table_name=<table_name>] [--run_dir=<dir>] [--mp=<num>] [--keep]


Example:

.. code-block:: bash

    python3 gen_golden.py --table_name=activ --run_dir=testcases/unit_golden


**Options**

.. code-block:: rst

    --table_name=<table_name>   Specify the rule table name for which to generate golden results.
    --run_dir=<dir>             Directory to store the output golden results.
    --mp=<num>                  Number of CPU cores to utilize for parallel processing.
    --keep                      Retain output logs and intermediate files after execution.


Regression Testing
******************

Use the regression script to validate current rule outputs against the golden references.

.. code-block:: bash

    run_regression.py (--help | -h)
    run_regression.py [--run_dir=<run_dir>] [--table_name=<table_name>] [--mp=<num>]


Example:

.. code-block:: bash

    python3 run_regression.py --table_name=activ --run_dir=activ_regression


**Options**

.. code-block:: rst

    --help -h                   Display this help message.
    --run_dir=<run_dir>         Directory where the regression results will be stored.
    --table_name=<table_name>   Specify the rule table to test.
    --mp=<num>                  Number of threads to use during the run

DRC Regression Outputs
######################

You could find the regression run results at your run directory if you previously specified it through `--run_name=<run_name>`. Default path of run directory is `unit_tests_<date>_<time>` in current directory.

**Folder Structure of regression run results**

.. code-block:: rst

    📁 unit_tests_<date>_<time>
    ┣ 📜 unit_tests_<date>_<time>.log
    ┣ 📜 all_test_cases_results.csv
    ┗ 📜 rule_deck_rules.csv
    ┗ 📁 <table_name>
        ┣ 📜 drc_run_<date>_<time>.log  
        ┣ 📜 <table_name>_drc.log
        ┣ 📜 <table_name>_main_markers_merged_analysis.log
        ┣ 📜 <table_name>.drc                     
        ┣ 📜 <table_name>_main_analysis.drc  
        ┣ 📜 <table_name>_main.lyrdb        
        ┣ 📜 <table_name>_main_markers_merged_final.lyrdb
        ┣ 📜 <table_name>_main_markers.gds  
        ┣ 📜 <table_name>_main_markers_merged.gds


The result is a database file (`<table_name>_main_markers_merged_final.lyrdb`) contains all violations. 
You could view it on your file using: `klayout <table_name>_main_markers_merged.gds -m <table_name>_main_markers_merged_final.lyrdb`, or you could view it on your gds file via marker browser option in tools menu using klayout GUI.
