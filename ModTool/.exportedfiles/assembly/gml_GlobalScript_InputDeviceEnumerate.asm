:[0]
b [45]

> gml_Script_InputDeviceEnumerate (locals=3, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._array

:[5]
pushi.e 0
conv.i.v
push.v static._array
call.i array_resize(argc=2)
popz.v
call.i gamepad_get_device_count(argc=0)
pop.v.v local._gamepadCount
pushi.e 1
conv.i.b
bf [17]

:[6]
pushi.e 0
bt [15]

:[7]
push.v static._system
pushi.e -9
push.v [stacktop]self.__usingSteamworks
conv.v.b
not.b
bf [9]

:[8]
pushi.e 1
b [10]

:[9]
push.e 0

:[10]
bt [15]

:[11]
push.v static._system
pushi.e -9
push.v [stacktop]self.__usingSteamworks
conv.v.b
bf [13]

:[12]
pushi.e 0
b [14]

:[13]
push.e 0

:[14]
b [16]

:[15]
push.e 1

:[16]
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e -1
pop.v.i local._sortOrder
pushloc.v local._gamepadCount
pushi.e 1
sub.i.v
pop.v.v local._device
b [21]

:[20]
pushi.e 1
pop.v.i local._sortOrder
pushi.e 0
pop.v.i local._device

:[21]
pushloc.v local._gamepadCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[22]
pushloc.v local._device
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
bf [24]

:[23]
pushloc.v local._device
push.v static._array
call.i array_push(argc=2)
popz.v

:[24]
push.v local._device
pushloc.v local._sortOrder
add.v.v
pop.v.v local._device
pushi.e 1
sub.i.i
dup.i 0
bt [22]

:[25]
popz.i
pushi.e 1
bt [30]

:[26]
pushi.e 0
bf [28]

:[27]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [29]

:[28]
push.e 0

:[29]
b [31]

:[30]
push.e 1

:[31]
not.b
not.b
bf [33]

:[32]
pushi.e -1
conv.i.v
push.v static._array
call.i array_push(argc=2)
popz.v

:[33]
pushi.e 0
bt [38]

:[34]
pushi.e 0
bf [36]

:[35]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
b [37]

:[36]
push.e 0

:[37]
b [39]

:[38]
push.e 1

:[39]
not.b
not.b
bf [41]

:[40]
pushi.e -2
conv.i.v
push.v static._array
call.i array_push(argc=2)
popz.v

:[41]
push.v arg.argument0
conv.v.b
bf [43]

:[42]
pushi.e -3
conv.i.v
push.v static._array
call.i array_push(argc=2)
popz.v

:[43]
push.v static._array
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_InputDeviceEnumerate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceEnumerate
popz.v

:[end]