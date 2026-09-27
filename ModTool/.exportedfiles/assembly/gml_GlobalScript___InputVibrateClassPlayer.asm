:[0]
b [30]

> gml_Script___InputVibrateClassPlayer (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [29]

:[2]
setstatic.e
b [28]

> gml_Script___Update@anon@293@__InputVibrateClassPlayer@__InputVibrateClassPlayer (locals=7, argc=0)
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
push.v builtin.__playerIndex
call.i gml_Script_InputPlayerIsConnected(argc=1)
conv.v.b
bf [7]

:[6]
push.v builtin.__playerIndex
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [26]

:[9]
push.v builtin.__eventArray
pop.v.v local._array
pushloc.v local._array
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [25]

:[10]
push.v builtin.__playerIndex
call.i gml_Script_InputPlayerGetDevice(argc=1)
pop.v.v local._device
push.v builtin.__paused
conv.v.b
not.b
pop.v.b local._notPaused
pushi.e 0
pop.v.i local._left
pushi.e 0
pop.v.i local._right
pushi.e 0
pop.v.i local._i
pushloc.v local._array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [22]

:[11]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
pushi.e -9
pushenv [18]

:[12]
pushloc.v local._notPaused
conv.v.b
bt [14]

:[13]
push.v builtin.__force
conv.v.b
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
call.i @@This@@(argc=0)
push.v builtin.__Update
callv.v 0
pop.v.v local._result
push.v local._left
push.v builtin.__outputLeft
add.v.v
pop.v.v local._left
push.v local._right
push.v builtin.__outputRight
add.v.v
pop.v.v local._right
b [18]

:[17]
pushi.e 1
pop.v.b local._result

:[18]
popenv [12]
pushloc.v local._result
conv.v.b
bf [20]

:[19]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [21]

:[20]
pushi.e 1
conv.i.v
pushloc.v local._i
pushloc.v local._array
call.i array_delete(argc=3)
popz.v

:[21]
pushi.e 1
sub.i.i
dup.i 0
bt [11]

:[22]
popz.i
push.v local._left
push.v builtin.__strength
mul.v.v
pop.v.v local._left
push.v local._right
push.v builtin.__strength
mul.v.v
pop.v.v local._right
pushloc.v local._device
push.v static._deviceMap
call.i ds_map_find_value(argc=2)
pushi.e -9
pushenv [24]

:[23]
pushi.e 1
pop.v.b builtin.__vibrating
pushloc.v local._left
pop.v.v builtin.__left
pushloc.v local._right
pop.v.v builtin.__right

:[24]
popenv [23]

:[25]
b [27]

:[26]
pushi.e 0
conv.i.v
push.v builtin.__eventArray
call.i array_resize(argc=2)
popz.v

:[27]
exit.i

:[28]
push.i [function]gml_Script___Update@anon@293@__InputVibrateClassPlayer@__InputVibrateClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[29]
push.v arg.argument0
pop.v.v builtin.__playerIndex
pushi.e 1
pop.v.i builtin.__strength
pushi.e 0
pop.v.b builtin.__paused
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__eventArray
exit.i

:[30]
push.i [function]gml_Script___InputVibrateClassPlayer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVibrateClassPlayer
popz.v

:[end]