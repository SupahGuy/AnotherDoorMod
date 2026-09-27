:[0]
b [7]

> gml_Script_InputPlayerHasDeviceCount (locals=2, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[3]
pushi.e 0
pop.v.i local._count
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
push.v local._count
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__device
pushi.e -666
cmp.i.v NEQ
conv.b.i
add.i.v
pop.v.v local._count
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[5]
popz.i
pushloc.v local._count
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_InputPlayerHasDeviceCount
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlayerHasDeviceCount
popz.v

:[end]