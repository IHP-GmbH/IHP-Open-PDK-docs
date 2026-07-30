Capacitors
==========

This page documents the capacitor primitives currently exposed through the
SG13G2 schematic libraries.

Capacitor Overview
------------------

The current primitive set includes MIM capacitors, RF MIM capacitors, a
parasitic-capacitance symbol, and the high-voltage SVaricap device.

.. list-table:: Delivered capacitor symbols
   :header-rows: 1

   * - Symbol
     - Model
     - Notes
   * - ``cap_cmim``
     - ``cap_cmim``
     - scalable MIM capacitor
   * - ``cap_rfcmim``
     - ``cap_rfcmim`` / LVS model ``rfcmim``
     - RF-oriented MIM capacitor with body node
   * - ``cap_cpara``
     - ``cparasitic``
     - explicit parasitic-capacitance symbol
   * - ``sg13_svaricap``
     - ``sg13_hv_svaricap``
     - high-voltage variable-capacitance device

Capacitor User Parameters
-------------------------

.. list-table:: User-visible capacitor parameters
   :header-rows: 1

   * - Parameter
     - Meaning
     - Used by
     - Notes
   * - ``w``
     - capacitor width
     - ``cap_cmim``, ``cap_rfcmim``, ``sg13_svaricap``
     - geometry parameter used directly in netlisting
   * - ``l``
     - capacitor length
     - ``cap_cmim``, ``cap_rfcmim``, ``sg13_svaricap``
     - geometry parameter used directly in netlisting
   * - ``m``
     - multiplicity
     - ``cap_cmim``, ``cap_rfcmim``
     - scales the displayed capacitance expression
   * - ``wfeed``
     - feed width
     - ``cap_rfcmim``
     - present in RF MIM symbol netlisting
   * - ``Nx``
     - multiplier
     - ``sg13_svaricap``
     - replicated variable-capacitance fingers
   * - ``C``
     - explicit capacitance value
     - ``cap_cpara``
     - used directly without geometry derivation

Capacitor Default Symbol Templates
----------------------------------

.. list-table:: Default capacitor symbol values
   :header-rows: 1

   * - Symbol
     - Default values
   * - ``cap_cmim``
     - ``w=7.0e-6``, ``l=7.0e-6``, ``m=1``
   * - ``cap_rfcmim``
     - ``w=10.0e-6``, ``l=10.0e-6``, ``wfeed=5.0e-6``, ``m=1``
   * - ``cap_cpara``
     - ``C=10f``
   * - ``sg13_svaricap``
     - ``w=3.74u``, ``l=0.3u``, ``Nx=1``, ``body=sub!``

Displayed Capacitance Expressions
---------------------------------

For the MIM capacitor symbols, the displayed capacitance is computed in the
symbol text from the geometry parameters.

``cap_cmim``
~~~~~~~~~~~~

The symbol displays:

.. math::

   C_{cmim} = m \left( w l \cdot 1.5 \times 10^{-3} + 2(w+l) \cdot 40 \times 10^{-12} \right)

``cap_rfcmim``
~~~~~~~~~~~~~~

The RF MIM symbol displays the same capacitance expression:

.. math::

   C_{rfcmim} = m \left( w l \cdot 1.5 \times 10^{-3} + 2(w+l) \cdot 40 \times 10^{-12} \right)

``cap_cpara``
~~~~~~~~~~~~~

The parasitic capacitor symbol does not derive its value from geometry. It uses
the user-entered capacitance directly:

.. math::

   C_{cpara} = C

Interleaved MoM Capacitor
-------------------------

In addition to the MIM-based capacitor family, SG13G2 also has development
data for an interleaved metal-oxide-metal capacitor built from stacked MOM
layers. The source used here is ``MOM model development notes v4`` by Volker
Muehlhaus, dated 09 November 2022.

Geometry and scaling
~~~~~~~~~~~~~~~~~~~~

The documented MOM structure is built from repeating unit cells of size
``840 nm x 890 nm``.

.. image:: /_static/mom/mom_unit_cell.png
    :width: 260
    :align: center
    :alt: MOM unit cell geometry

The field plots in the model notes indicate that the inner unit cells have a
nearly homogeneous electric-field distribution, so the active-area capacitance
scales approximately linearly with the number of cells.

.. image:: /_static/mom/mom_efield_top.png
    :width: 320
    :align: center
    :alt: MOM top-view electric field distribution

Active-area capacitance
~~~~~~~~~~~~~~~~~~~~~~~

The notes distinguish between nominal geometry and active area. Active area is
the portion of the MOM array that is paired with a counter-electrode; outer edge
rows are not counted into this area term.

For the model values recommended from the study, the active-area capacitance is:

.. list-table:: Interleaved MoM active-area capacitance density
   :header-rows: 1

   * - MOM layer count
     - Active-area capacitance density
     - Note
   * - 3 layers
     - about ``0.88 fF/um^2``
     - based on Empire extraction of active-area scaling
   * - 4 layers
     - about ``1.17 fF/um^2``
     - based on Empire extraction of active-area scaling
   * - 5 layers
     - about ``1.36 fF/um^2``
     - corrected for true via size after comparing fast and accurate models

This gives the core capacitance term:

.. math::

   C_{active} = C_{dens} \cdot A_{active}

where ``C_dens`` is chosen from the table above.

Feed capacitance
~~~~~~~~~~~~~~~~

The model notes distinguish two feed configurations.

Same-side feed
^^^^^^^^^^^^^^

For same-side feed, the total capacitance includes a feed-overlap contribution.

.. image:: /_static/mom/mom_same_side_feed.png
    :width: 320
    :align: center
    :alt: MOM same-side feed geometry

The extracted feed-capacitance coefficients are:

.. list-table:: Single-sided MoM feed capacitance
   :header-rows: 1

   * - MOM layer count
     - Feed capacitance coefficient
   * - 3 layers
     - about ``0.97 fF/um`` of feed width
   * - 4 layers
     - about ``1.28 fF/um`` of feed width
   * - 5 layers
     - about ``1.46 fF/um`` of feed width

This gives the single-sided feed term:

.. math::

   C_{feed,single} = k_{feed} \cdot W_{feed}

Opposite-side feed
^^^^^^^^^^^^^^^^^^

For opposite-side feed, the additional feed capacitance is much smaller and is
treated as negligible in the notes.

.. image:: /_static/mom/mom_opposite_side_feed.png
    :width: 240
    :align: center
    :alt: MOM opposite-side feed geometry

The documented conclusion is that feed capacitance is less than ``2 fF`` for the
tested cases and can be approximated as zero:

.. math::

   C_{feed,opposite} \approx 0

Total capacitance model
~~~~~~~~~~~~~~~~~~~~~~~

Using the extracted terms above, the MOM model notes recommend:

.. math::

   C_{total} = C_{active} + C_{feed}

with ``C_feed`` chosen according to the feed geometry.

Series resistance notes
~~~~~~~~~~~~~~~~~~~~~~~

The notes also extract series-resistance behavior.

For single-sided feed, two solvers were compared and both gave an approximately
linear dependence on ``length / width``, but with noticeably different fitted
coefficients.

.. image:: /_static/mom/mom_single_side_resistance_momentum.png
    :width: 320
    :align: center
    :alt: MOM single-side resistance from Momentum

.. image:: /_static/mom/mom_single_side_resistance_empire.png
    :width: 320
    :align: center
    :alt: MOM single-side resistance from Empire

The notes explicitly mark this difference as still requiring investigation, so
these single-side resistance fits should be treated as model-development data
rather than final compact-model equations.

For two-sided feed, the notes report linear fits of the form:

.. math::

   R_{series} \approx a + b \cdot \frac{L}{W}

with extracted coefficients:

- 3-layer MOM: ``a = 0.10 ohm``, ``b = 0.31 ohm``
- 4-layer MOM: ``a = 0.14 ohm``, ``b = 0.27 ohm``
- 5-layer MOM: ``a = 0.15 ohm``, ``b = 0.26 ohm``

The same notes also discuss SRF and inductive behavior for the single-sided
configuration.

.. image:: /_static/mom/mom_single_side_srf_fit.png
    :width: 320
    :align: center
    :alt: MOM single-side SRF fit

Status in this documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This subsection documents the extracted model-development results for the
interleaved MOM capacitor. It should be read as characterization guidance for a
MOM device family, not yet as a direct replacement for the existing capacitor
symbols already delivered through the current schematic libraries.

Capacitor Simulator Library Mapping
-----------------------------------

Capacitors in ``ngspice``
~~~~~~~~~~~~~~~~~~~~~~~~~

- corner selector: ``cornerCAP.lib``
- family model files: ``capacitors_mod.lib`` and ``capacitors_stat.lib``

Capacitors in ``Xyce``
~~~~~~~~~~~~~~~~~~~~~~

- corner selector: ``cornerCAP.lib``
- family model files: ``capacitors_mod.lib`` and ``capacitors_stat.lib``

Capacitors in ``Gnucap``
~~~~~~~~~~~~~~~~~~~~~~~~

The Gnucap tree includes capacitor model sources such as ``cornerCAP.va``,
``capacitor_paramset.va``, and ``capacitor.va``.

Capacitor Examples
------------------

The Xschem test library already includes AC, transient, S-parameter, and Monte
Carlo examples for MIM and parasitic capacitor usage.
