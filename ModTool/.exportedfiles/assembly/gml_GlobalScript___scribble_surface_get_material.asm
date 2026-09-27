:[0]
b [3]

> gml_Script___scribble_surface_get_material (locals=0, argc=1)
:[1]
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
push.v arg.argument0
call.i surface_get_texture(argc=1)
push.s "surface"@3455
conv.s.v
call.i gml_Script___scribble_get_material(argc=6)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script___scribble_surface_get_material
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_surface_get_material
popz.v

:[end]