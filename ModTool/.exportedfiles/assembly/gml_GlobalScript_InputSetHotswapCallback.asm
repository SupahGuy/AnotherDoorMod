:[0]
b [4]

> gml_Script_InputSetHotswapCallback (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
push.v arg.argument0
push.v static._system
pushi.e -9
pop.v.v [stacktop]self.__hotswapCallback
exit.i

:[4]
push.i [function]gml_Script_InputSetHotswapCallback
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputSetHotswapCallback
popz.v

:[end]