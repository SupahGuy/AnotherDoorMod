:[0]
b [2]

> gml_Script_scribble_super_clear (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.__clear
dup.e 2 0
callv.v 0
popz.v
exit.i

:[2]
push.i [function]gml_Script_scribble_super_clear
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_super_clear
popz.v

:[end]