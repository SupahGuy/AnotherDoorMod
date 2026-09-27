:[0]
b [8]

> gml_Script_InputVirtualDestroyAll (locals=1, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__virtualButtonArray
pop.v.v static._virtualButtonArray

:[3]
pushi.e 0
pop.v.i local._i
push.v static._virtualButtonArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[4]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._virtualButtonArray
pushi.e -9
pushenv [6]

:[5]
call.i @@This@@(argc=0)
push.v builtin.Destroy
callv.v 0
popz.v

:[6]
popenv [5]
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
exit.i

:[8]
push.i [function]gml_Script_InputVirtualDestroyAll
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVirtualDestroyAll
popz.v

:[end]