:[0]
b [47]

> gml_Script___InputGamepadTransformSteam (locals=4, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__steamInputTypeIgnoreMap
pop.v.v static._steamInputTypeIgnoreMap

:[3]
push.v static._system
pushi.e -9
push.v [stacktop]self.__usingSteamworks
conv.v.b
bf [41]

:[4]
push.v arg.argument0
pushi.e -9
pushenv [40]

:[5]
pushi.e 1
bf [7]

:[6]
push.v builtin.__xinput
conv.v.b
b [8]

:[7]
push.e 0

:[8]
pop.v.b local._gamepadIsVirtual
push.v builtin.__gamepadIndex
pop.v.v local._gamepadIndex
pushi.e 0
bf [10]

:[9]
push.v builtin.__guid
push.s "030000005e0400008e02000001000000"@1398
cmp.s.v EQ
b [11]

:[10]
push.e 0

:[11]
bt [20]

:[12]
pushi.e 0
bf [18]

:[13]
push.v builtin.__guid
push.s "03000000de280000ff11000001000000"@1399
cmp.s.v EQ
bf [18]

:[14]
push.v static._system
pushi.e -9
push.v [stacktop]self.__onSteamDeck
conv.v.b
bf [16]

:[15]
push.v static._system
pushi.e -9
push.v [stacktop]self.__usingSteam
conv.v.b
b [17]

:[16]
push.e 0

:[17]
not.b
b [19]

:[18]
push.e 0

:[19]
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
push.s " as it is a Steam virtual controller"@1402
conv.s.v
push.v builtin.__gamepadIndex
push.s "Ignoring gamepad "@1403
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [40]

:[23]
pushloc.v local._gamepadIndex
call.i steam_input_get_controller_for_gamepad_index(argc=1)
pop.v.v builtin.__steamHandle
push.v builtin.__steamHandle
call.i steam_input_get_gamepad_index_for_controller(argc=1)
pop.v.v local._check
pushloc.v local._check
push.s ", derived from Steam handle="@1407
conv.s.v
pushloc.v local._gamepadIndex
push.s ", remapped="@1408
conv.s.v
push.v builtin.__gamepadIndex
push.s "Checking gamepad index: original="@1409
conv.s.v
call.i gml_Script___InputTrace(argc=6)
popz.v
pushloc.v local._gamepadIsVirtual
conv.v.b
bf [26]

:[24]
push.v builtin.__steamHandle
call.i is_numeric(argc=1)
conv.v.b
bf [26]

:[25]
push.v builtin.__steamHandle
pushi.e 0
cmp.i.v GT
b [27]

:[26]
push.e 0

:[27]
not.b
bf [29]

:[28]
pushbltn.v builtin.undefined
pop.v.v builtin.__steamHandle
pushbltn.v builtin.undefined
pop.v.v builtin.__steamHandleIndex
b [40]

:[29]
push.v builtin.__steamHandle
call.i steam_input_get_gamepad_index_for_controller(argc=1)
pop.v.v builtin.__steamHandleIndex
push.v builtin.__steamHandleIndex
pushi.e -1
cmp.i.v EQ
bf [31]

:[30]
popenv <drop>
exit.i

:[31]
push.v builtin.__steamHandle
call.i steam_input_get_input_type_for_handle(argc=1)
pop.v.v local._steamType
pushloc.v local._steamType
call.i is_numeric(argc=1)
conv.v.b
bf [33]

:[32]
pushloc.v local._steamType
pushi.e 0
cmp.i.v GTE
b [34]

:[33]
push.e 0

:[34]
not.b
bf [36]

:[35]
push.s " invalid"@1413
conv.s.v
pushloc.v local._steamType
push.s "Warning! Steam gamepad type "@1414
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
popenv <drop>
exit.i

:[36]
pushloc.v local._steamType
push.v static._system
pushi.e -9
push.v [stacktop]self.__steamTypeToDescriptionMap
call.i ds_map_find_value(argc=2)
pop.v.v builtin.__description
push.v builtin.__description
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [38]

:[37]
push.s " has no Steam description"@1416
conv.s.v
pushloc.v local._steamType
push.s "Warning! Steam gamepad type "@1414
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
push.s "Missing Description"@1417
pop.v.s builtin.__description
pushi.e 1
pop.v.b builtin.__blocked
popenv <drop>
exit.i

:[38]
pushloc.v local._steamType
push.v static._system
pushi.e -9
push.v [stacktop]self.__steamTypeToInputTypeMap
call.i ds_map_find_value(argc=2)
pop.v.v builtin.__type
push.v builtin.__type
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [40]

:[39]
push.s " has no matching Input-gamepad-type"@1419
conv.s.v
pushloc.v local._steamType
push.s "Warning! Steam-gamepad-type "@1420
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushi.e 1
pop.v.i builtin.__type
pushi.e 1
pop.v.b builtin.__blocked
popenv <drop>
exit.i

:[40]
popenv [5]

:[41]
push.v builtin.__vendor
push.s "de28"@1421
cmp.s.v NEQ
bf [43]

:[42]
push.v builtin.__type
push.v static._steamInputTypeIgnoreMap
call.i ds_map_exists(argc=2)
conv.v.b
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.s " is blacklisted by Steam Input"@1423
conv.s.v
push.v builtin.__type
push.s "Warning! Input-gamepad-type "@1424
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
exit.i

:[46]
exit.i

:[47]
push.i [function]gml_Script___InputGamepadTransformSteam
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGamepadTransformSteam
popz.v

:[end]