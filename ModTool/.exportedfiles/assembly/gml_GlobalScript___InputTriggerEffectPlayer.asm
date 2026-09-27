:[0]
b [24]

> gml_Script___InputTriggerEffectPlayer (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [23]

:[2]
setstatic.e
call.i gml_Script___InputTriggerEffectSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap
b [17]

> gml_Script___SetTriggerEffect@anon@570@__InputTriggerEffectPlayer@__InputTriggerEffectPlayer (locals=3, argc=3)
:[3]
push.v builtin.__playerIndex
call.i gml_Script_InputPlayerGetDevice(argc=1)
pop.v.v local._device
pushloc.v local._device
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
exit.i

:[5]
push.v builtin.__paused
conv.v.b
bf [7]

:[6]
push.s " trigger effect is paused"@1935
conv.s.v
push.v builtin.__playerIndex
push.s "Warning! New trigger effect ignored, player "@1936
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
exit.i

:[7]
pushloc.v local._device
push.v builtin._deviceMap
call.i ds_map_find_value(argc=2)
pop.v.v local._struct
pushloc.v local._struct
call.i is_struct(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s " is not registered with the trigger effect handler"@1937
conv.s.v
pushloc.v local._device
push.s "Warning! Device "@1938
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
exit.i

:[9]
pushloc.v local._struct
push.v builtin.__strength
push.v arg.argument1
push.v arg.argument0
dup.v 3 8
dup.v 0
push.v stacktop.__Apply
callv.v 3
pushi.e 0
cmp.b.v EQ
pop.v.b local._intercepted
push.v arg.argument2
conv.v.b
not.b
bf [11]

:[10]
exit.i

:[11]
push.v arg.argument0
push.i 32775
cmp.i.v EQ
bf [13]

:[12]
pushloc.v local._intercepted
pop.v.v builtin.__interceptedLeft
push.v arg.argument1
pop.v.v builtin.__effectLeft
b [16]

:[13]
push.v arg.argument0
push.i 32776
cmp.i.v EQ
bf [15]

:[14]
pushloc.v local._intercepted
pop.v.v builtin.__interceptedRight
push.v arg.argument1
pop.v.v builtin.__effectRight
b [16]

:[15]
push.s " not a gamepad trigger"@1917
conv.s.v
push.v arg.argument0
push.s "Value "@1918
conv.s.v
call.i gml_Script_InputPlugInError(argc=3)
popz.v
pushi.e 0
conv.b.v
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script___SetTriggerEffect@anon@570@__InputTriggerEffectPlayer@__InputTriggerEffectPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__SetTriggerEffect
b [22]

> gml_Script___SetPause@anon@1914@__InputTriggerEffectPlayer@__InputTriggerEffectPlayer (locals=0, argc=1)
:[18]
push.v arg.argument0
pop.v.v builtin.__paused
push.v arg.argument0
conv.v.b
bf [20]

:[19]
push.v builtin.__playerIndex
call.i gml_Script_InputPlayerGetDevice(argc=1)
call.i gml_Script___InputTriggerEffectStop(argc=1)
popz.v
b [21]

:[20]
push.v builtin.__playerIndex
call.i gml_Script___InputTriggerEffectReapply(argc=1)
popz.v

:[21]
exit.i

:[22]
push.i [function]gml_Script___SetPause@anon@1914@__InputTriggerEffectPlayer@__InputTriggerEffectPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__SetPause

:[23]
push.v arg.argument0
pop.v.v builtin.__playerIndex
pushi.e 0
pop.v.b builtin.__paused
pushi.e 1
pop.v.i builtin.__strength
pushi.e 0
pop.v.b builtin.__interceptedLeft
pushi.e 0
pop.v.b builtin.__interceptedRight
push.i [function]gml_Script___InputTriggerEffectClassOff
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v builtin.__effectLeft
push.i [function]gml_Script___InputTriggerEffectClassOff
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v builtin.__effectRight
exit.i

:[24]
push.i [function]gml_Script___InputTriggerEffectPlayer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectPlayer
popz.v

:[end]