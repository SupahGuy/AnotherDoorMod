:[0]
b [24]

> gml_Script___InputColorClassPlayer (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [23]

:[2]
setstatic.e
b [12]

> gml_Script___SetColor@anon@212@__InputColorClassPlayer@__InputColorClassPlayer (locals=3, argc=1)
:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputVibrateSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap

:[5]
push.v arg.argument0
pop.v.v builtin.__color
push.v builtin.__playerIndex
call.i gml_Script_InputPlayerGetDevice(argc=1)
pop.v.v local._device
push.l 0
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
bf [11]

:[6]
pushloc.v local._device
call.i gml_Script_InputDeviceGetSteamHandle(argc=1)
pop.v.v local._steamHandle
pushloc.v local._steamHandle
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [10]

:[7]
pushi.e 0
pop.v.i local._ledFlag
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i arg.argument0
pushi.e 1
pop.v.i local._ledFlag

:[9]
pushloc.v local._ledFlag
push.v arg.argument0
pushloc.v local._steamHandle
call.i steam_input_set_led_color(argc=3)
popz.v

:[10]
b [11]

:[11]
exit.i

:[12]
push.i [function]gml_Script___SetColor@anon@212@__InputColorClassPlayer@__InputColorClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__SetColor
b [22]

> gml_Script___SupportedByDevice@anon@1424@__InputColorClassPlayer@__InputColorClassPlayer (locals=3, argc=0)
:[13]
push.v builtin.__playerIndex
call.i gml_Script_InputPlayerGetDevice(argc=1)
pop.v.v local._device
push.l 0
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
bf [20]

:[14]
pushloc.v local._device
call.i gml_Script_InputDeviceGetSteamHandle(argc=1)
pop.v.v local._steamHandle
pushloc.v local._steamHandle
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [19]

:[15]
pushloc.v local._device
call.i gml_Script_InputDeviceGetGamepadType(argc=1)
pop.v.v local._type
pushloc.v local._type
pushi.e 3
cmp.i.v EQ
bt [17]

:[16]
pushloc.v local._type
pushi.e 4
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
conv.b.v
ret.v

:[19]
b [20]

:[20]
pushi.e 0
conv.b.v
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script___SupportedByDevice@anon@1424@__InputColorClassPlayer@__InputColorClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__SupportedByDevice

:[23]
push.v arg.argument0
pop.v.v builtin.__playerIndex
pushbltn.v builtin.undefined
pop.v.v builtin.__color
exit.i

:[24]
push.i [function]gml_Script___InputColorClassPlayer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputColorClassPlayer
popz.v

:[end]