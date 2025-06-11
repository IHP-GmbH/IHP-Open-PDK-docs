Usage
=====

.. note::
    You have the option to execute the SG13G2-DRC through either a Python script via the command-line interface (CLI) or by the Klayout graphical user interface (GUI), as detailed in the subsequent usage sections.

.. _CLI Usage:

CLI
---

The `run_drc.py` script takes your gds to run DRC rule decks with switches to select subsets of all checks.

.. code-block:: bash

    run_drc.py (--help| -h)
    run_drc.py (--path=<file_path>) [--table=<table_name>]... [--mp=<num_cores>] [--run_dir=<run_dir_path>]
    [--topcell=<topcell_name>] [--thr=<thr>] [--run_mode=<run_mode>] [--drc_json=<json_path>] [--no_feol]
    [--no_beol] [--MaxRuleSet] [--no_connectivity] [--density] [--density_only] [--antenna] [--antenna_only]
    [--no_offgrid] [--macro_gen]

**Options:**

.. code-block:: rst

    - `--help -h`                           Displays this help message.
    - `--path=<file_path>`                  Specifies the file path of the input GDS file.
    - `--topcell=<topcell_name>`            Specifies the name of the top cell to be used.
    - `--table=<table_name>`                Specifies the name of the table on which to execute the rule deck.
    - `--mp=<num_cores> `                   Run the rule deck in parts in parallel to speed up the run. [default: 1]
    - `--run_dir=<run_dir_path>`            un directory to save all the generated results [default: pwd]
    - `--thr=<thr>`                         Specifies the number of threads to use during the run.
    - `--run_mode=<run_mode>`               Selects the allowed KLayout mode, (flat , deep, tiling). [default: deep]
    - `--drc_json=<json_path>`              Path to the JSON file that contains the DRC rules values to be used.
    - `--no_feol`                           Disables FEOL rules from running.
    - `--no_beol`                           Disables BEOL rules from running.
    - `--MaxRuleSet`                        Runs DRC using the complete rule deck.
    - `--no_connectivity`                   Disables connectivity rules.
    - `--density`                           Enables Density rules.
    - `--density_only`                      Runs Density rules only.
    - `--antenna`                           Enables Antenna checks.
    - `--antenna_only`                      Runs Antenna checks only.
    - `--no_offgrid`                        Disables OFFGRID checking rules.
    - `--macro_gen`                         Generating the full rule deck without run.

.. note::

    * If the `--drc_json=<json_path>` option is not provided, the script will attempt to use the [SG13G2 tech JSON](https://github.com/IHP-GmbH/IHP-Open-PDK/tree/dev/ihp-sg13g2/libs.tech/klayout/python/sg13g2_pycell_lib/sg13g2_tech_mod.json) file. 
    * If that file is missing, it will fall back to the [default tech DRC values](https://github.com/IHP-GmbH/IHP-Open-PDK/tree/dev/ihp-sg13g2/libs.tech/klayout/tech/drc/rule_decks/default_drc_rules.json) file.

**Example:**

.. code-block:: bash

        python3 run_drc.py --path=testing/testcases/unit/activ.gds --run_mode=deep --run_dir=test_activ

**DRC Outputs**

You could find the run results at your run directory if you previously specified it through `--run_dir=<run_dir_path>`. Default path of run directory is `drc_run_<date>_<time>` in current directory.

Folder Structure of run results

.. code-block:: rst

    📁 drc_run_<date>_<time>
    ┣ 📜 drc_run_<date>_<time>.log
    ┗ 📜 main.drc
    ┗ 📜 <your_design_name>.lyrdb


The outcome includes a database (`<your_design_name>.lyrdb`) containing DRC results. You can view it by opening your gds file with: `klayout <device_name>.gds -m <your_design_name>.lyrdb`. Alternatively, you can visualize it on your GDS file using the netlist browser option in the tools menu of the KLayout GUI as illustrated in the following figures.

.. image:: images/drc_marker_1.png
    :width: 600
    :align: center
    :alt: Marker Browser for Klayout-DRC

.. rst-class:: center

    Figure 5.4.1 Marker Browser for Klayout-DRC

After selecting Marker Browser option, you could load the database file and visualize the DRC results.

.. image:: images/drc_marker_2.png
    :width: 700
    :align: center
    :alt: Loading DRC database file - 1

.. rst-class:: center

    Figure 5.4.2 Loading DRC database file - 1

.. image:: images/drc_marker_3.png
    :width: 700
    :align: center
    :alt: Loading DRC database file - 2

.. rst-class:: center

    Figure 5.4.3 Loading DRC database file - 2

.. image:: images/drc_marker_4.png
    :width: 700
    :align: center
    :alt: Visualize DRC results

.. rst-class:: center

    Figure 5.4.4 Visualize DRC results


GUI
---

The SG13G2 also facilitates DRC execution via Klayout menus as depicted below:

First, you need to add the DRC menus to your `KLAYOUT_PATH`, you could do that by executing the following command:

.. code-block:: bash

    KLAYOUT_PATH=$PDKPATH/libs.tech/klayout:$PDKPATH/libs.tech/klayout/tech/ klayout -e

.. tip::
    In this context, `PDKPATH` refers to the path leading to the IHP-Open-PDK/ihp-sg13g2 directory within the current repository.

Then, you will get the DRC menus for SG13G2, you could set your desired options as shown below:

.. image:: images/drc_menus_1.png
    :width: 700
    :align: center
    :alt: Setting up DRC Options-GUI - 1

.. rst-class:: center

    Figure 5.4.5 Setting up DRC Options-GUI - 1

.. image:: images/drc_menus_2.png
    :width: 500
    :align: center
    :alt: Setting up DRC Options-GUI - 2

.. rst-class:: center

    Figure 5.4.6 Setting up DRC Options-GUI - 2

For additional details on GUI options, please refer to the :ref:`CLI Usage`.

Finally, after setting your option, you could execute the DRC using `Run Klayout DRC` from the dropdown menu.

.. image:: images/drc_menus_3.png
    :width: 700
    :align: center
    :alt: Running DRC using Klayout menus

.. rst-class:: center

    Figure 5.4.7 Running DRC using Klayout menus

Upon executing the DRC, the result database will appear on your layout interface, allowing you to verify the outcome of the run.

.. image:: images/drc_menus_3.png
    :width: 700
    :align: center
    :alt: Running DRC using Klayout menus

.. rst-class:: center

    Figure 5.4.8 Running DRC using Klayout menus
