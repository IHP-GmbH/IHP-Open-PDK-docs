Installation
============

Requirements
------------

Since our PDK is developed on `Ubuntu Linux LTS` it is recommended to use that distribution. To get the PDK one will need a git client. Also in order to compile
the ``Verilog-A`` models for the Ngspice simulator the `openvaf <https://openvaf.semimod.de/download/>`_ tool will be necessary. In case the user would like to use
the Xyce simulator the ``Verilog-A`` models have to be compiled using the `ADMS <https://github.com/Qucs/ADMS>`_ tool. The list of supported tools is listed
`here <https://github.com/IHP-GmbH/IHP-Open-PDK/blob/main/README.md>`_ and the tools should be installed by the user following the installation guides provided by
the developers. It is recommended to use up to date tool versions.


Cloning
-------

In difference to existing manufacturable PDKs, namely SKY130 and GF180, our IHP-Open-PDK does not require installation.
It delivers ready to use primitives and tool configuration files in order to minimize the configuration effort. 
In order to get our PDK you should clone it from GitHub using the following command:

.. code-block:: bash

  cd <your_directory>
  git clone --branch dev --recurse-submodules https://github.com/IHP-GmbH/IHP-Open-PDK.git
  cd IHP-Open-PDK

.. note::

   ``dev`` branch is required because the Ngspice example doesn't work on the ``main`` branch since
   some models have changed, and are not compatible with the example provided in this documentation.

.. note::

    ``--recurse-submodules`` option is required to recursivly populate submodules that are included in our PDK repository.
  
.. tip::

    The PDK has two branches ``main`` and ``dev``. The general rule is that the ``dev`` branch is ahead of ``main`` and contains the recent changes. 


General configuration
---------------------

Similar to the before mentioned PDKs one of the crucial and mandatory part of the configuration is the export of some
environment variables (add it to your ``~/.bashrc`` file):

.. code-block:: bash

  echo "export PDK_ROOT=\$HOME/your_directory/IHP-Open-PDK" >> ~/.bashrc
  echo "export PDK=ihp-sg13g2" >> ~/.bashrc
  echo "export KLAYOUT_PATH=\"\$HOME/.klayout:\$PDK_ROOT/\$PDK/libs.tech/klayout\"" >> ~/.bashrc
  echo "export KLAYOUT_HOME=\$HOME/.klayout" >> ~/.bashrc
  source ~/.bashrc

.. note::

    The configuration set up an own clone of the PDK for a linux user. 


Tool specific configuration
---------------------------

Since the PDK provides support for many tools we provide these tool specific sections:

#. :ref:`xschem_configuration_lbl`.
#. :ref:`ngspice_configuration_lbl`.
#. :ref:`xyce_configuration_lbl`.
#. :ref:`pygmid_configuration_lbl`.
