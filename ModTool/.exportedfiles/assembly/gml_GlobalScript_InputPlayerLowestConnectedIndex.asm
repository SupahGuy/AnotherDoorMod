:[0]
b [5]

> gml_Script_InputPlayerLowestConnectedIndex (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
push.v static._system
pushi.e -9
push.v [stacktop]self.__lowestConnectedPlayerIndex
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_InputPlayerLowestConnectedIndex
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlayerLowestConnectedIndex
popz.v

:[end]