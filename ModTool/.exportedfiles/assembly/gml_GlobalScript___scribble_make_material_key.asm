:[0]
b [3]

> gml_Script___scribble_make_material_key (locals=0, argc=5)
:[1]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.s ":"@2456
conv.s.v
call.i string_join(argc=6)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script___scribble_make_material_key
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_make_material_key
popz.v

:[end]