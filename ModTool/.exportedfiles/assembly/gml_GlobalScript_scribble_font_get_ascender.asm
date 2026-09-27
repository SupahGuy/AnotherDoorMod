:[0]
b [3]

> gml_Script_scribble_font_get_ascender (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pushi.e -9
push.v [stacktop]self.__ascender
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scribble_font_get_ascender
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_get_ascender
popz.v

:[end]