:[0]
pushi.e -1
pop.v.i builtin.surface_mirror
pushi.e -1
pop.v.i builtin.surface_mirror2
push.l 3
conv.l.v
push.v builtin.surface_mirror
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
push.l 3
conv.l.v
push.v builtin.surface_mirror2
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 0
pop.v.b builtin.cursorColliding

:[end]