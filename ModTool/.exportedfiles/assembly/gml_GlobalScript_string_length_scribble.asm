:[0]
b [3]

> gml_Script_string_length_scribble (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.get_glyph_count
dup.e 2 0
callv.v 0
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_string_length_scribble
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.string_length_scribble
popz.v

:[end]