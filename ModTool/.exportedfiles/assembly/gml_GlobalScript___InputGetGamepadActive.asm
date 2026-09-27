:[0]
b [38]

> gml_Script___InputGetGamepadActive (locals=5, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__gamepadArray
pop.v.v static._gamepadArray

:[3]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
conv.b.v
ret.v

:[5]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 0
conv.b.v
ret.v

:[7]
push.v arg.argument0
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e 0
conv.b.v
ret.v

:[9]
push.v arg.argument0
call.i gamepad_is_connected(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushi.e 0
conv.b.v
ret.v

:[11]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._gamepadArray
pushi.e -9
pushenv [36]

:[12]
push.v builtin.__readArray
pop.v.v local._readArray
push.v builtin.__prevValueArray
pop.v.v local._prevValueArray
push.v builtin.__valueArray
pop.v.v local._valueArray
push.i 32769
pop.v.i local._binding
pushi.e 42
dup.i 0
push.i 0
cmp.i.i LTE
bt [35]

:[13]
pushloc.v local._binding
push.i 32785
cmp.i.v EQ
bt [17]

:[14]
pushloc.v local._binding
push.i 32786
cmp.i.v EQ
bt [17]

:[15]
pushloc.v local._binding
push.i 32787
cmp.i.v EQ
bt [17]

:[16]
pushloc.v local._binding
push.i 32788
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [25]

:[19]
pushi.e -7
pushloc.v local._binding
push.i 32785
sub.i.v
conv.v.i
push.v [array]self._prevValueArray
call.i abs(argc=1)
push.d 0.25
cmp.d.v LTE
bf [21]

:[20]
pushi.e -7
pushloc.v local._binding
push.i 32785
sub.i.v
conv.v.i
push.v [array]self._valueArray
call.i abs(argc=1)
push.d 0.25
cmp.d.v GT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[24]
b [34]

:[25]
pushloc.v local._binding
push.i 32775
cmp.i.v EQ
bt [27]

:[26]
pushloc.v local._binding
push.i 32776
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [32]

:[29]
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
push.d 0.05
cmp.d.v GT
bf [31]

:[30]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[31]
b [34]

:[32]
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
conv.v.b
bf [34]

:[33]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[34]
push.v local._binding
push.e 1
add.i.v
pop.v.v local._binding
pushi.e 1
sub.i.i
dup.i 0
bt [13]

:[35]
popz.i

:[36]
popenv [12]
pushi.e 0
conv.b.v
ret.v

:[37]
exit.i

:[38]
push.i [function]gml_Script___InputGetGamepadActive
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGetGamepadActive
popz.v

:[end]