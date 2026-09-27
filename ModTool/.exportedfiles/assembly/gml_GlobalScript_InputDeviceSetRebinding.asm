:[0]
b [28]

> gml_Script_InputDeviceSetRebinding (locals=2, argc=5)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[3]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[5]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.b builtin.argument4

:[7]
isstaticok.e
bt [9]

:[8]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__rebindingMap
pop.v.v static._rebindingMap
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__rebindingArray
pop.v.v static._rebindingArray

:[9]
push.v arg.argument0
pushi.e -1
cmp.i.v NEQ
bf [11]

:[10]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
exit.i

:[14]
push.v arg.argument1
conv.v.b
bf [19]

:[15]
push.v arg.argument0
push.v static._rebindingMap
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bf [18]

:[16]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument0
push.i [function]gml_Script___InputClassRebindingHandler
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pop.v.v local._handler
pushloc.v local._handler
push.v arg.argument0
push.v static._rebindingMap
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._handler
push.v static._rebindingArray
call.i array_push(argc=2)
popz.v
push.v arg.argument4
conv.v.b
bf [18]

:[17]
push.v arg.argument0
call.i gml_Script_InputDeviceGetPlayer(argc=1)
call.i gml_Script_InputVerbConsumeAll(argc=1)
popz.v

:[18]
b [27]

:[19]
push.v arg.argument0
push.v static._rebindingMap
call.i ds_map_exists(argc=2)
conv.v.b
bf [27]

:[20]
push.v arg.argument0
push.v static._rebindingMap
call.i ds_map_delete(argc=2)
popz.v
pushi.e 0
pop.v.i local._i
push.v static._rebindingArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[21]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._rebindingArray
pushi.e -9
push.v [stacktop]self.__device
push.v arg.argument0
cmp.v.v EQ
bf [23]

:[22]
pushi.e 1
conv.i.v
pushloc.v local._i
push.v static._rebindingArray
call.i array_delete(argc=3)
popz.v
b [24]

:[23]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i

:[24]
pushi.e 1
sub.i.i
dup.i 0
bt [21]

:[25]
popz.i
push.v arg.argument4
conv.v.b
bf [27]

:[26]
push.v arg.argument0
call.i gml_Script_InputDeviceGetPlayer(argc=1)
call.i gml_Script_InputVerbConsumeAll(argc=1)
popz.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_InputDeviceSetRebinding
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceSetRebinding
popz.v

:[end]