:[0]
b [5]

> gml_Script_InputVibrateDirect (locals=1, argc=3)
:[1]
push.v arg.argument0
call.i gml_Script_InputDeviceGetSteamHandle(argc=1)
pop.v.v local._steamHandle
pushloc.v local._steamHandle
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [3]

:[2]
push.i 65535
push.v arg.argument2
mul.v.i
push.i 65535
push.v arg.argument1
mul.v.i
pushloc.v local._steamHandle
call.i steam_input_trigger_vibration(argc=3)
popz.v
b [4]

:[3]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gamepad_set_vibration(argc=3)
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_InputVibrateDirect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVibrateDirect
popz.v

:[end]