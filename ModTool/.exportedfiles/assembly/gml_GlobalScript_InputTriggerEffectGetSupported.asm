:[0]
b [12]

> gml_Script_InputTriggerEffectGetSupported (locals=1, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
push.v arg.argument0
call.i gml_Script_InputPlayerGetDevice(argc=1)
pop.v.v local._device
pushloc.v local._device
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
conv.b.v
ret.v

:[5]
pushloc.v local._device
call.i gml_Script_InputDeviceGetGamepadType(argc=1)
pushi.e 4
cmp.i.v NEQ
bf [7]

:[6]
pushi.e 0
conv.b.v
ret.v

:[7]
pushi.e 0
bt [9]

:[8]
push.l 0
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
b [10]

:[9]
push.e 1

:[10]
conv.b.v
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_InputTriggerEffectGetSupported
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputTriggerEffectGetSupported
popz.v

:[end]