:[0]
b [9]

> gml_Script_InputVerbGroupsGet (locals=2, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputVerbGroupSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbGroupLookupArray
pop.v.v static._verbGroupLookupArray
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._groupArray

:[3]
pushi.e 0
conv.i.v
push.v static._groupArray
call.i array_resize(argc=2)
popz.v
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._verbGroupLookupArray
pop.v.v local._bitmask
pushi.e 0
pop.v.i local._i
pushi.e 50
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[4]
pushloc.v local._bitmask
conv.v.l
pushi.e 1
conv.i.l
pushloc.v local._i
conv.v.l
shl.l.l
and.l.l
conv.l.b
bf [6]

:[5]
pushloc.v local._i
push.v static._groupArray
call.i array_push(argc=2)
popz.v

:[6]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[7]
popz.i
push.v static._groupArray
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_InputVerbGroupsGet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbGroupsGet
popz.v

:[end]