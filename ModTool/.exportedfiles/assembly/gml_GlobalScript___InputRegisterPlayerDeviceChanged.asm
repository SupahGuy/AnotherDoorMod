:[0]
b [27]

> gml_Script___InputRegisterPlayerDeviceChanged (locals=0, argc=0)
:[1]
b [26]

> gml_Script_anon@167@__InputRegisterPlayerDeviceChanged@__InputRegisterPlayerDeviceChanged (locals=2, argc=3)
:[2]
isstaticok.e
bt [4]

:[3]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__virtualButtonArray
pop.v.v static._virtualButtonArray

:[4]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [25]

:[5]
push.v arg.argument2
pushi.e -666
cmp.i.v NEQ
bf [7]

:[6]
push.v arg.argument2
pushi.e -3
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [13]

:[9]
push.v arg.argument2
push.v static._deviceMap
call.i ds_map_find_value(argc=2)
pop.v.v local._oldPlayerIndex
pushloc.v local._oldPlayerIndex
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [13]

:[10]
pushi.e -16
pushloc.v local._oldPlayerIndex
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [12]

:[11]
pushi.e -666
pop.v.i builtin.__device
call.i @@This@@(argc=0)
push.v builtin.__UpdateStatus
callv.v 0
popz.v

:[12]
popenv [11]

:[13]
push.v arg.argument1
pushi.e -666
cmp.i.v EQ
bf [15]

:[14]
pushbltn.v builtin.current_time
pop.v.v builtin.__lastInputTime
b [20]

:[15]
push.v arg.argument1
pushi.e -2
cmp.i.v EQ
bf [19]

:[16]
pushi.e 0
pop.v.i local._i
push.v static._virtualButtonArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [18]

:[17]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._virtualButtonArray
dup.v 0 8
dup.v 0
push.v stacktop.__ClearState
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [17]

:[18]
popz.i

:[19]
push.v arg.argument1
push.v static._deviceMap
call.i ds_map_delete(argc=2)
popz.v

:[20]
push.v arg.argument2
pop.v.v builtin.__device
call.i @@This@@(argc=0)
push.v builtin.__UpdateStatus
callv.v 0
popz.v
pushi.e 0
conv.b.v
push.v builtin.__device
call.i gml_Script_InputDeviceSetRebinding(argc=2)
popz.v
push.v arg.argument2
pushi.e -666
cmp.i.v NEQ
bf [22]

:[21]
push.v arg.argument2
pushi.e -3
cmp.i.v NEQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v arg.argument0
push.v arg.argument2
push.v static._deviceMap
call.i ds_map_set(argc=3)
popz.v

:[25]
popenv [5]
exit.i

:[26]
push.i [function]gml_Script_anon@167@__InputRegisterPlayerDeviceChanged@__InputRegisterPlayerDeviceChanged
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 4
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[27]
push.i [function]gml_Script___InputRegisterPlayerDeviceChanged
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterPlayerDeviceChanged
popz.v

:[end]