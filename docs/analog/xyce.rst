Simulation using Xyce
*********************

.. _xyce_configuration_lbl:

XYCE installation on ubuntu 22.04 LTS 
======================================

Xyce installation is demanding due to the specific version isssues and multiple dependencies.
Apart the bulid requirements listed in the `building guide <https://xyce.sandia.gov/documentation-tutorials/building-guide/>`_ the key parts for insallation are:

#. installation of trilinos 
#. installation of ADMS
#. installation of Xyce


Trilinos installatinon
------------------------

First of all one have to obtain the **exact** version of trilinos **12.12.1**


.. code-block:: bash
    
    cd 
    git clone https://github.com/trilinos/Trilinos.git Trilinos
    cd Trilinos
    git checkout trilinos-release-12-12-1
    
Since it is recommended to build trilinos out of the source code directory one can execute the following

.. code-block:: bash
    
    cd 
    mkdir trilinos_build
    cd trilinos_build
    touch reconfigure.sh 
    chmod +x reconfigure.sh 

The content of the file `reconfigure.sh` is listed below:

.. code-block:: bash
    
  #!/bin/sh
  SRCDIR="$HOME/Trilinos/"
  ARCHDIR="/usr/local"
  FLAGS="-O3 -fPIC"
  cmake \
  -DCMAKE_C_COMPILER=gcc \
  -DCMAKE_CXX_COMPILER=g++ \
  -DCMAKE_Fortran_COMPILER=gfortran \
  -DCMAKE_CXX_FLAGS="$FLAGS" \
  -DCMAKE_C_FLAGS="$FLAGS" \
  -DCMAKE_Fortran_FLAGS="$FLAGS" \
  -DCMAKE_INSTALL_PREFIX=$ARCHDIR \
  -DCMAKE_MAKE_PROGRAM="make" \
  -DTrilinos_ENABLE_NOX=ON \
    -DNOX_ENABLE_LOCA=ON \
  -DTrilinos_ENABLE_EpetraExt=ON \
    -DEpetraExt_BUILD_BTF=ON \
    -DEpetraExt_BUILD_EXPERIMENTAL=ON \
    -DEpetraExt_BUILD_GRAPH_REORDERINGS=ON \
  -DTrilinos_ENABLE_TrilinosCouplings=ON \
  -DTrilinos_ENABLE_Ifpack=ON \
  -DTrilinos_ENABLE_AztecOO=ON \
  -DTrilinos_ENABLE_Belos=ON \
  -DTrilinos_ENABLE_Teuchos=ON \
  -DTrilinos_ENABLE_COMPLEX_DOUBLE=ON \
  -DTrilinos_ENABLE_Amesos=ON \
    -DAmesos_ENABLE_KLU=ON \
  -DTrilinos_ENABLE_Amesos2=ON \
   -DAmesos2_ENABLE_KLU2=ON \
   -DAmesos2_ENABLE_Basker=ON \
  -DTrilinos_ENABLE_Sacado=ON \
  -DTrilinos_ENABLE_Stokhos=ON \
  -DTrilinos_ENABLE_Kokkos=ON \
  -DTrilinos_ENABLE_ALL_OPTIONAL_PACKAGES=OFF \
  -DTrilinos_ENABLE_CXX11=ON \
  -DTPL_ENABLE_AMD=ON \
  -DAMD_LIBRARY_DIRS="/usr/lib" \
  -DTPL_AMD_INCLUDE_DIRS="/usr/include/suitesparse" \
  -DTPL_ENABLE_BLAS=ON \
  -DTPL_ENABLE_LAPACK=ON \
  $SRCDIR

The installation process consists of the following commands:

.. code-block:: bash
    
    ./reconfigure.sh  
    make 
    sudo make install

ADMS installation
-----------------

After successfull installation one can procees installing ADMS. The installation process 
is strightforward and well described on the `ASMS github repository <https://github.com/Qucs/ADMS>`_.

XYCE installation
-----------------

The following steps of Xyce installation are similar to Trilinos

.. code-block:: bash
    
    cd 
    git clone https://github.com/Xyce/Xyce.git
    cd Xyce
    git checkout Release-7-8-0
    ./bootstrap
    cd 
    mkdir xyce_build
    cd xyce_build
    touch reconfigure.sh 
    chmod +x reconfigure.sh 

The content of the file `reconfigure.sh` is listed below:

.. code-block:: bash
    
  #!/bin/sh
  $HOME/Xyce/configure \
  CXXFLAGS="-O3 -fPIC" \
  ARCHDIR="/usr/local" \
  CPPFLAGS="-I/usr/include/suitesparse" \
  --enable-stokhos \
  --enable-amesos2 \
  --enable-user-plugin \
  --enable-admsmodels \
  --enable-shared \
  --enable-xyce-shareable 

To finish the installation execute:

.. code-block:: bash
    
    ./reconfigure.sh  
    make 
    sudo make install


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


.. code-block:: spicelang

  * mostest.spice
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
