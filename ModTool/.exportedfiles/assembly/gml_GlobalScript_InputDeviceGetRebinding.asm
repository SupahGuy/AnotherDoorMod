:[0]
b [7]

> gml_Script_InputDeviceGetRebinding (locals=0, argc=1)
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
chknullish.e
bf [5]

:[4]
popz.v
pushi.e 0
conv.b.v

:[5]
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_InputDeviceGetRebinding
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetRebinding
popz.v

:[end]