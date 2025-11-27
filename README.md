<!--
    Copyright 2025 K. Mertens <mertens@ihp-microelectronis.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
-->


<img src="docs/_static/IHP_logo.png" alt="IHP Logo Image" width="150px">


Welcome to the *IHP-Open-PDK-docs* Project
==========================================

<a href="https://github.com/IHP-GmbH/IHP-Open-PDK-docs"><img src="https://img.shields.io/github/license/IHP-GmbH/IHP-Open-PDK-docs" alt="GitHub license - Apache 2.0"></a>
<a href="https://ihp-open-pdk-docs.readthedocs.io"><img src="https://readthedocs.org/projects/ihp-open-pdk-docs/badge/?version=latest&style=flat" alt="ReadTheDocs Badge - https://ihp-open-pdk-docs.readthedocs.io"></a>

This *IHP-Open-PDK-docs* project ships in-detail documentation for the [IHP-Open-PDK][] project.  
The documentation for the PDK is shipped *as a payload*, located in the `docs/` folder, and provided as *IHP 130nm BiCMOS Open Source PDK Documentation*.  
If interested to read the documentation for the *IHP-Open-PDK-docs* project *itself*, you are right there: It is provided with this README.

[IHP-Open-PDK]:     https://github.com/IHP-GmbH/IHP-Open-PDK/


IHP 130nm BiCMOS Open Source PDK Documentation
==============================================

The goal of the [IHP-Open-PDK](<https://github.com/IHP-GmbH/IHP-Open-PDK/>) project is to provide a fully open source Process Design Kit and related data which can
be used to create manufacturable micro chip designs at IHP's facility. In addition, the goal of this [IHP-Open-PDK-docs](<https://github.com/IHP-GmbH/IHP-Open-PDK-docs/>)
project is to provide comprehensive in-detail documentation for the before-mentioned PDK, under the same free software license:
[Apache License, Version 2.0](<https://www.apache.org/licenses/LICENSE-2.0>)

According to the [Free Software Foundation (FSF)](<https://www.fsf.org/>), the *Apache License, Version 2.0* is the best choice of software licenses *where a
strong copyleft license cannot be used*. However, if you are interested in giving your project a strong [Copyleft](<https://www.gnu.org/licenses/copyleft.en.html>)
License you will be happy to hear that the *Apache License, Version 2.0* is [considered to be compatible](<https://www.gnu.org/licenses/license-list.html#apache2>)
with the [GNU General Public License, Version 3 (GPLv3)](<https://www.gnu.org/licenses/gpl-3.0.en.html>).


SG13G2 Process Node
===================

SG13G2 is a high performance BiCMOS technology with a 0.13 μm CMOS process. It contains bipolar
devices based on SiGe:C npn-HBTs with up to 350 GHz transient frequency (f<sub>T</sub>) and 450 GHz oscillation
frequency (f<sub>{max}</sub>). This process provides 2 gate oxides: A thin gate oxide for the 1.2 V digital logic and a thick
oxide for a 3.3 V supply voltage. For both modules NMOS, PMOS and isolated NMOS transistors are
offered. Further passive components like poly silicon resistors and MIM capacitors are available. The
backend option offers 5 thin metal layers, two thick metal layers (2 and 3 μm thick) and a MIM layer.


Prerequisites
=============

At a minimum:

- Git 2.35+
- Python 3.6+
- markdown


On Ubuntu, simply
-----------------

        apt install -y build-essential virtualenv python3 markdown


Get the Sources
===============

Basically, run `git clone` to get the sources, change into the newly created project folder, and get started with first documents:

        # Download the repository, change into root of project
        git clone https://github.com/IHP-GmbH/IHP-Open-PDK-docs
        cd IHP-Open-PDK-docs/

        # Verify the License
        less Copying

        # Display README to get started
        less README.md


Building the Documentation
==========================

To build the documentation for the *IHP-Open-PDK-docs* project, type:

        markdown README.md > README.html
        xdg-open README.html


Building the Documentation for the *IHP-Open-PDK* Project
=========================================================

To build the documentation for the *IHP-Open-PDK* project (i.e. *IHP 130nm BiCMOS Open Source PDK Documentation*), use the following commands:

        # Change into the docs/ folder
        cd docs/

        # Create a Python virtual environment and install requirements into it
        virtualenv docs_env/ --python=python3
        source docs_env/bin/activate

        # Build the documentation for IHP-Open-PDK
        make

        # Launch HTML documentation in web browser
        make display

To leave the virtual environment, type `exit` to close the terminal.


Contributing
============

The ``IHP-Open-PDK-docs`` model follows the Git-Flow model of development. We mantain two branches, namely ``main``
(stable one for production) and ``latest`` (experimental for development and testing).

In order to contribute to the project, it is recommended to use branch ``latest`` along with these steps:

#. Create your own GitHub account (only if you do not have one already).
#. Make a fork of our repository (be sure that not only main branch is forked).
#. Clone the project from your own account.
#. Checkout to the development branch ``git checkout --track origin/latest``
#. Create a new feature branch ``git branch feature-name``
#. Do your regular development and commit the changes with `-s` flag: ``git commit -s -m "your message"``
#. Checkout to the development branch ``git checkout latest``
#. Merge the changes developed in the feature branch ``git merge feature-name``
#. Push the changes to your GitHub fork ``git push origin latest``
#. Create a `Pull Request` on the GitHub web interface.

Alternatively, you might use the `gh` *GitHub CLI* instead of the web interface.


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

Requests for more information about SG13G2, other standards and custom foundry technologies can be emailed to:
[openpdk@ihp-microelectronics.com](mailto:openpdk@ihp-microelectronis.com)


Copying
=======

The *IHP-Open-PDK-docs* project is released under the *Apache License, Version 2.0*.  
See file [COPYING](COPYING) for details.
