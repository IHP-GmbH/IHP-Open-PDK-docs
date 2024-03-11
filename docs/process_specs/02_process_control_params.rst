Process Control Parameters
==========================

.. role:: red
   :class: red-text

.. role:: blue
   :class: blue-text

.. role:: ital
   :class: blue-text2

NMOS
----

.. tip::
    `VGS ≤ 1.65 V @ 125°C`

 =========================================== ============ ================ ============= ============= ============= ============== ======================= 
  Parameter                                   Name         Unit             Min            Target       Max            Meas.Cond.    Comment                
 =========================================== ============ ================ ============= ============= ============= ============== ======================= 
  Threshold Voltage Short Channel Device      VTN10x013    V                :red:`0.43`   :blue:`0.50`  :red:`0.55`   A.a1           WxL = 10 x 0.13 µm²    
  Threshold Voltage Long Channel Device       VTN10x10     V                :blue:`0.16`  :blue:`0.20`  :blue:`0.24`  A.a1           WxL = 10 x 10 µm²      
  Threshold Voltage Small Channel Device      VTN015x013   V                :blue:`0.4`   :blue:`0.54`  :blue:`0.68`  A.a1           WxL = 0.15 x 0.13 µm²  
  Saturation Current Short Channel Device     IDSN013      µA/µm            :red:`380`    :blue:`480`   :red:`600`    A.b1           WxL = 10 x 0.13 µm²    
  Off-Current Short Channel Device            IOFFN013     LOG10 (A/µm)                   :blue:`-10`   :red:`-9`     A.c1           WxL = 10 x 0.13 µm²    
  Drain Induced Barrier Lowering 0.1/1.2V     DIBLN013     mV/V             :blue:`20`    :blue:`50`    :blue:`80`    A.d1           WxL = 10 x 0.13 µm²    
  Sub Threshold Slope                         SSN013       mV/dec           :blue:`76`    :blue:`82`    :blue:`88`    A.e            WxL = 10 x 0.13 µm²    
  Breakdown Voltage                           BVDSSN013    V                :red:`2.0`    :blue:`2.7`                 A.f1           WxL = 10 x 0.13 µm²    
  Effective Channel Length                    LEFFN013     µm               :blue:`0.10`  :blue:`0.14`  :blue:`0.19`  A.g1           WxL = 10 x 0.13 µm²    
  Effective Channel Width                     WEFFN015     µm               :blue:`0.09`  :blue:`0.15`  :blue:`0.22`  A.h1           WxL = 0.15 x 0.13 µm²  
  Miller Capacitance NMOS                     CMILLERN     fF/µm            :blue:`0.32`  :blue:`0.36`  :blue:`0.40`  A.k1                                  
  Junction Capacitance NMOS                   CJUNCTIONN   fF/µm²           :blue:`0.9`   :blue:`0.95`  :blue:`1.0`   A.k                                   
  Junction Breakdown                          BVNPW                                       :ital:`12`                  A.f3                                  
 =========================================== ============ ================ ============= ============= ============= ============== ======================= 

PMOS
----

.. tip::
    `VGS ≤ 1.65 V @ 125°C`

.. csv-table:: PMOS - Process Control Parameters
    :file: tables/pmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


iNMOS
-----

.. tip::
    `VGS ≤ 1.65 V @ 125°C`

.. csv-table:: INMOS - Process Control Parameters
    :file: tables/inmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


HV-NMOS
-------

.. tip::
    `VGS ≤ 3,3V (Maximum) @ 27°C for LG ≥ 0,6 µm`

.. csv-table:: HV-NMOS - Process Control Parameters
    :file: tables/hvnmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


HV-PMOS
-------

.. tip::
    `VGS ≤ 3,3V (Maximum) @ 27°C for LG ≥ 0,5 µm`

.. csv-table:: HV-PMOS - Process Control Parameters
    :file: tables/hvnmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


HV-iNMOS
--------

.. tip::
    `VGS ≤ 3,3V (Maximum) @ 27°C for LG ≥ 0,6 µm`

.. csv-table:: HV-iNMOS - Process Control Parameters
    :file: tables/hvinmos_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


Rsil
----

.. tip::
    Rsil utilizes **salicided, n-doped gate polysilicon** as resistor material.

.. csv-table:: Rsil - Process Control Parameters
    :file: tables/rsil_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


Rppd
----

.. tip::
    Rppd utilizes **unsalicided, p-doped gate polysilicon** as resistor material. For realizing precision resistors, a line width of 2µm or higher is recommended.

.. csv-table:: Rppd - Process Control Parameters
    :file: tables/rppd_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


Rhigh
-----

.. tip::
    Rhigh utilizes **unsalicided, partially compensated gate polysilicon** as resistor material.

.. csv-table:: Rhigh - Process Control Parameters
    :file: tables/rhigh_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


Schottky_nbl1
-------------

.. tip::
    This Schottky barrier diode utilizes **Nbulay** as cathode.

.. csv-table:: Schottky_nbl1 - Process Control Parameters
    :file: tables/schottky_nbl1_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


S-Varicap
---------

.. tip::
    Thick Gate Oxide

.. csv-table:: S-Varicap - Process Control Parameters
    :file: tables/svaricap_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


MIM Capacitor
-------------

.. csv-table:: MIM Capacitor - Process Control Parameters
    :file: tables/mimcap_params.csv
    :widths: 200, 150, 100, 100, 100, 100, 100, 300


Resistances, Line Width Deltas, Temperature Coefficients
--------------------------------------------------------

.. csv-table:: Resistances, Line Width Deltas, Temperature Coefficients - Process Control Parameters
    :file: tables/res_params.csv
    :widths: 250, 200, 100, 100, 100, 100, 100, 300


Contact & Via Resistances
-------------------------

.. csv-table:: Contact & Via Resistances - Process Control Parameters
    :file: tables/contact_vias_params.csv
    :widths: 250, 200, 100, 100, 100, 100, 100, 300


Maximum Current Densities
-------------------------

.. tip::
    `(11 years @105°C)`

.. csv-table:: Maximum Current Densities - Process Control Parameters
    :file: tables/curr_dens_params.csv
    :widths: 200, 200, 100, 100, 100, 100, 100, 300


Layer Thickness Values
----------------------

.. csv-table:: Layer Thickness Values - Process Control Parameters
    :file: tables/layer_thick_params.csv
    :widths: 300, 200, 100, 100, 100, 100, 100, 300


Parasitic Capacitances
----------------------

.. csv-table:: Parasitic Capacitances - Process Control Parameters
    :file: tables/parasitic_cap_params.csv
    :widths: 250, 200, 100, 100, 100, 100, 100, 300
