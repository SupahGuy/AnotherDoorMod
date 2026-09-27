:[0]
b [17]

> gml_Script_InputDeviceGetPlayerUsingGamepad (locals=2, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.b builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[5]
pushi.e 0
pop.v.i local._playerIndex
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[6]
push.v arg.argument0
conv.v.b
not.b
bt [8]

:[7]
pushloc.v local._playerIndex
call.i gml_Script_InputPlayerIsConnected(argc=1)
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e -16
pushloc.v local._playerIndex
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__device
call.i gml_Script_InputDeviceIsGamepad(argc=1)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushloc.v local._playerIndex
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[14]
push.v local._playerIndex
push.e 1
add.i.v
pop.v.v local._playerIndex
pushi.e 1
sub.i.i
dup.i 0
bt [6]

:[15]
popz.i
pushbltn.v builtin.undefined
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_InputDeviceGetPlayerUsingGamepad
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetPlayerUsingGamepad
popz.v

:[end]