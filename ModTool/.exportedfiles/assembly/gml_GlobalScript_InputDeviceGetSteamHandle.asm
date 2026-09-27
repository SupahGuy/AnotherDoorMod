:[0]
b [10]

> gml_Script_InputDeviceGetSteamHandle (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadArray
pop.v.v static._gamepadArray

:[3]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushbltn.v builtin.undefined
ret.v

:[5]
push.v arg.argument0
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pushi.e -9
push.v [stacktop]self.__steamHandle
b [8]

:[7]
pushbltn.v builtin.undefined

:[8]
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_InputDeviceGetSteamHandle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetSteamHandle
popz.v

:[end]