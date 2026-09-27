:[0]
b [12]

> gml_Script_InputPlayerConnectedCount (locals=3, argc=0)
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
bt [10]

:[4]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__status
pop.v.v local._status
pushloc.v local._status
push.l 2
cmp.l.v EQ
bt [6]

:[5]
pushloc.v local._status
push.l 3
cmp.l.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.v local._count
push.e 1
add.i.v
pop.v.v local._count

:[9]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[10]
popz.i
pushloc.v local._count
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_InputPlayerConnectedCount
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlayerConnectedCount
popz.v

:[end]