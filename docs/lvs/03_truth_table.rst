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
        :widths: auto

.. only:: latex

    .. raw:: latex

        \begin{rotatedtable}
        \centering
        \begin{tabular}{|p{2cm}|*{28}{l|}}  % Define table with vertical lines
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{pSD} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{nBuLay} & \rotatedHeader{EXTBlock} & \rotatedHeader{nsD} & \rotatedHeader{nsD.block} & \rotatedHeader{RES} & \rotatedHeader{Metal1.res} & \rotatedHeader{Activ.mask} & \rotatedHeader{Pwell.block} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{IND} & \rotatedHeader{substrate} \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{1- MOS:}}} \\ \hline
        nmos & 1 & 1 & x & 0 & 0 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x \\ \hline
        nmosHV & 1 & 1 & x & 0 & 1 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x \\ \hline
        pmos & 1 & 1 & 1 & 1 & 0 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & 0 & x & x & x & 0 & 0 & x & x \\ \hline
        pmosHV & 1 & 1 & 1 & 1 & 1 & 1 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & 0 & x & x & x & 0 & 0 & x & x \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{2- RF-MOS:}}} \\ \hline
        rfnmos & 1 & 1 & x & 1 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x \\ \hline
        rfnmosHV & 1 & 1 & x & 1 & 1 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x \\ \hline
        rfpmos & 1 & 1 & 1 & 1 & 0 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & x \\ \hline
        rfpmosHV & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & x \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{3- BJT:}}} \\ \hline
        npn13G2 & 1 & 0 & 0 & 1 & x & 1 & 1 & 1 & 0 & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & 1 & x & x & 1 & 0 & 0 & 0 & x & 0 \\ \hline
        npn13G2L & 1 & 0 & 0 & 1 & x & 1 & 1 & 1 & 0 & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 0 & 0 & x & 0 \\ \hline
        npn13G2V & 1 & 0 & 0 & 1 & x & 1 & 1 & 0 & 1 & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 0 & 0 & x & 0 \\ \hline
        pnpMPA & 1 & 0 & 1 & 1 & x & 0 & 0 & 0 & 0 & x & 0 & 0 & x & x & x & x & 1 & 0 & 0 & 0 & x & x & x & x & 0 & 0 & x & 0 \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{4- Diodes:}}} \\ \hline
        dantenna & 1 & 0 & 0 & 0 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & 0 & x & x & x & 0 & 1 & 0 & x & 0 \\ \hline
        dpantenna & 1 & 0 & 0 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & x & x & x & 0 & 1 & 0 & x & 0 \\ \hline
        schottky_nbl1 & 1 & 0 & 1 & 1 & 1 & x & 0 & x & x & x & 1 & 0 & x & x & x & x & 1 & 0 & 0 & 1 & x & x & x & 1 & 1 & 0 & x & 0 \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{5- Resistors:}}} \\ \hline
        rhigh & 0 & 1 & 0 & 1 & 0 & 0 & 0 & x & x & 1 & 1 & 1 & x & x & x & x & 0 & 1 & 1 & x & 0 & x & 0 & 0 & 0 & 0 & x & x \\ \hline
        rppd & 0 & 1 & 0 & 1 & 0 & 0 & 0 & x & x & 1 & 1 & 1 & x & x & x & x & 0 & 1 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & x & x \\ \hline
        rsil & 0 & 1 & 0 & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 1 & x & x & x & x & 0 & 1 & 0 & 0 & 1 & x & 0 & 0 & 0 & 0 & x & x \\ \hline
        lvsres & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 & x & x & x & x & x & x \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{6- Capacitors:}}} \\ \hline
        cmim & x & x & x & x & x & x & x & x & x & x & x & x & 1 & 1 & 1 & x & x & x & x & x & x & x & x & x & x & x & x & x \\ \hline
        rfcmim & 1 & x & x & 1 & x & x & x & x & x & x & x & x & 1 & 1 & 1 & x & x & x & x & x & x & x & x & 1 & x & x & x & 0 \\ \hline
        Svaricap & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & 0 & 0 & 0 & 0 & x & x & x & 1 & 0 & 0 & x & 0 & x & x & x & 0 & 0 & x & 0 \\ \hline
        \end{tabular}
        \end{rotatedtable}

        \begin{rotatedtable}
        \centering
        \begin{tabular}{|p{2.5cm}|*{28}{l|}}  % Define table with vertical lines
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{pSD} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{nBuLay} & \rotatedHeader{EXTBlock} & \rotatedHeader{nsD} & \rotatedHeader{nsD.block} & \rotatedHeader{RES} & \rotatedHeader{Metal1.res} & \rotatedHeader{Activ.mask} & \rotatedHeader{Pwell.block} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{IND} & \rotatedHeader{substrate} \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{7- ESD:}}} \\ \hline
        diodevdd_2k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 1 & x & 0 \\ \hline
        diodevdd_4k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 1 & x & 0 \\ \hline
        idiodevdd_2kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 1 & 0 & 0 & x & x & x & x & 1 & 0 & 1 & x & 0 \\ \hline
        idiodevdd_4kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 1 & 0 & 0 & x & x & x & x & 1 & 0 & 1 & x & 0 \\ \hline
        diodevss_2k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 1 & x & 0 \\ \hline
        diodevss_4k & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & x & x & x & x & 0 & 1 & x & 0 \\ \hline
        idiodevss_2kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 1 & 0 & 0 & x & x & x & x & 0 & 0 & 1 & x & 0 \\ \hline
        idiodevss_4kv & 1 & 0 & 1 & 1 & x & x & 0 & x & x & x & 0 & 0 & x & x & x & x & 1 & 0 & 0 & x & x & x & x & 0 & 0 & 1 & x & 0 \\ \hline
        nmoscl_2 & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & x & 1 & 0 & x & x & x & x & 1 & 0 & 0 & x & 0 & x & x & x & 0 & 1 & x & 0 \\ \hline
        nmoscl_4 & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & x & 1 & 0 & x & x & x & x & 1 & 0 & 0 & x & 0 & x & x & x & 0 & 1 & x & 0 \\ \hline
        scr1 & 1 & 1 & 1 & 1 & 1 & 0 & 0 & x & x & 0 & 1 & 0 & x & x & x & x & 1 & 0 & 0 & 1 & 0 & x & x & x & 0 & 1 & x & 0 \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{8- Inductors:}}} \\ \hline
        inductor2 & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 & x & x & x & x & x & x & x & 1 & x & x & 1 & x \\ \hline
        inductor3 & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 & x & x & x & x & x & x & x & 1 & x & x & 1 & x \\ \hline
        \multicolumn{29}{|l|}{\textcolor{blue}{\textbf{9- Taps:}}} \\ \hline
        ptap1 & 1 & 0 & 0 & 1 & x & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & 0 & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & x & 1 \\ \hline
        ntap1 & 1 & 0 & 1 & 0 & x & 0 & 0 & x & x & 0 & 0 & 0 & x & x & x & x & 1 & 0 & 0 & 0 & 0 & x & 0 & x & 0 & 0 & x & 0 \\ \hline
        \end{tabular}
        \end{rotatedtable}
