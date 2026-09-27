:[0]
b [18]

> gml_Script_InputDeviceGetNewActivityOnVerb (locals=4, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[5]
push.v arg.argument1
pushi.e 4
cmp.i.v GTE
bf [7]

:[6]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[7]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
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
bt [16]

:[10]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
pop.v.v local._device
pushloc.v local._device
call.i gml_Script_InputDeviceIsAvailable(argc=1)
conv.v.b
bf [12]

:[11]
push.v arg.argument1
push.v arg.argument0
pushloc.v local._device
call.i gml_Script_InputDeviceCheckViaPlayer(argc=3)
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushloc.v local._device
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[15]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [10]

:[16]
popz.i
pushi.e -666
conv.i.v
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_InputDeviceGetNewActivityOnVerb
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetNewActivityOnVerb
popz.v

:[end]