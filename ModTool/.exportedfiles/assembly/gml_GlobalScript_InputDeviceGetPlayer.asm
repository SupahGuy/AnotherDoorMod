:[0]
b [5]

> gml_Script_InputDeviceGetPlayer (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap

:[3]
push.v arg.argument0
push.v static._deviceMap
call.i ds_map_find_value(argc=2)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_InputDeviceGetPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetPlayer
popz.v

:[end]