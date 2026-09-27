:[0]
b [8]

> gml_Script_InputGetHotswap (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
pushi.e 1
conv.i.b
bf [5]

:[4]
push.v static._system
pushi.e -9
push.v [stacktop]self.__hotswap
conv.v.b
b [6]

:[5]
push.e 0

:[6]
conv.b.v
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_InputGetHotswap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputGetHotswap
popz.v

:[end]