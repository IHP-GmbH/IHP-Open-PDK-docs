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

.. role:: red
   :class: .red-text

.. only:: html

    .. rst-class:: rotated-header

    .. csv-table:: Truth Table for SG13G2 SiGe BiCMOS Process
        :class: longtable
        :file: tables/truth_table_lvs.csv
        :header-rows: 1
        :stub-columns: 1
        :widths: auto

.. only:: latex

    .. raw:: latex

        \begin{rotatedtable}
        \centering
        \begin{tabular}{|p{2cm}|*{36}{p{0.1cm}|}}
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{Pwell} & \rotatedHeader{Pwell.block} & \rotatedHeader{nsD.drw} & \rotatedHeader{nsD} & \rotatedHeader{nsD.block} & \rotatedHeader{pSD} & \rotatedHeader{Nwell\_holes} & \rotatedHeader{ptap\_holes} & \rotatedHeader{ntap\_holes} & \rotatedHeader{nBuLay} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{EXTBlock} & \rotatedHeader{RES} & \rotatedHeader{Metal1.res} & \rotatedHeader{Activ.mask} & \rotatedHeader{ContBar} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{IND} & \rotatedHeader{IND.pin} & \rotatedHeader{substrate} & \rotatedHeader{text} \\
        \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{1- MOS}} \\
        \hline
        nmos & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & x & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        nmosHV & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        pmos & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & x & x & x & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        pmosHV & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & x & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{2- RF-MOS}} \\
        \hline
        rfnmos & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        rfnmosHV & 1 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & x & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        rfpmos & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        rfpmosHV & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & x & 1 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{3- BJT}} \\
        \hline
        npn13G2 & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & x & 1 & x & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 1 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        npn13G2L & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & x & 0 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 1 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        npn13G2V & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & 1 & x & 0 & 0 & 1 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 1 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        pnpMPA & 1 & 0 & 1 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & 1 & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{4- Diodes}} \\
        \hline
        dantenna & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 1 & 0 & 0 & 0 & 0 & x \\ \hline
        dpantenna & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 1 & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 1 & 0 & 0 & 0 & 0 & x \\ \hline
        schottky\_nbl1 & 1 & 0 & 0 & 0 & 1 & 0 & 1 & 1 & 0 & 1 & 1 & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & 1 & 1 & 0 & 0 & 0 & 0 & x \\ \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{5- Resistors}} \\
        \hline
        res\_rhigh & 0 & 1 & 0 & 1 & 0 & 1 & 1 & 0 & 1 & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 & x & x & x & 1 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        res\_rppd & 0 & 1 & 0 & 1 & 0 & 0 & 0 & 0 & 1 & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & 0 & x & x & x & 1 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        res\_rsil & 0 & 1 & 0 & 1 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & x & x & x & 1 & 1 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        lvsres & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & x & 1 & x & x & x & x & x & x & x & x \\ \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{6- Capacitors}} \\
        \hline
        cmim & x & 0 & x & 1 & 0 & 0 & 1 & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        rfcmim & x & 0 & x & 0 & 1 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 1 & 1 & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        Svaricap & 1 & 1 & 1 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        \end{tabular}
        \end{rotatedtable}

        \begin{rotatedtable}
        \centering
        \begin{tabular}{|p{2cm}|*{36}{p{0.1cm}|}}
        \hline
        \rotatedHeader{Device/Layer} & \rotatedHeader{Activ} & \rotatedHeader{GatPoly} & \rotatedHeader{Nwell} & \rotatedHeader{Pwell} & \rotatedHeader{Pwell.block} & \rotatedHeader{nsD.drw} & \rotatedHeader{nsD} & \rotatedHeader{nsD.block} & \rotatedHeader{pSD} & \rotatedHeader{Nwell\_holes} & \rotatedHeader{ptap\_holes} & \rotatedHeader{ntap\_holes} & \rotatedHeader{nBuLay} & \rotatedHeader{ThickGateOx} & \rotatedHeader{HeatTrans} & \rotatedHeader{TRANS} & \rotatedHeader{EmWind} & \rotatedHeader{EmWiHV} & \rotatedHeader{HeatRes} & \rotatedHeader{SalBlock} & \rotatedHeader{PolyRes} & \rotatedHeader{MIM} & \rotatedHeader{Metal5} & \rotatedHeader{TopMetal1} & \rotatedHeader{TopMetal2} & \rotatedHeader{EXTBlock} & \rotatedHeader{RES} & \rotatedHeader{Metal1.res} & \rotatedHeader{Activ.mask} & \rotatedHeader{ContBar} & \rotatedHeader{Recog.diode} & \rotatedHeader{Recog.esd} & \rotatedHeader{IND} & \rotatedHeader{IND.pin} & \rotatedHeader{substrate} & \rotatedHeader{text} \\
        \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{7- ESD}} \\
        \hline
        diodevdd\_2k & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 0 & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        diodevdd\_4k & 1 & 0 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 0 & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        diodevss\_2k & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        diodevss\_4k & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        idiodevdd\_2kv & 1 & 0 & 1 & 1 & 1 & 0 & 1 & 0 & 1 & 0 & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        idiodevdd\_4kv & 1 & 0 & 1 & 1 & 1 & 0 & 1 & 0 & 1 & 0 & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        idiodevss\_2kv & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        idiodevss\_4kv & 1 & 0 & 0 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & 1 & x & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & x \\ \hline
        nmoscl\_2 & 1 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & 1 \\ \hline
        nmoscl\_4 & 1 & 1 & 1 & 1 & 0 & 0 & 1 & 0 & 1 & 1 & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & 1 \\ \hline
        scr1 & 1 & 1 & 1 & 1 & 0 & 0 & 1 & 1 & 1 & 1 & x & x & 1 & 1 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 1 & 0 & 0 & 0 & 1 \\ \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{8- Inductors}} \\
        \hline
        inductor & x & 0 & x & 0 & 1 & 0 & x & x & x & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 0 & x & 0 & x & 0 & 0 & 1 & 1 & 0 & x \\ \hline
        inductor3 & x & 0 & x & 0 & 1 & 0 & x & x & x & x & x & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & 1 & 0 & 0 & x & 0 & x & 0 & 0 & 1 & 1 & 0 & x \\ \hline
        \rowcolor{blue!20}
        \multicolumn{37}{|l|}{\textbf{9- Taps}} \\
        \hline
        ptap1 & 1 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 1 & x & x & x & 0 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 1 & x \\ \hline
        ntap1 & 1 & 0 & 1 & 0 & x & 0 & 1 & 0 & 0 & 0 & x & x & 1 & x & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & x & x & x & 0 & 0 & x & 0 & x & 0 & 0 & 0 & 0 & 0 & x \\ \hline
        \end{tabular}
        \end{rotatedtable}
