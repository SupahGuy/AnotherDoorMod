:[0]
b [5]

> gml_Script_scribble_font_get_default (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state

:[3]
push.v static._scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scribble_font_get_default
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_get_default
popz.v

:[end]