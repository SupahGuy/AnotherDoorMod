:[0]
b [8]

> gml_Script_string_height_scribble (locals=1, argc=1)
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
call.i draw_get_font(argc=0)
pop.v.v local._font
pushloc.v local._font
call.i font_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.v static._scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
b [6]

:[5]
pushloc.v local._font
call.i font_get_name(argc=1)

:[6]
pop.v.v local._font
push.v arg.argument0
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
push.i 16777215
conv.i.v
pushloc.v local._font
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.get_height
dup.e 2 0
callv.v 0
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_string_height_scribble
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.string_height_scribble
popz.v

:[end]