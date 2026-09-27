:[0]
b [9]

> gml_Script_InputDeviceGetPlayerUsingGeneric (locals=2, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[3]
pushi.e 0
pop.v.i local._playerIndex
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[4]
pushi.e -16
pushloc.v local._playerIndex
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__device
pushi.e -3
cmp.i.v EQ
bf [6]

:[5]
pushloc.v local._playerIndex
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[6]
push.v local._playerIndex
push.e 1
add.i.v
pop.v.v local._playerIndex
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[7]
popz.i
pushbltn.v builtin.undefined
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_InputDeviceGetPlayerUsingGeneric
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDeviceGetPlayerUsingGeneric
popz.v

:[end]