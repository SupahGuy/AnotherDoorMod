:[0]
b [3]

> gml_Script_map_value (locals=0, argc=5)
:[1]
push.v arg.argument0
push.v arg.argument1
sub.v.v
push.v arg.argument2
push.v arg.argument1
sub.v.v
div.v.v
push.v arg.argument4
push.v arg.argument3
sub.v.v
mul.v.v
push.v arg.argument3
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_map_value
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.map_value
popz.v

:[end]