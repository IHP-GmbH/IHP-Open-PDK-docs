Simulation using NGSPICE
========================

NGSPICE installation 
--------------------

XSCHEM is an open source schematic capture tool hosted `here <https://xschem.sourceforge.io/stefan/index.html>`_.
It is capable to stream a customizable netlist, interoperates with simulators and post process the simulation results. 
To be used with IHP-Open-PDK it is strongly recommended to install xschem from sources using the latest release hosted on 
`github <https://github.com/StefanSchippers/xschem>`_.

.. code-block:: bash
    
    git clone https://git.code.sf.net/p/ngspice/ngspice ngspice-ngspice
    cd ngspice-ngspice
    ./configure --enable-osdi
    make
    sudo make install



.. code-block:: spicelang

    ** sch_path: /home/herman/github/KrzysztofHerman/IHP-Open-PDK/ihp-sg13g2/libs.tech/xschem/sg13g2_tests/dc_hbt_13g2.sch
    **.subckt dc_hbt_13g2
    Vce net3 GND 1.5
    I0 GND net1 1u
    Vc net3 net2 0
    .save i(vc)
    XQ1 net2 net1 GND GND npn13G2l Nx=1 le=1.0e-6
    **** begin user architecture code

    .lib /home/herman/github/KrzysztofHerman/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerHBT.lib hbt_typ



    .param temp=27
    .control
    save all
    op
    print I(Vc)
    reset
    dc Vce 0 2 0.01 I0 0 5u 0.1u
    write test_npn_13G2.raw
    .endc


    **** end user architecture code
    **.ends
    .GLOBAL GND
    .end  


It will compile and install a **psp103_nqs.osdi** binary in a ``simulations`` subdirectory, which is mandatory for simulating mosfets.
After this step you can call ``xschem &`` command to run the tool. 

.. image:: ../_static/xschem_main.png
    :align: center
    :alt: xschem main window
    :width: 600


XSCHEM symbol library
---------------------
The symbol library can be found in ``PDK_ROOT/ihp-sg13g2/libs.tech/xschem/sg13g2_pr`` and it contains the following devices.

+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| Device       | Description                                                                                                                                   |  |
+==============+===============================================================================================================================================+==+
| npn13g2      | HBT NPN bipolar transistor device with a Nx-number of devices parameter                                                                       |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| npn13g2l     | HBT NPN bipolar transistor device with a Nx-number of devices and El-emitter length parameters                                                |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| npn13g2v     | HBT NPN bipolar transistor device with a Nx-number of devices parameter, device for high power and lower frequency applications               |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| sg13_lv_nmos | N-channel, low voltage parametrizable mosfet device. W-channel width, L-channel length, ng-number of gates, m-number of devices               |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| sg13_hv_nmos | N-channel, high voltage parametrizable mosfet device. W-channel width, L-channel length, ng-number of gates, m-number of devices              |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| sg13_lv_pmos | P-channel, low voltage parametrizable mosfet device. W-channel width, L-channel length, ng-number of gates, m-number of devices               |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| sg13_hv_pmos | P-channel, high voltage parametrizable mosfet device. W-channel width, L-channel length, ng-number of gates, m-number of devices              |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| rsil         | Silicide resistor of a sheet resistance of 7 $\Omega / \square$                                                                               |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| rppd         | Polysilicon resistor of a sheet resistance of 7 $\Omega / \square$                                                                            |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| rhigh        | Polysilicon resistor of a high sheet resistance of 1360 $\Omega / \square$                                                                    |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| ntap1        | N-well difussion conntact resistance  of 262 $\Omega$                                                                                         |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| ptap1        | P-well (substrate) difussion conntact resistance  of 262 $\Omega$                                                                             |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| cap_cmim     | Metal-Insulator-Metal capacitor                                                                                                               |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| cap_cpara    | Parasitic capacitor symbol attached to a model (used only for parasitics extraction)                                                          |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| cap_rfcmim   | Metal-Insulator-Metal capacitor model for RF                                                                                                  |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| dantenna     | Antenna diode symbol. This diode is used to protect against low voltage. The anode of the diode should be connected to the ptap1 resistor.    |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| dpantenna    | Antenna diode symbol. This diode is used to protect against high voltage. The cathode of the diode should be connected to the ntap1 resistor. |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+
| pnpMPA       | pnp HBT used for band-gap reference circuit                                                                                                   |  |
+--------------+-----------------------------------------------------------------------------------------------------------------------------------------------+--+



XSCHEM testcases
----------------

The top level schematic, namely IHP_testcases.sch,can be found at ``PDK_ROOT/ihp-sg13g2/libs.tech/xschem/sg13g2_tests`` directory. By default each test case exports the netlist to the simulations directory where .spiceinitfile is used to configure NGSpice in HSPICE compatibility mode. Also a **psp103_nqs.osdi** file is by default placed in this directory in order to simulate the MOSFET devices using PSP103 model. This file can be regenerated and updated (if necessary) using ``python3 install.py`` command. It is important to notice that the NGSpice version should be 40+ and it has to be compiled using ``--enable-osdi`` flag as follows:


.. code-block:: shell
    
    git clone https://git.code.sf.net/p/ngspice/ngspice ngspice-ngspice
    cd ngspice-ngspice
    ./configure --enable-osdi
    make
    sudo make install


The raw files generated using simulations are placed in a `simulations/` directory. If a test case exports CSV file it will be placed in a `csv/` directory. The `scripts/` folder contains python scripts, which are used for CSV data post processing. All plots generated by the scripts are exported to the `fig/` directory. 


XSCHEM standard cell library
-----------------------------

