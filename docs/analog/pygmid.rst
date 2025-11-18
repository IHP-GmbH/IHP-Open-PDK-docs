Designing Using Pygmid Tool
===========================

.. _pygmid_configuration_lbl:

Pygmid Installation and Configuration
-------------------------------------

Pygmid is a Python 3 version of the *gm/ID starter kit* by Prof. Boris Murmann of Stanford University.
The package also offers some scripts from the Paul Jesper's and Boris Murmann's book entitled:
*"Systematic Design of Analog CMOS Circuits: Using Pre-Computed Lookup Tables"*

To be used with IHP-Open-PDK is its latest release `hosted on GitHub <https://github.com/dreoilin/pygmid>`_.

After successful cloning of the repository you can execute:

.. code-block:: shell

    cd pygmid
    python3 install .


Device Characterization Using Pygmid
------------------------------------

TODO: Verify paths

The device characterization is done once per technology according to the configuration. The example
configuration is stored in ``tests/pygmid/sweep/IHP130nm.cfg`` in the ``ngspice`` branch. In order to
characterize the mosfet devices run the following command:

.. code-block:: shell

    python3 -m pygmid --mode sweep --config ~./tests/pygmid/sweep/IHP130nm.cfg

.. tip:: 

   Since the Pygmid tool calls `ngspice` in the ``cwd`` the `psp103_nqs.osdi` file has to be present in the same directory.


Basic Usage of Pygmid
---------------------

TODO: Add basic steps
