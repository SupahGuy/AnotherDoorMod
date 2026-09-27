:[0]
push.v builtin.n_root
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [end]

:[1]
push.v builtin.n_root
call.i gml_Script_ik_flex_panel_draw_layout(argc=1)
popz.v

:[end]