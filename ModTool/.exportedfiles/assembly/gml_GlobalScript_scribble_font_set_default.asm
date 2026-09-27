:[0]
b [11]

> gml_Script_scribble_font_set_default (locals=0, argc=1)
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
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.s "The default font should be defined using its name as a string.\n(Input was an invalid datatype)"@7908
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
pushbltn.v builtin.undefined
ret.v

:[5]
pushi.e 0
bf [7]

:[6]
push.v static._scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
pushbltn.v builtin.undefined
cmp.v.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "Setting default font to \""@7909
push.v arg.argument0
call.i string(argc=1)
add.v.s
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v

:[10]
push.v arg.argument0
push.v static._scribble_state
pushi.e -9
pop.v.v [stacktop]self.__default_font
exit.i

:[11]
push.i [function]gml_Script_scribble_font_set_default
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_set_default
popz.v

:[end]