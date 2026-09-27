:[0]
b [2]

> gml_Script_scribble_font_set_ascender (locals=0, argc=2)
:[1]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pushi.e -9
pop.v.v [stacktop]self.__ascender
exit.i

:[2]
push.i [function]gml_Script_scribble_font_set_ascender
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_set_ascender
popz.v

:[end]