HBTs
====

This page documents the bipolar transistor primitives currently exposed through
the SG13G2 schematic libraries.

HBT Overview
------------

The current Xschem primitive library exposes three NPN SiGe:C HBT variants and
one PNP device.

.. list-table:: Delivered HBT symbols
   :header-rows: 1

   * - Symbol
     - Device class
     - Notes
   * - ``npn13g2``
     - fixed-geometry high-performance NPN HBT
     - exposed multiplier parameter ``Nx``
   * - ``npn13g2l``
     - scalable NPN HBT
     - exposed ``Nx`` and emitter-length parameter ``El``
   * - ``npn13g2v``
     - high-voltage / lower-frequency NPN HBT
     - exposed ``Nx`` and ``El`` in the symbol template
   * - ``pnpMPA``
     - PNP bipolar device
     - used for band-gap reference style circuits

HBT User Parameters
-------------------

.. list-table:: User-visible HBT parameters
   :header-rows: 1

   * - Parameter
     - Meaning
     - Used by
     - Notes
   * - ``Nx``
     - device multiplier / number of emitter stripes
     - ``npn13g2``, ``npn13g2l``, ``npn13g2v``
     - primary user-visible count parameter in the NPN symbols
   * - ``El``
     - emitter length in microns
     - ``npn13g2l``, ``npn13g2v``
     - converted into ``le`` in the symbol netlisting expression
   * - ``w``
     - geometry width
     - ``pnpMPA``
     - used to derive area and perimeter in the symbol expression
   * - ``l``
     - geometry length
     - ``pnpMPA``
     - used to derive area and perimeter in the symbol expression
   * - ``m``
     - multiplicity
     - ``pnpMPA``
     - emitted directly into the netlisted device expression

HBT Default Symbol Templates
----------------------------

.. list-table:: Default HBT symbol values
   :header-rows: 1

   * - Symbol
     - Default values
   * - ``npn13g2``
     - ``Nx=1``, ``model=npn13G2``
   * - ``npn13g2l``
     - ``Nx=1``, ``El=1.0``, ``model=npn13G2l``
   * - ``npn13g2v``
     - ``Nx=1``, ``El=1.0``, ``model=npn13G2v``
   * - ``pnpMPA``
     - ``w=0.7e-6``, ``l=2.0e-6``, ``m=1``, ``model=pnpMPA``

Symbol-Level Netlisting Notes
-----------------------------

For the NPN symbols:

- ``npn13g2`` emits a fixed ``le=900e-9`` and ``we=70.0n`` together with ``Nx``
- ``npn13g2l`` emits fixed ``we=70.0n`` and derives ``le`` from ``El``
- ``npn13g2v`` emits fixed ``we=120.0n`` and derives ``le`` from ``El``

For ``pnpMPA``, the symbol derives area and perimeter from ``w`` and ``l``:

.. math::

   A = w l

.. math::

   P = 2(w + l)

HBT Simulator Library Mapping
-----------------------------

HBTs in ``ngspice``
~~~~~~~~~~~~~~~~~~~

- corner selector: ``cornerHBT.lib``
- family model files include ``sg13g2_hbt_mod.lib`` and ``sg13g2_hbt_stat.lib``

HBTs in ``Xyce``
~~~~~~~~~~~~~~~~

- corner selector: ``cornerHBT.lib``
- family model files include ``sg13g2_hbt_mod.lib`` and ``sg13g2_hbt_stat.lib``

HBTs in ``Gnucap``
~~~~~~~~~~~~~~~~~~

The Gnucap tree includes HBT model validation in the same style as the other
device families, with dedicated model/test support under ``gnucap``.

HBT Examples
------------

The Xschem test library includes HBT examples for operating-point, AC, and
Monte Carlo evaluation.
