:[0]
b [10]

> gml_Script_InputDeviceGetNewActivity (locals=4, argc=0)
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
bt [8]

:[2]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
pop.v.v local._device
pushloc.v local._device
call.i gml_Script_InputDeviceIsAvailable(argc=1)
conv.v.b
bf [4]

:[3]
pushloc.v local._device
call.i gml_Script_InputDeviceIsActive(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushloc.v local._device
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[7]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[8]
popz.i
pushi.e -666
conv.i.v
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_InputDeviceGetNewActivity
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetNewActivity
popz.v

:[end]