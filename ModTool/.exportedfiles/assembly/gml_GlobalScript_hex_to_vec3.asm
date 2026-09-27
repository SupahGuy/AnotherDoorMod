:[0]
b [3]

> gml_Script_hex_to_vec3 (locals=3, argc=1)
:[1]
push.v arg.argument0
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
pop.v.v local._r
push.v arg.argument0
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
pop.v.v local._g
push.v arg.argument0
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
pop.v.v local._b
pushloc.v local._b
pushloc.v local._g
pushloc.v local._r
call.i @@NewGMLArray@@(argc=3)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_hex_to_vec3
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.hex_to_vec3
popz.v

:[end]