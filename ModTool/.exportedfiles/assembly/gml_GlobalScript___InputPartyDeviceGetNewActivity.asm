:[0]
b [11]

> gml_Script___InputPartyDeviceGetNewActivity (locals=4, argc=2)
:[1]
pushi.e 0
conv.b.v
call.i gml_Script_InputDeviceEnumerate(argc=1)
pop.v.v local._array
pushi.e 0
pop.v.i local._i
pushloc.v local._array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[2]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
pop.v.v local._device
pushloc.v local._device
call.i gml_Script_InputDeviceIsAvailable(argc=1)
conv.v.b
bf [5]

:[3]
pushloc.v local._device
call.i gml_Script___InputPartyDeviceIsActive(argc=1)
conv.v.b
bf [5]

:[4]
push.v arg.argument1
push.v arg.argument0
pushloc.v local._device
call.i gml_Script_InputDeviceCheckViaPlayer(argc=3)
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushloc.v local._device
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[8]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[9]
popz.i
pushi.e -666
conv.i.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script___InputPartyDeviceGetNewActivity
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputPartyDeviceGetNewActivity
popz.v

:[end]