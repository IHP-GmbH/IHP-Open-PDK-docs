Analog/Mixed/RF flow 
====================

The proposal of the flow is shown on the following image.

.. image:: ../_static/analog_flow_horizontal_ihp-OpenPDK-600.png
    :align: center
    :alt: IHP Analog/RF flow proposal.
    :width: 600

As it is shown we support multiple tools for schematic capture, simulation, layout editing and physical 
verification. Each tool will be described separately in this documentation. The mixed signal design and RF 
design are variations of the presented flow. 

The principal steps in the analog design are the following:

#. Schematic capture
#. Simulation 
#. Layout editing 
#. Physical verification (DRC/LVS)
#. Parasitics extraction
#. Post-layout simulation
#. GDS streaming

IHP-Open-PDK delivers libraries, configuration files and examples for the tools used in the proposed flow. 
The tools pull the configuration using an environmental variable ``PDK_ROOT``

.. code-block:: shell

   export PDK_ROOT=<your_path>/IHP-Open-PDK


