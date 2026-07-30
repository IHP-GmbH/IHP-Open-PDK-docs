Diodes And Taps
===============

This page documents the protection-diode and tap/contact primitives currently
exposed through the SG13G2 schematic libraries.

Primitive Overview
------------------

.. list-table:: Delivered diode and tap symbols
   :header-rows: 1

   * - Symbol
     - Model
     - Notes
   * - ``dantenna``
     - ``dantenna``
     - low-voltage antenna-protection diode
   * - ``dpantenna``
     - ``dpantenna``
     - high-voltage antenna-protection diode
   * - ``schottky_nbl1``
     - ``schottky_nbl1``
     - Schottky diode primitive
   * - ``ptap1``
     - ``ptap1``
     - substrate tap/contact resistance primitive
   * - ``ntap1``
     - ``ntap1``
     - n-well tap/contact resistance primitive

Diode And Tap Parameters
------------------------

.. list-table:: User-visible diode and tap parameters
   :header-rows: 1

   * - Parameter
     - Meaning
     - Used by
     - Notes
   * - ``w``
     - active or contact width
     - ``dantenna``, ``dpantenna``, ``ptap1``, ``ntap1``
     - geometry parameter entered directly in the symbol
   * - ``l``
     - active or contact length
     - ``dantenna``, ``dpantenna``, ``ptap1``, ``ntap1``
     - geometry parameter entered directly in the symbol
   * - ``m``
     - multiplicity
     - device-level use in extracted diode views
     - especially relevant for documented Schottky and extracted diode handling
   * - ``model``
     - model name used in netlisting
     - all symbols
     - usually kept at the symbol default

Diode And Tap Default Symbol Templates
--------------------------------------

.. list-table:: Default diode and tap symbol values
   :header-rows: 1

   * - Symbol
     - Default values
   * - ``dantenna``
     - ``l=0.78u``, ``w=0.78u``
   * - ``dpantenna``
     - ``l=0.78u``, ``w=0.78u``
   * - ``ptap1``
     - ``w=0.78e-6``, ``l=0.78e-6``
   * - ``ntap1``
     - ``w=0.78e-6``, ``l=0.78e-6``

Tap Resistance Equations
------------------------

The tap symbols display their resistance using the same expression for both
``ptap1`` and ``ntap1``.

.. math::

   R_{tap} = \left( \frac{1}{\frac{w l}{9.8 \times 10^{-10}}} + \frac{1}{\frac{2(w+l)}{9.8 \times 10^{-4}}} \right)^{-1}

Equivalently, following the symbol expression directly:

.. math::

   R_{tap} = \frac{1}{\frac{1}{9.8 \times 10^{-10} / (w l)} + \frac{1}{9.8 \times 10^{-4} / (2(w+l))}}

This is the schematic-level displayed resistance formula used in the tap symbols.

Protection-Diode Notes
----------------------

The existing device collateral states:

- ``dantenna`` should connect its anode side to ``ptap1``
- ``dpantenna`` should connect its cathode side to ``ntap1``
- ``schottky_nbl1`` is treated as a fixed-geometry device where multiplicity is
  the main schematic-facing control

Diode And Tap Simulator Mapping
-------------------------------

Diodes and taps in ``ngspice`` and ``Xyce``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- protection-diode related models are delivered through ``cornerDIO.lib`` and
  diode-family model files such as ``diodes.lib``
- Schottky support is also delivered through dedicated model files such as
  ``sg13g2_dschottky_nbl1_mod.lib``

Diodes and taps in ``Gnucap``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The existing Gnucap documentation and file layout focus mainly on resistor,
capacitor, and MOS validation. The diode/tap family is therefore currently best
understood through the standard simulator model libraries and the schematic
primitive symbols.

Diode And Tap Examples
----------------------

Diode and tap devices are used throughout the Xschem examples as support
primitives, especially in resistor examples and protection-device testcases.
