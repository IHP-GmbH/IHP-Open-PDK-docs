..  Copyright 2025 K. Mertens <mertens@ihp-microelectronis.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


.. image:: docs/_static/IHP_logo.png
   :align: center
   :alt: IHP Logo Image
   :width: 70%


IHP-Open-PDK-docs Project
=========================

.. image:: https://img.shields.io/github/license/IHP-GmbH/IHP-Open-PDK-docs
   :alt: GitHub license - Apache 2.0
   :target: https://github.com/IHP-GmbH/IHP-Open-PDK-docs

.. image:: https://readthedocs.org/projects/ihp-open-pdk-docs/badge/?version=latest&style=flat
   :alt: ReadTheDocs Badge - https://ihp-open-pdk-docs.readthedocs.io
   :target: https://ihp-open-pdk-docs.readthedocs.io

The `IHP-Open-PDK-docs` project ships in-detail documentation for the `IHP-Open-PDK` project, a fully open source Process Design Kit and related data, which can be
used to create manufacturable micro chip designs at IHP's facility.

The documentation for the PDK is shipped *as a payload*, located in the `docs/` folder.
If interested to read the documentation for the IHP-Open-PDK-docs project itself, you are right there: It is provided with this README.


Prerequisites
=============

At a minimum:

-  Git 2.35+
-  Python 3.6+


On Ubuntu, simply
-----------------

.. code:: bash

    apt install -y build-essential virtualenv python3


Building the Documentation for the IHP-Open-PDK Project
=======================================================

To build documentation locally, use the following commands:

.. code:: bash

   # Download the repository
   git clone https://github.com/IHP-GmbH/IHP-Open-PDK-docs
   cd IHP-Open-PDK-docs/docs/

   # Create a Python virtual environment and install requirements into it
   virtualenv docs_env/ --python=python3
   source docs_env/bin/activate

   # Build the documentation for IHP-Open-PDK
   make docs


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

Requests for more information about SG13G2 and other standard and custom foundry technologies can be emailed to
`openpdk@ihp-microelectronics.com <openpdk@ihp-microelectronics.com>`__.


License
=======

The `IHP-Open-PDK-docs` project is released under the `Apache License, Version 2.0`.
See file `LICENSE <LICENSE>`__ for details.
