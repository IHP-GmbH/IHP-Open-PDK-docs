Process Control
===============

.. note::
   - Several geometrical and electrical parameters are measured for process control purposes. 
   - Electrical measurements are typically performed at T0 = 27°C (300K). 
   - Coefficients describing the temperature behavior of parameters are extracted for the temperature range `-40°C < T < 125°C`.

**Process control parameters are assigned to one of the following categories**:

Pass/Fail Parameters
--------------------

.. role:: red
   :class: red-text

Pass/fail parameters are used for wafer selection during the wafer fabrication process. 

Pass/Fail parameters are measured on each wafer and are characterized by SPEC limits in :red:`bold red`.


Information Parameters
----------------------

.. role:: blue
   :class: blue-text

.. role:: ital
   :class: blue-text2

Information parameters are provided in order to increase the knowledge about the process. These parameters do not lead to wafer scrap. 

**There are two groups of information parameters:**

1. The first group of information parameters is measured, identically to the pass/fail parameters, on each
wafer. These parameters are characterized by SPEC limits in :blue:`bold blue`.

2. The second group of information parameters is not measured on each wafer. This group includes, for
example, the layer thickness values measured during the wafer fabrication process or taken from REM
cross-sections, and the coefficients describing the temperature, voltage and matching behavior of active
and passive devices. This group of information parameters is given in :ital:`italic blue`.

.. note::

   - The process control transistor parameters must not be used for circuit simulation purposes. They are often extracted from simplified model equations in order to increase the speed of the measurements.  
   - Special circuit simulation transistor parameters are provided in the model parameter section 5. Those are extracted from the complete set of model equations in order to give the best fit of the entire characteristic for all operating points. Therefore, process control transistor parameters may differ from their corresponding circuit simulation parameters.

   - It is strongly recommended that a design shall rely only on pass/fail parameters.

