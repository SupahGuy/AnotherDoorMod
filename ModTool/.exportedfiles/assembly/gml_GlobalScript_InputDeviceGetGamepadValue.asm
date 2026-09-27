:[0]
b [11]

> gml_Script_InputDeviceGetGamepadValue (locals=0, argc=2)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
conv.i.v
ret.v

:[3]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [5]

:[4]
pushi.e 0
conv.i.v
ret.v

:[5]
push.v arg.argument0
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 0
conv.i.v
ret.v

:[7]
push.v arg.argument0
call.i gamepad_is_connected(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e 0
conv.i.v
ret.v

:[9]
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v arg.argument1
push.i 32769
sub.i.v
push.v arg.argument0
call.i gml_Script___InputGamepadGetReadArray(argc=1)
call.i @@array_get@@(argc=2)
callv.v 2
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_InputDeviceGetGamepadValue
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetGamepadValue
popz.v

:[end]