Dependencies 
============

The tools supported by IHP-Open-PDK are open source and are not always distributed as biaries or through 
packages available to install using programs such as apt-get. In order to use the tools one have to compile/build it 
from the sourc code usually available on platfroms like github, gitlab, sourcforge codeberg. 
Having all the build tools installed and meeting all necessary dependencies the installation program is usually 
strightforward. 

Build tools 
------------------
The first step to build a tool/program from a source code is to have build tools, what means necesary comilers and make systems,
which allows the user to build the source code. 


.. code-block:: bash
 
  sudo apt-get install -y build-essential
  sudo apt-get install -y qtbase5-dev qttools5-dev   
  sudo apt-get install -y clang cmake libtool autoconf
  sudo apt-get install -y python3 python3-dev python3-pip python3-virtualenv python3-venv
  sudo apt-get install -y ruby ruby-dev 

Useful tools 
------------------
Before performing installation from sources it is recommended to install some tools that are useful:


.. code-block:: bash
 
  sudo apt-get install -y btop tree xterm graphviz git
  sudo apt-get install -y octave liboctave-dev

Build depenencies 
------------------

Below we present the key dependencies which have to be installed in order to build the tools supported by our PDK.
The vast majority can be build form sources however some of them require manual compilation and install.

.. code-block:: bash
 
  sudo apt-get install -y python3-sphinx python3-sphinx-autoapi python3-pandas python3-tk python3-pytest
  sudo apt-get install -y libqt5xmlpatterns5-dev qtmultimedia5-dev libqt5multimediawidgets5 libqt5svg5-dev libqt5opengl5 
  sudo apt-get install -y tcl8.6 tcl-dev tcl8.6-dev
  sudo apt-get install -y tk8.6 tk8.6-dev
  sudo apt-get install -y flex clang gawk xdot pkg-config bison curl help2man perl time
  sudo apt-get install -y libxpm4 libxpm-dev libgtk-3-dev libffi-dev
  sudo apt-get install -y libjpeg-dev libfl-dev libfl2 
  sudo apt-get install -y libreadline-dev gettext
  sudo apt-get install -y libboost-system-dev libboost-python-dev libboost-filesystem-dev zlib1g-dev
  sudo apt-get install -y libx11-6 libx11-dev
  sudo apt-get install -y libxrender1 libxrender-dev 
  sudo apt-get install -y libxcb1 libx11-xcb-dev
  sudo apt-get install -y libcairo2 libcairo2-dev libxaw7-dev
  sudo apt-get install -y libgz libfl2 libfl-dev zlibc zzlib1g zlib1g-dev libz-dev libgit2-dev
  sudo apt-get install -y libgoogle-perftools-dev 
  sudo apt-get install -y gengetopt groff pod2pdf libhpdf-dev
  sudo apt-get install -y libfftw3-dev 
  suoo apt-get install -y libxml-libxml-perl libgd-perl
  suoo apt-get install -y libsuitesparse-dev gfortran swig libspdlog-dev libeigen3-dev liblemon-dev


On Ubuntu 24.04 build ``gperf`` from `this page <https://www.gnu.org/software/gperf>`_.

# sudo pip install PDKMaster
# sudo pip install h5py



 
