Installation
============

Requirements
------------
Since is developed on Ubuntu Linux LTS version it is recommended to use it. To get the PDK one will need 
a git client. Also in order to compile the ``Verilog-A`` models for ngspice simulator  `openvaf <https://openvaf.semimod.de/download/>`_  tool will be necessary.
In a case the user would like to use Xyce simulator the ``Verilog-A`` models have to be compiled using `ADMS <https://github.com/Qucs/ADMS>`_ tool. 
The list of supported tools is listed `here <https://github.com/IHP-GmbH/IHP-Open-PDK/blob/main/README.md>`_ and the tools should be installed by the user 
following the installation guides provided by the developers. It is recommended to use most up to date tool's versions. 


Cloning
-------
Unlikely the existing manufacturable PDK's, namely SKY130 and GF180, our IHP-Open-PDK does not require installation. 
It delivers ready to use primitives and tool configuration files in order to minimize the configuration effort. 
In order to get the PDK you should clone it from GitHub using the following command:

.. code-block:: bash
 
  cd <your_directory>
  git clone --branch dev --recurse-submodules https://github.com/IHP-GmbH/IHP-Open-PDK.git
  cd IHP-Open-PDK

.. note::
   ``dev`` branch is required because the ngspice example didn't work on the ``main`` branch since
   some models have changed, and are not compatible with the example provided in this documentation.

.. note::
    ``--recurse-submodules`` option is required to populate recursively submodules that are included in our PDK repository. 
  
.. tip::
    The PDK has two branches ``main`` and ``dev``. The general rule is that the ``dev`` branch is ahead of ``main`` and contains the recent changes. 

General configuration
---------------------
Similarly to the before mentioned PDK's one of the crucial and mandatory part of the configuration is exporting of some
environment variables (add it to your ``.bashrc`` file or any other shell configuration file you use):
  

.. code-block:: bash
    
  echo "export PDK_ROOT=\$HOME/your_directory/IHP-Open-PDK" >> ~/.bashrc
  echo "export PDK=ihp-sg13g2" >> ~/.bashrc
  echo "export KLAYOUT_PATH=\"\$HOME/.klayout:\$PDK_ROOT/\$PDK/libs.tech/klayout\"" >> ~/.bashrc
  echo "export KLAYOUT_HOME=\$HOME/.klayout" >> ~/.bashrc
  source ~/.bashrc

.. note::
    The configuration set up an own clone of the PDK for a linux user. 

The tools like klayout use many python packages in order to run properly. 
It is recommended to install them using the default ``requirements.txt`` file located in the main tree. 

.. code-block:: bash

   pip install -r requirements.txt

Verilog-A models compilation
------------

Since Verilog-A models have to be distributed as a source code due to licensing issues,
we provide simulator specific compilation scripts that have to be run once after cloning the PDK.
The scripts are located in the ``$PDK_ROOT/$PDK/libs.tech/verilog-a`` folder and compile the Verilog-A
models either to ``OSDI`` binary utilizaed by ngspice and VACASK or ``.so`` shared object used by Xyce.
To perform the compilation user should run the following commands:

.. code-block:: bash

   source openvaf-compile-va.sh
   source adms-compile-va.sh

The compilatiled binaries will be located in the ``libs.tech/ngspice/osdi``` and ``libs.tech/xyce/plugis`` locations respectively.


Tool specific configuration
---------------------------

Since the PDK provides support of many tools we provide this configuration at tool specific section like:

#. :ref:`xschem_configuration_lbl`.
#. :ref:`qucs_configuration_lbl`.
#. :ref:`ngspice_configuration_lbl`.
#. :ref:`xyce_configuration_lbl`.
#. :ref:`pygmid_configuration_lbl`.
