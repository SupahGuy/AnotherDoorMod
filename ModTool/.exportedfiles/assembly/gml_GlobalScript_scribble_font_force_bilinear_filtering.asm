:[0]
b [8]

> gml_Script_scribble_font_force_bilinear_filtering (locals=4, argc=2)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pushi.e -9
pushenv [7]

:[2]
push.v builtin.__bilinear
push.v arg.argument1
cmp.v.v EQ
bf [4]

:[3]
popenv <drop>
exit.i

:[4]
push.v arg.argument1
pop.v.v builtin.__bilinear
push.v builtin.__glyph_data_grid
pop.v.v local._grid
pushi.e 0
pop.v.i local._i
pushloc.v local._grid
call.i ds_grid_width(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._grid
call.i ds_grid_get(argc=3)
pop.v.v local._material
pushloc.v local._material
push.v arg.argument1
dup.v 1 8
dup.v 0
push.v stacktop.__duplicate_material_with_new_bilinear
callv.v 1
pop.v.v local._new_material
pushloc.v local._new_material
push.l 11
conv.l.v
pushloc.v local._i
pushloc.v local._grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [5]

:[6]
popz.i

:[7]
popenv [2]
exit.i

:[8]
push.i [function]gml_Script_scribble_font_force_bilinear_filtering
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_force_bilinear_filtering
popz.v

:[end]