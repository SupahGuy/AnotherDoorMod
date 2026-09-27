:[0]
b [5]

> gml_Script_scribble_font_get_remap (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pushi.e -9
push.v [stacktop]self.__remap
chknullish.e
bf [3]

:[2]
popz.v
push.v arg.argument0

:[3]
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scribble_font_get_remap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_get_remap
popz.v

:[end]