Simulation using NGSPICE
========================

.. _ngspice_configuration_lbl:

NGSPICE installation 
--------------------

Ngspice is an open source simulator hosted at `this <https://sourceforge.net/p/ngspice/ngspice/ci/master/tree/>`_ page.
The tool is well documented and the user manual can be found `here <https://ngspice.sourceforge.io/docs/ngspice-html-manual/manual.xhtml>`_.
In order to install ngspice the recomended method is the following:

.. code-block:: bash
    
    git clone https://git.code.sf.net/p/ngspice/ngspice ngspice-ngspice
    cd ngspice-ngspice
    ./configure --enable-osdi
    make
    sudo make install
    cd ..
    rm -rf ngspice-ngspice

NGSPICE basic testcases
------------------------
A basic spice level netlist, which simulates operating point of a npn13G2 HBT transistor, is shown below:

.. code-block:: spicelang

    **.subckt dc_hbt_13g2
    Vce net3 GND 1.2
    I0 GND net1 1u
    Vc net3 net2 0
    .save i(vc)
    XQ1 net2 net1 GND GND npn13G2l Nx=1 le=1.0e-6

    .lib cornerHBT.lib hbt_typ

    .param temp=27
    .control
    save all
    op
    print I(Vc)
    .endc

    .GLOBAL GND
    .end  

The netlist can be saved as dc_hbt_13g2.spice and simulated calling the following command:

.. code-block:: bash
    
  ngspice -b dc_hbt_13g2.spice

The user should get the following output:

.. code-block:: bash
    

  Note: Compatibility modes selected: hs a


  Circuit: 

  Doing analysis at TEMP = 27.000000 and TNOM = 27.000000

  Using SPARSE 1.3 as Direct Linear Solver

  No. of Data Rows : 1
  i(vc) = 6.492800e-04
  Note: Simulation executed from .control section 


.. code-block:: bash

  .lib cornerMOSlv.lib mos_tt
  Vgs net1 GND 0.4
  Vds net3 GND 1.0
  Vd net3 net2 0
  .param temp=27
  XM1 net2 net1 GND GND sg13_lv_nmos w=1.0u l=0.13u ng=1 m=1
  .control
  save all
  op
  let Id = @n.xm1.nsg13_lv_nmos[ids] 
  print Id
  .endc
  .GLOBAL GND
  .end

The netlist can be saved as mostest.spice and simulated calling the following command:

.. code-block:: bash
    
  ngspice -b mostest.spice

The following output should be observed

.. code-block:: bash


  Note: Compatibility modes selected: hs a

  Warning: m=xx on .subckt line will override multiplier m hierarchy!


  Circuit: mostest

  Doing analysis at TEMP = 27.000000 and TNOM = 27.000000

  Using SPARSE 1.3 as Direct Linear Solver

  No. of Data Rows : 1
  id = 1.145621e-06
  Note: Simulation executed from .control section 
