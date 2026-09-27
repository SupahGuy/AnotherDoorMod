:[0]
b [6]

> gml_Script_InputIconDefineKeyboard (locals=0, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputIconSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__keyboardIconMap
pop.v.v static._keyboardIconMap

:[3]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [5]

:[4]
push.v arg.argument0
call.i ord(argc=1)
pop.v.v arg.argument0

:[5]
push.v arg.argument1
push.v arg.argument0
push.v static._keyboardIconMap
call.i ds_map_set(argc=3)
popz.v
exit.i

:[6]
push.i [function]gml_Script_InputIconDefineKeyboard
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputIconDefineKeyboard
popz.v

:[end]