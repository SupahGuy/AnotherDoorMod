:[0]
b [8]

> gml_Script_InputGameHasFocus (locals=0, argc=0)
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
push.v [stacktop]self.__windowFocus
conv.v.b
bf [5]

:[4]
call.i os_is_paused(argc=0)
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
conv.b.v
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_InputGameHasFocus
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputGameHasFocus
popz.v

:[end]