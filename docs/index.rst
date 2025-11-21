.. image:: _static/IHP_logo.png
   :align: right
   :alt: IHP Logo Image
   :target: https://github.com/IHP-GmbH/IHP-Open-PDK-docs/
   :width: 125

.. |current-status| replace:: **Experimental Preview**


IHP 130nm BiCMOS Open Source PDK Documentation
==============================================

.. image:: https://img.shields.io/github/license/IHP-GmbH/IHP-Open-PDK-docs
   :alt: GitHub license - Apache 2.0
   :target: https://github.com/IHP-GmbH/IHP-Open-PDK-docs

.. image:: https://readthedocs.org/projects/ihp-open-pdk-docs/badge/?version=latest&style=flat
   :alt: ReadTheDocs Badge - https://ihp-open-pdk-docs.readthedocs.io
   :target: https://ihp-open-pdk-docs.readthedocs.io

The goal of the `IHP-Open-PDK <https://github.com/IHP-GmbH/IHP-Open-PDK/>`_ project is to provide a fully open source Process Design Kit and related data which can
be used to create manufacturable designs at IHP's facility. In addition, the goal of this `IHP-Open-PDK-docs <https://github.com/IHP-GmbH/IHP-Open-PDK-docs/>`_
project is to provide comprehensive in-detail documentation for the before-mentioned PDK, under the same free software license: `Apache License, Version 2.0
<https://www.apache.org/licenses/LICENSE-2.0>`_

According to the `Free Software Foundation (FSF) <https://www.fsf.org/>`_, the `Apache License, Version 2.0` is the best choice of software licenses *where a
strong copyleft license cannot be used*. However, if you are interested in giving your project a strong `Copyleft <https://www.gnu.org/licenses/copyleft.en.html>`_
License you will be happy to hear that the `Apache License, Version 2.0` is `considered to be compatible <https://www.gnu.org/licenses/license-list.html#apache2>`_
with the `GNU General Public License, Version 3 (GPLv3) <https://www.gnu.org/licenses/gpl-3.0.en.html>`_.


Current Status
==============

.. warning::

    | This documentation is **work in progress**.
    | The content is currently provided as: |current-status|

While the SG13G2 process node and the PDK from which this open source release was derived have been 
used to create many designs that have been successfully manufactured in significant quantities, 
the open source PDK is not intended to be used for production at this moment.

.. note::

    The PDK will be tagged with a production version when ready to do production design.


SG13G2 Process Node
===================

SG13G2 is a high performance BiCMOS technology with a 0.13 μm CMOS process. It contains bipolar
devices based on SiGe:C npn-HBTs with up to 350 GHz transient frequency (f_T) and 450 GHz oscillation
frequency (f_{max}). This process provides 2 gate oxides: A thin gate oxide for the 1.2 V digital logic and a thick
oxide for a 3.3 V supply voltage. For both modules NMOS, PMOS and isolated NMOS transistors are
offered. Further passive components like poly silicon resistors and MIM capacitors are available. The
backend option offers 5 thin metal layers, two thick metal layers (2 and 3 μm thick) and a MIM layer.


Prerequisites
=============

At a minimum:

- Git 2.35+
- Python 3.6+


On Ubuntu, simply
-----------------

.. code:: bash

    apt install -y build-essential virtualenv python3


Building the Documentation
==========================

.. note::

    The build is made of files in the ``docs/`` folder, files located in the root of the project are not accessible from the generated table of content!
    (e.g.: `../README.md` and `../COPYING`)

To build documentation locally, use the following commands:

.. code:: bash

    # Download the repository, change into its docs/ folder
    git clone https://github.com/IHP-GmbH/IHP-Open-PDK-docs
    cd IHP-Open-PDK-docs/docs/

    # Create a Python virtual environment and install requirements into it.
    virtualenv docs_env --python=python3
    source docs_env/bin/activate

    # Build the documentation
    make docs

    # Launch HTML documentation in web browser
    make display


About IHP
=========

**The IHP is a non-university research establishment institutionally funded by the German federal and state governments and a member of the Leibniz Association.**

The IHP is one of the world's leading research institutions in the field of silicon/germanium electronics. In this field, it has extensive, closely coordinated 
expertise in semiconductor technology, materials research, high-frequency circuit design and system solutions. Its electronic and photonic-electronic technologies 
and circuits are among the most powerful in the world. In the speed of silicon-based transistors, IHP holds the world record with 720 GHz maximum oscillation 
frequency. The institute has a pilot line that manufactures circuits using its high-performance SiGe BiCMOS technologies. Through its research and manufacturing 
services, IHP contributes significantly to the innovative strength of Germany and Europe, especially in the field of ultrahigh-frequency electronics. The 
institute's research results are applied in socially important areas such as semiconductor manufacturing, wireless and power broadband communications, health, 
space, Industry 4.0 or Agriculture 4.0 and mobility.


Contacting IHP
--------------

Requests for more information about SG13G2, other standards and custom foundry technologies can be emailed to
`openpdk@ihp-micoelectronis.com <mailto:openpdk@ihp-microelectronics.com>`_.


License
=======

The `IHP-Open-PDK-docs` project is released under the `Apache License, Version 2.0 <https://www.apache.org/licenses/LICENSE-2.0>`_.


Copyright Notice
================

.. code-block:: none

    Copyright 2024  IHP PDK Authors  

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


Table of Content Tree
=====================

.. toctree::
    
    contents
    install
    process_specs/process_specs
    layout_rules/rules_man
    analog
    digital
    finishing
    verification
    contrib
    references
