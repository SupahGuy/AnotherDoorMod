:[0]
b [8]

> gml_Script_InputDeviceGetRebindingResult (locals=1, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__rebindingMap
pop.v.v static._rebindingMap

:[3]
push.v arg.argument0
push.v static._rebindingMap
call.i ds_map_find_value(argc=2)
pop.v.v local._handler
pushloc.v local._handler
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
b [6]

:[5]
pushloc.v local._handler
pushi.e -9
push.v [stacktop]self.__rebindingResult

:[6]
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_InputDeviceGetRebindingResult
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetRebindingResult
popz.v

:[end]