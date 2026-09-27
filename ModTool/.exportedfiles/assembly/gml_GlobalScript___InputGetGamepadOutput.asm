:[0]
b [15]

> gml_Script___InputGetGamepadOutput (locals=3, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushbltn.v builtin.undefined
ret.v

:[3]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [5]

:[4]
pushbltn.v builtin.undefined
ret.v

:[5]
push.v arg.argument0
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushbltn.v builtin.undefined
ret.v

:[7]
push.v arg.argument0
call.i gamepad_is_connected(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushbltn.v builtin.undefined
ret.v

:[9]
push.v arg.argument0
call.i gml_Script___InputGamepadGetReadArray(argc=1)
pop.v.v local._readArray
push.i 32769
pop.v.i local._binding
pushi.e 42
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[10]
pushloc.v local._binding
push.v arg.argument0
call.i @@This@@(argc=0)
pushi.e -7
pushloc.v local._binding
push.i 32769
sub.i.v
conv.v.i
push.v [array]self._readArray
callv.v 2
call.i abs(argc=1)
push.d 0.25
cmp.d.v GT
bf [12]

:[11]
pushloc.v local._binding
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[12]
push.v local._binding
push.e 1
add.i.v
pop.v.v local._binding
pushi.e 1
sub.i.i
dup.i 0
bt [10]

:[13]
popz.i
pushbltn.v builtin.undefined
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script___InputGetGamepadOutput
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGetGamepadOutput
popz.v

:[end]