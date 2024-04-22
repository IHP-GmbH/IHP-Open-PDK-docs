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

.. role:: ital
   :class: blue-text2

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
        \begin{tabular}{|p{1.5cm}|*{35}{p{0.1cm}|}}
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{Pwell} & \rotatedHeader{Pwell.block} & \rotatedHeader{nsD.drw} & \rotatedHeader{nsD} & \rotatedHeader{nsD.block} & \rotatedHeader{pSD} & \rotatedHeader{Nwell\_holes} & \rotatedHeader{ptap\_holes} & \rotatedHeader{ntap\_holes} & \rotatedHeader{nBuLay} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{EXTBlock} & \rotatedHeader{RES} & \rotatedHeader{Metal1.res} & \rotatedHeader{Activ.mask} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{IND} & \rotatedHeader{IND.pin} & \rotatedHeader{substrate} & \rotatedHeader{text} \\
        \hline
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{1- MOS}} \\
        \hline
        nmos & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & x & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        nmosHV & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        pmos & 1 & 1 & 1 & 0 & x & 0 & 0 & x & 1 & x & x & x & x & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        pmosHV & 1 & 1 & 1 & 0 & x & 0 & 0 & x & 1 & x & x & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{2- RF-MOS}} \\
        \hline
        rfnmos & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        rfnmosHV & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & x & x & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        rfpmos & 1 & 1 & 1 & 0 & x & 0 & 0 & x & 1 & x & 0 & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        rfpmosHV & 1 & 1 & 1 & 0 & x & 0 & 0 & x & 1 & x & 0 & x & x & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{3- BJT}} \\
        \hline
        npn13G2 & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & x & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 1 & 0 & 0 & x & 0 \\
        npn13G2L & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 1 & x & 1 & 0 & 0 & x & 0 \\
        npn13G2V & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & 0 & 0 & 1 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 1 & 0 & 0 & x & 0 \\
        pnpMPA & 1 & 0 & 1 & 0 & x & 0 & 1 & 0 & 1 & x & 1 & x & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & x & 0 & 0 & x & 0 \\
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{4- Diodes}} \\
        \hline
        dantenna & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\
        dpantenna & 1 & 0 & 0 & 1 & 0 & 0 & 0 & x & 1 & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\
        schottky\_nbl1 & 1 & 0 & 1 & 0 & 1 & 0 & 1 & 1 & 0 & 1 & 1 & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{5- Resistors}} \\
        \hline
        res\_rhigh & 0 & 1 & 0 & 1 & 0 & 1 & 1 & 0 & 1 & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 & x & x & x & 1 & 0 & x & 0 & 0 & 0 & x \\
        res\_rppd & 0 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 1 & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 & x & x & x & 1 & 0 & x & 0 & 0 & 0 & x \\
        res\_rsil & 0 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & x & x & x & 1 & 1 & x & 0 & 0 & 0 & x \\
        lvsres & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 & x & x & x & 0 & 0 & 0 & x \\
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{6- Capacitors}} \\
        \hline
        cmim & x & 0 & x & 1 & 0 & 0 & 1 & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & x & 0 & 0 & x & 0 & 0 & 0 & x \\
        rfcmim & x & 0 & x & 0 & 1 & 0 & 1 & 0 & 0 & x & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & x & 0 & 0 & x & 0 & 0 & 0 & x \\
        Svaricap & 1 & 1 & 1 & 0 & x & 0 & 1 & 0 & 0 & x & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        \hline
        \end{tabular}
        \end{rotatedtable}

        \begin{rotatedtable}
        \centering
        \begin{tabular}{|p{1.5cm}|*{35}{p{0.1cm}|}}
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{Pwell} & \rotatedHeader{Pwell.block} & \rotatedHeader{nsD.drw} & \rotatedHeader{nsD} & \rotatedHeader{nsD.block} & \rotatedHeader{pSD} & \rotatedHeader{Nwell\_holes} & \rotatedHeader{ptap\_holes} & \rotatedHeader{ntap\_holes} & \rotatedHeader{nBuLay} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{EXTBlock} & \rotatedHeader{RES} & \rotatedHeader{Metal1.res} & \rotatedHeader{Activ.mask} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{IND} & \rotatedHeader{IND.pin} & \rotatedHeader{substrate} & \rotatedHeader{text} \\
        \hline
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{7- ESD}} \\
        \hline
        diodevdd\_2k & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & x & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        diodevdd\_4k & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & x & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        diodevss\_2k & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        diodevss\_4k & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        idiodevdd\_2kv & 1 & 0 & 1 & 1 & 1 & 0 & 1 & 0 & 1 & x & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        idiodevdd\_4kv & 1 & 0 & 1 & 1 & 1 & 0 & 1 & 0 & 1 & x & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        idiodevss\_2kv & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        idiodevss\_4kv & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 0 \\
        nmoscl\_2 & 1 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 1 \\
        nmoscl\_4 & 1 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 1 \\
        scr1 & 1 & 1 & 1 & 1 & 0 & 0 & 1 & 1 & 1 & 1 & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & x & 1 \\
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{8- Inductors}} \\
        \hline
        inductor2 & x & 0 & x & 0 & 1 & 0 & x & x & x & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 0 & x & 0 & 0 & 0 & 1 & 1 & x \\
        inductor3 & x & 0 & x & 0 & 1 & 0 & x & x & x & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 0 & x & 0 & 0 & 0 & 1 & 1 & x \\
        \rowcolor{blue!20}
        \multicolumn{36}{|l|}{\textbf{9- Taps}} \\
        \hline
        ptap1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & x & 1 & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        ntap1 & 1 & 0 & 1 & 0 & x & 0 & 1 & 0 & 0 & x & x & x & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\
        \hline
        \end{tabular}
        \end{rotatedtable}
