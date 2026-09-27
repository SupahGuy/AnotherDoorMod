:[0]
b [17]

> gml_Script_InputIconGetDirect (locals=1, argc=3)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputIconSystem(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__keyboardIconMap
pop.v.v static._keyboardIconMap
push.v static._system
pushi.e -9
push.v [stacktop]self.__gamepadTypeMap
pop.v.v static._gamepadTypeMap

:[3]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
push.v static._system
pushi.e -9
push.v [stacktop]self.__empty
ret.v

:[5]
push.v arg.argument1
conv.v.b
not.b
bf [10]

:[6]
push.v arg.argument0
push.v static._keyboardIconMap
call.i ds_map_find_value(argc=2)
chknullish.e
bf [8]

:[7]
popz.v
push.v static._system
pushi.e -9
push.v [stacktop]self.__unsupported

:[8]
ret.v

:[9]
b [16]

:[10]
push.v arg.argument2
push.v static._gamepadTypeMap
call.i ds_map_find_value(argc=2)
pop.v.v local._gamepadMap
pushloc.v local._gamepadMap
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[11]
pushi.e 1
conv.i.v
push.v static._gamepadTypeMap
call.i ds_map_find_value(argc=2)
pop.v.v local._gamepadMap
pushloc.v local._gamepadMap
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
push.v static._system
pushi.e -9
push.v [stacktop]self.__unsupported
ret.v

:[13]
push.v arg.argument0
pushloc.v local._gamepadMap
call.i ds_map_find_value(argc=2)
chknullish.e
bf [15]

:[14]
popz.v
push.v static._system
pushi.e -9
push.v [stacktop]self.__unsupported

:[15]
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_InputIconGetDirect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputIconGetDirect
popz.v

:[end]