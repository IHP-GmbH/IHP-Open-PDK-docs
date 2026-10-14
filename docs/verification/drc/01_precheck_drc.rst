.. _precheck_drc:

Precheck (Minimal) DRC rules
=============================

.. role:: red
   :class: red-text

.. tip::

    These are used for rejection tests during the pre-tapeout checks. To check only this rule set, run:

    .. code-block:: bash

        python3 run_drc.py --path=<your_design>.gds --minimum_drc

    ``--minimum_drc`` (short form ``--min_drc``) implies ``--disable_extra_rules``, ``--no_offgrid`` and
    ``--no_angle``, and antenna rules are not run. ``--precheck_drc`` still works as a deprecated alias of
    ``--minimum_drc`` and will be removed in a future release. See the :doc:`DRC usage page <04_04_usage>`
    for the other options.

Activ (not in BEOL)
-------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_active.csv

Activ Filler (not in BEOL)
--------------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_activ_filler.csv

Thick Gate Oxide (not in BEOL)
------------------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_tgo.csv
    
GatPoly (not in BEOL)
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_gatpoly.csv
    
GatPoly Filler (not in BEOL)
----------------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_gatpoly_filler.csv
    
Cont (not in BEOL)
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_cont.csv
    
Metal
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_metal.csv
        
Metal Filler
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_metal_filler.csv
    
Via
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_via.csv
    
TopVia1
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_topvia1.csv
    
TopMetal1
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_topmetal1.csv
    
TopVia2
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_topvia2.csv
    
TopMetal2
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_topmetal2.csv
        
TopMetal Filler
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_topmetal_filler.csv
    
Passiv
---------------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_passiv.csv

Density rules
--------------

Front-end density rules
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_fedensity.csv
    
Back-end density rules
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_bedensity.csv
    
LBE
--------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_lbe.csv

Pad Dimensions
--------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_pad.csv
    
Solder Bump Rules
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_sbump.csv
    
Copper Pillar Rules
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_cupillar.csv

Sealring
--------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_sealring.csv
    
Pin layer rules
----------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_pin.csv
    
Forbidden layers
----------------

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/precheck_drc_forbidden.csv
    
.. include:: tables/_precheck_drc_rule_count.rst

SG13CMOS5L
----------

SG13CMOS5L uses the same precheck rule set, run with the ``--minimum_drc`` option of its own
``run_drc.py`` (``ihp-sg13cmos5l/libs.tech/klayout/tech/drc``), with two differences: the rules for
layers that SG13CMOS5L does not have are not checked, and the layers it does not have are checked as
forbidden.

Rules not checked in SG13CMOS5L
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/cmos5l_precheck_excluded.csv

SG13CMOS5L forbidden layers
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :header: "Name", "Description", "Value (um)"
    :widths: 20, 80, 20
    :stub-columns: 0
    :align: left
    :class: drc-table
    :file: tables/cmos5l_precheck_forbidden.csv

.. include:: tables/_cmos5l_precheck_rule_count.rst
