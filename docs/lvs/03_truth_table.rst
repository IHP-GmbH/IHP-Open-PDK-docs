Truth Table for SG13G2 SiGe BiCMOS Process
==========================================

The Topological Truth Table is a design aid that helps establish the relationship between:

    - IHP-defined topological layers: These are the fundamental building blocks used to construct an integrated circuit (IC) layout.
    - Discrete structures: These are individual elements within the IC, such as transistors, resistors, and capacitors.

.. note::

    The table serves two primary purposes:

    - Verifying implant layer generation: This table can be used to ensure that the specified implants are correctly applied to various discrete structures.
    - Understanding layer-structure interactions: clarifies how each topological layer interacts with different structures. 

    Here's an explanation of the symbols used in the table:

        **0**: The topological level must not touch the structure.

        **1**: The topological level must either enclose or match the structure.

        **X**: The layer has no electrical impact on the structure.

    By effectively utilizing the Topological Truth Table, designers can ensure accurate and efficient layout creation within the integrated circuit design process.


.. role:: blue
   :class: blue-text

.. only:: html

    .. rst-class:: rotated-header

    .. csv-table:: Truth Table for SG13G2 SiGe BiCMOS Process
        :class: longtable, align-default, docutils
        :file: tables/truth_table_lvs.csv
        :header-rows: 1
        :stub-columns: 1

.. only:: latex

    .. raw:: latex

        \begin{rotatedtable}
        \centering
        \begin{tabular}{|p{2cm}|*{26}{l|}}  % Define table with vertical lines
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{pSD} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Vmim} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{nBuLay} & \rotatedHeader{EXTBlock} & \rotatedHeader{IND} & \rotatedHeader{Activ.mask} & \rotatedHeader{nsD.block} & \rotatedHeader{Pwell.block} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{Metal1.res} \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{1- MOS:}}} \\ \hline
        nmos & 1 & 1 & x & 0 & 0 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        nmosHV & 1 & 1 & x & 0 & 1 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        pmos & 1 & 1 & 1 & 1 & 0 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & x & 0 & 0 & x \\ \hline
        pmosHV & 1 & 1 & 1 & 1 & 1 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & x & 0 & 0 & x \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{2- RF-MOS:}}} \\ \hline
        rfnmos & 1 & 1 & x & 1 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        rfnmosHV & 1 & 1 & x & 1 & 1 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        rfpmos & 1 & 1 & 1 & 1 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & 0 & x & 0 & 0 & x \\ \hline
        rfpmosHV & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & 0 & x & 0 & 0 & x \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{3- BJT:}}} \\ \hline
        npn13G2 & 1 & 0 & 0 & 1 & x & 1 & 1 & 1 & 0 & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 1 & 1 & 0 & 0 & 0 & x \\ \hline
        npn13G2L & 1 & 0 & 0 & 1 & x & 1 & 1 & 1 & 0 & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 1 & 0 & 0 & 0 & 0 & x \\ \hline
        npn13G2V & 1 & 0 & 0 & 1 & x & 1 & 1 & 0 & 1 & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 1 & 0 & 0 & 0 & 0 & x \\ \hline
        pnpMPA & 1 & 0 & 1 & 1 & x & 0 & 0 & 0 & 0 & x & 0 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & 0 & x & 0 & 0 & x \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{4- Diodes:}}} \\ \hline
        dantenna & 1 & 0 & 0 & 0 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & x \\ \hline
        dpantenna & 1 & 0 & 0 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & x \\ \hline
        schottky_nbl1 & 1 & 0 & 1 & 1 & 1 & x & 0 & x & x & x & 1 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & 1 & 1 & 1 & 0 & x \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{5- Resistors:}}} \\ \hline
        rhigh & 0 & 1 & 0 & 1 & 0 & 0 & 0 & x & x & 1 & 1 & 1 & x & x & x & x & x & 0 & 1 & x & 0 & x & 0 & 0 & 0 & x \\ \hline
        rppd & 0 & 1 & 0 & 1 & 0 & 0 & 0 & x & x & 1 & 1 & 1 & x & x & x & x & x & 0 & 1 & x & 0 & x & 0 & 0 & 0 & x \\ \hline
        rsil & 0 & 1 & 0 & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 1 & x & x & x & x & x & 0 & 1 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        lvsres & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{6- Capacitors:}}} \\ \hline
        cmim & x & x & x & x & x & x & x & x & x & x & x & x & 1 & 1 & 1 & 1 & x & x & x & x & x & x & x & x & x & x \\ \hline
        rfcmim & 1 & x & x & 1 & x & x & x & x & x & x & x & x & 1 & 1 & 1 & 1 & x & x & x & x & x & x & 1 & x & x & x \\ \hline
        Svaricap & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & 0 & 0 & 0 & 0 & 0 & x & x & x & 1 & 0 & x & 0 & x & x & 0 & 0 & x \\ \hline
        \end{tabular}
        \end{rotatedtable}

        \begin{rotatedtable}
        \centering
        \begin{tabular}{|p{2.5cm}|*{26}{l|}}  % Define table with vertical lines
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{pSD} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Vmim} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{nBuLay} & \rotatedHeader{EXTBlock} & \rotatedHeader{IND} & \rotatedHeader{Activ.mask} & \rotatedHeader{nsD.block} & \rotatedHeader{Pwell.block} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{Metal1.res} \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{7- ESD:}}} \\ \hline
        diodevdd\_2k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & x & 0 & 1 & x \\ \hline
        diodevdd\_4k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & x & 0 & 1 & x \\ \hline
        idiodevdd\_2kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & x & 1 & 0 & 1 & x \\ \hline
        idiodevdd\_4kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & x & 1 & 0 & 1 & x \\ \hline
        diodevss\_2k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & x & 0 & 1 & x \\ \hline
        diodevss\_4k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 0 & 0 & x & 0 & x & x & 0 & 1 & x \\ \hline
        idiodevss\_2kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & x & 0 & 0 & 1 & x \\ \hline
        idiodevss\_4kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & x & 0 & 0 & 1 & x \\ \hline
        nmoscl\_2 & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & x & 1 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & x & x & 0 & 1 & x \\ \hline
        nmoscl\_4 & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & x & 1 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & x & x & 0 & 1 & x \\ \hline
        scr1 & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & 0 & 1 & 0 & x & x & x & x & x & 1 & 0 & x & 0 & 1 & x & 0 & 1 & x \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{8- Inductors:}}} \\ \hline
        inductor2 & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 & x & x & 1 & x & x & 1 & x & x & x \\ \hline
        inductor3 & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 & x & x & 1 & x & x & 1 & x & x & x \\ \hline
        \multicolumn{27}{|l|}{\textcolor{blue}{\textbf{9- Taps:}}} \\ \hline
        ptap1 & 1 & 0 & 0 & 1 & x & 0 & 0 & x & x & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & x \\ \hline
        ntap1 & 1 & 0 & 1 & 0 & x & 0 & 0 & x & x & 0 & 0 & 0 & 0 & 0 & x & x & x & 1 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        \end{tabular}
        \end{rotatedtable}
