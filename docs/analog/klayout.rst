Analog Design Using Klayout
===========================

Klayout can be easily installed per debian package manager ``dpkg`` using the following scheme (please choose the OS and the version
according to your requirements). For the exact location refer to the official `Klayout website`_.

.. _Klayout website: https://www.klayout.de

.. code-block:: bash

  wget  https://www.klayout.org/downloads/Ubuntu-24/klayout_version.deb
  sudo dpkg - klayout_version.deb

The basic configuration of Klayout includes setting the environmental variables in your ``/home/$USER/.bashrc`` file as follows:

.. code-block:: bash

  export KLAYOUT_PATH="/home/$USER/.klayout:$PDK_ROOT/$PDK/libs.tech/klayout"
  export KLAYOUT_HOME=/home/$USER/.klayout 

.. warning::

  Please note that the ``PDK_ROOT`` and ``PDK`` variables have to be exported earlier

Klayout configuration is stored in the ``/home/$USER/.klayout/klayoutrc`` file. Here we provide some useful sections the user can
add to its own configuration.

Grid configuration (minimal grid size 5 nm):

.. code-block:: xml

  <default-grids>0.1,0.05,0.025,0.01,0.005</default-grids>

Key bindings:

.. code-block:: xml

  <key-bindings>
  '@secrets.duplicate_interactive':C;
  '@secrets.paste_interactive':H;
  '@secrets.sel_move_interactive':M;
  edit_menu.cell_menu.adjust_cell_origin:O;
  edit_menu.clear_all_rulers:'Shift+K';
  edit_menu.edit_options:F3;
  edit_menu.mode_menu.box:B;
  edit_menu.mode_menu.instance:I;
  edit_menu.mode_menu.partial:S;
  edit_menu.mode_menu.path:P;
  edit_menu.mode_menu.polygon:'Shift+P';
  edit_menu.mode_menu.ruler:R;
  edit_menu.mode_menu.text:X;
  edit_menu.redo:'Ctrl+Z';
  edit_menu.select_menu.select_all:'Ctrl+Shift+A';
  edit_menu.select_menu.unselect_all:'Ctrl+D';
  edit_menu.selection_menu.align:A;
  edit_menu.selection_menu.change_layer:'Shift+L';
  edit_menu.selection_menu.flatten_insts:'Alt+Shift+F';
  edit_menu.selection_menu.make_cell:'Alt+Shift+M';
  edit_menu.selection_menu.sel_flip_x:'Shift+H';
  edit_menu.selection_menu.sel_flip_y:'Shift+V';
  edit_menu.selection_menu.sel_move:'[';
  edit_menu.selection_menu.sel_move_to:']';
  edit_menu.selection_menu.sel_rot_ccw:'Shift+R';
  edit_menu.selection_menu.sel_rot_cw:'Ctrl+Shift+R';
  edit_menu.selection_menu.tap:T;
  edit_menu.selection_menu.union:'Shift+M';
  edit_menu.undo:U;
  file_menu.new_layout:'Ctrl+N';
  file_menu.open_same_panel:'Ctrl+Shift+O';
  file_menu.save:'Ctrl+S';
  file_menu.save_as:'Ctrl+Shift+S';
  file_menu.reload:'Ctrl+Shift+R';
  help_menu.assistant:F1;
  view_menu.crosshair_cursor:'Shift+C';
  zoom_menu.ascend:'Ctrl+E';
  zoom_menu.descend:'Shift+E';
  zoom_menu.descend_into:E;
  zoom_menu.max_hier:'Shift+F';
  zoom_menu.redraw:'Ctrl+R';
  zoom_menu.select_cell:'Shift+S';
  zoom_menu.select_current_cell:'Shift+T';
  zoom_menu.zoom_fit:F;
  zoom_menu.zoom_fit_sel:'Ctrl+F';
  zoom_menu.zoom_in:Return;
  zoom_menu.zoom_out:'Shift+Return';
  zoom_menu.max_hier_0:0;
  zoom_menu.max_hier_1:9;
  '@lcp_context_menu.hide_empty_layers':4;
  '@lcp_context_menu.invvalid':6;
  '@lcp_context_menu.show_all':1;
  '@lcp_context_menu.show_only':2;
  '@lcp_context_menu.toggle_visibility':3;
  '@lcp_context_menu.valid':5
   </key-bindings>
