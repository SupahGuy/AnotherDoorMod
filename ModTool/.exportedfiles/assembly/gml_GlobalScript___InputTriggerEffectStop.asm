:[0]
b [16]

> gml_Script___InputTriggerEffectStop (locals=2, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputTriggerEffectSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__deviceMap
pop.v.v static._deviceMap

:[5]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[6]
pushi.e 0
conv.b.v
call.i gml_Script_InputDeviceEnumerate(argc=1)
pop.v.v local._deviceArray
pushi.e 0
pop.v.i local._i
pushloc.v local._deviceArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [10]

:[7]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._deviceArray
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [9]

:[8]
push.v arg.argument0
call.i gml_Script___InputTriggerEffectStop(argc=1)
popz.v

:[9]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [7]

:[10]
popz.i
exit.i

:[11]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
exit.i

:[13]
push.v arg.argument0
push.v static._deviceMap
call.i ds_map_find_value(argc=2)
pushi.e -9
pushenv [15]

:[14]
pushi.e 0
conv.i.v
push.i [function]gml_Script___InputTriggerEffectClassOff
conv.i.v
call.i @@NewGMLObject@@(argc=1)
push.i 32775
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.__Apply
callv.v 3
popz.v
pushi.e 0
conv.i.v
push.i [function]gml_Script___InputTriggerEffectClassOff
conv.i.v
call.i @@NewGMLObject@@(argc=1)
push.i 32776
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.__Apply
callv.v 3
popz.v

:[15]
popenv [14]
exit.i

:[16]
push.i [function]gml_Script___InputTriggerEffectStop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectStop
popz.v

:[end]