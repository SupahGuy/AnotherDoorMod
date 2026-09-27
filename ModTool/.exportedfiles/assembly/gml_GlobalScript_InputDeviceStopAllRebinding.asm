:[0]
b [4]

> gml_Script_InputDeviceStopAllRebinding (locals=2, argc=0)
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
bt [3]

:[2]
pushi.e 0
conv.b.v
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
call.i gml_Script_InputDeviceSetRebinding(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[3]
popz.i
exit.i

:[4]
push.i [function]gml_Script_InputDeviceStopAllRebinding
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceStopAllRebinding
popz.v

:[end]