:[0]
b [16]

> gml_Script___InputGamepadDiscover (locals=2, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputCreateTypeLookup(argc=0)
pop.v.v static._typeLookupStruct

:[3]
push.v arg.argument0
pushi.e -9
pushenv [15]

:[4]
push.v builtin.__gamepadIndex
pop.v.v local._device
pushloc.v local._device
call.i gamepad_hat_count(argc=1)
push.s ", hats = "@1179
conv.s.v
pushloc.v local._device
call.i gamepad_axis_count(argc=1)
push.s ", axes = "@1181
conv.s.v
pushloc.v local._device
call.i gamepad_button_count(argc=1)
push.s "\", buttons = "@1183
conv.s.v
pushloc.v local._device
call.i gamepad_get_guid(argc=1)
push.s "\", GUID=\""@1185
conv.s.v
pushloc.v local._device
call.i gamepad_get_description(argc=1)
push.s ", desc=\""@1187
conv.s.v
pushloc.v local._device
push.s "Discovering gamepad "@1188
conv.s.v
call.i gml_Script___InputTrace(argc=12)
popz.v
pushloc.v local._device
call.i gamepad_get_guid(argc=1)
pop.v.v builtin.__guid
pushloc.v local._device
call.i gamepad_get_description(argc=1)
pop.v.v builtin.__description
pushi.e 1
pop.v.i builtin.__type
push.v builtin.__guid
call.i gml_Script___InputGamepadGUIDParse(argc=1)
pop.v.v local._result
pushloc.v local._result
pushi.e -9
push.v [stacktop]self.__vendor
pop.v.v builtin.__vendor
pushloc.v local._result
pushi.e -9
push.v [stacktop]self.__product
pop.v.v builtin.__product
pushi.e 1
bf [7]

:[5]
pushloc.v local._device
pushi.e 4
cmp.i.v LT
bf [7]

:[6]
push.s "000000007801"@1190
conv.s.v
push.v builtin.__guid
call.i gml_Script___InputStringContains(argc=2)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
pop.v.b builtin.__xinput
push.v builtin.__xinput
conv.v.b
bf [10]

:[9]
push.s "XInput"@1192
pop.v.s builtin.__description
pushi.e 2
pop.v.i builtin.__type
b [14]

:[10]
push.s "\""@1193
conv.s.v
push.v builtin.__vendor
push.v builtin.__product
add.v.v
push.s "Identifying gamepad type using VID + PID \""@1194
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
push.v builtin.__vendor
push.v builtin.__product
add.v.v
push.v static._typeLookupStruct
call.i variable_struct_get(argc=2)
pop.v.v builtin.__type
push.v builtin.__type
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[11]
push.s "\""@1193
conv.s.v
push.v builtin.__description
push.s "Unsuccessful; identifying gamepad using description \""@1196
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
push.v builtin.__description
call.i gml_Script___InputGamepadIdentifyDescriptionType(argc=1)
pop.v.v builtin.__type
push.v builtin.__type
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
push.s "Unsuccessful; using fallback type"@1198
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 2
pop.v.i builtin.__type

:[13]
push.v builtin.__type
push.s "Gamepad type decided as "@1199
conv.s.v
call.i gml_Script___InputTrace(argc=2)
popz.v

:[14]
call.i @@This@@(argc=0)
call.i gml_Script___InputGamepadTransformSteam(argc=1)
popz.v
call.i @@This@@(argc=0)
call.i gml_Script___InputGamepadTransformQuirks(argc=1)
popz.v

:[15]
popenv [4]
exit.i

:[16]
push.i [function]gml_Script___InputGamepadDiscover
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGamepadDiscover
popz.v

:[end]