:[0]
b [30]

> gml_Script___InputVibrateClassGamepad (locals=1, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [12]

:[2]
setstatic.e
b [11]

> gml_Script___Update@anon@1145@__InputVibrateClassGamepad@__InputVibrateClassGamepad (locals=0, argc=0)
:[3]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
bf [6]

:[4]
push.v builtin.__supported
conv.v.b
bf [6]

:[5]
push.v builtin.__vibrating
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v builtin.__calibrationStrength
push.v builtin.__right
mul.v.v
push.v builtin.__calibrationStrength
push.v builtin.__left
mul.v.v
push.v builtin.__device
call.i gml_Script_InputVibrateDirect(argc=3)
popz.v
pushi.e 0
pop.v.b builtin.__vibrating
b [10]

:[9]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.__device
call.i gml_Script_InputVibrateDirect(argc=3)
popz.v

:[10]
exit.i

:[11]
push.i [function]gml_Script___Update@anon@1145@__InputVibrateClassGamepad@__InputVibrateClassGamepad
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[12]
push.v arg.argument0
pop.v.v builtin.__device
pushi.e 0
pop.v.b builtin.__supported
pushi.e 0
pop.v.b builtin.__vibrating
pushi.e 0
pop.v.i builtin.__left
pushi.e 0
pop.v.i builtin.__right
pushi.e 1
pop.v.i builtin.__calibrationStrength
pushi.e 1
bf [14]

:[13]
push.v builtin.__device
pushi.e 4
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bt [17]

:[16]
pushi.e 0
conv.i.b
b [18]

:[17]
push.e 1

:[18]
bf [29]

:[19]
pushi.e 1
pop.v.b builtin.__supported
push.v builtin.__device
call.i gml_Script_InputDeviceGetGamepadType(argc=1)
pop.v.v local._gamepadType
pushi.e 1
bf [25]

:[20]
pushloc.v local._gamepadType
pushi.e 5
cmp.i.v EQ
bt [23]

:[21]
pushloc.v local._gamepadType
pushi.e 6
cmp.i.v EQ
bt [23]

:[22]
pushloc.v local._gamepadType
pushi.e 7
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.d 0.4
pop.v.d builtin.__calibrationStrength

:[28]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.__device
call.i gml_Script_InputVibrateDirect(argc=3)
popz.v

:[29]
exit.i

:[30]
push.i [function]gml_Script___InputVibrateClassGamepad
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVibrateClassGamepad
popz.v

:[end]