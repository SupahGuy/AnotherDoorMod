:[0]
b [6]

> gml_Script_InputIconDefineGamepad (locals=1, argc=3)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputIconSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadTypeMap
pop.v.v static._gamepadTypeMap

:[3]
push.v arg.argument0
push.v static._gamepadTypeMap
call.i ds_map_find_value(argc=2)
pop.v.v local._gamepadIconMap
pushloc.v local._gamepadIconMap
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
call.i ds_map_create(argc=0)
pop.v.v local._gamepadIconMap
pushloc.v local._gamepadIconMap
push.v arg.argument0
push.v static._gamepadTypeMap
call.i ds_map_set(argc=3)
popz.v

:[5]
push.v arg.argument2
push.v arg.argument1
pushloc.v local._gamepadIconMap
call.i ds_map_set(argc=3)
popz.v
exit.i

:[6]
push.i [function]gml_Script_InputIconDefineGamepad
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputIconDefineGamepad
popz.v

:[end]