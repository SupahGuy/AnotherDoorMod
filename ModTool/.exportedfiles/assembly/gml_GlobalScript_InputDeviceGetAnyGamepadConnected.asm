:[0]
b [9]

> gml_Script_InputDeviceGetAnyGamepadConnected (locals=2, argc=0)
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
pushi.e 0
pop.v.i local._i
push.v static._gamepadArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[4]
pushloc.v local._i
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[6]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[7]
popz.i
pushi.e 0
conv.b.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_InputDeviceGetAnyGamepadConnected
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetAnyGamepadConnected
popz.v

:[end]