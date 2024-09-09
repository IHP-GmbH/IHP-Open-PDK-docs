Installation
============

Requirements
------------
Since is developed on Ubuntu Linux LTS version it is recommended to use it. To get the PDK one will need 
a git client. Also in order to compile the ``Verilog-A`` models for ngspice simulator  `openvaf <https://openvaf.semimod.de/download/>`_  tool will be necessary.
In a case the user would like to use Xyce simulator the ``Verilog-A`` models have to bie compiled using `ADMS <https://github.com/Qucs/ADMS>`_ tool. 
The list of supported tools is listed `here <https://github.com/IHP-GmbH/IHP-Open-PDK/blob/main/README.md>`_ and the tools should be installed by the user 
following the installation guides provided by the developers. It is recommended to use most up to date tool's versions. 


Cloning
-------
Unlikely the existing manufacturable PDK's, namely SKY130 and GF180, our IHP-Open-PDK does not require installation. 
It delivers ready to use primitives and tool configuration files in order to minimize the configuration effort. 
In order to get the PDK you should clone it from github using the following command:

.. code-block:: bash
 
  cd your_directory
  git clone --recursive https://github.com/IHP-GmbH/IHP-Open-PDK.git
  
.. tip::
    The PDK has two branches ``main`` and ``dev``. The general rule is that the ``dev`` branch is ahead of ``main`` and contains the recent changes. 

General configuration
---------------------
Similarly to the before mentioned PDK's one of the crucial and mandatory part of the configuration is exporting of some
environmental variables (add it to your ``.bashrc`` file):
  

.. code-block:: bash
    
  echo "export PDK_ROOT=/home/$USER/your_directory/IHP-Open-PDK" >> ~/.bashrc
  echo "export PDK=ihp-sg13g2" >> ~/.bashrc
  echo "export KLAYOUT_PATH="/home/$USER/.klayout:$PDK_ROOT/$PDK/libs.tech/klayout"" >> ~/.bashrc
  echo "export KLAYOUT_HOME=/home/$USER/.klayout" >> ~/.bashrc
  source ~/.bashrc

.. note::
    The configuration set up an own clone of the PDK for a linux user. 


Tool specific configuration
---------------------------

Since the PDK provides support of many tools we provide this configuration at tool specific section like:

#. :ref:`xschem_configuration_lbl`.
#. :ref:`ngspice_configuration_lbl`.
#. :ref:`pygmid_configuration_lbl`.
