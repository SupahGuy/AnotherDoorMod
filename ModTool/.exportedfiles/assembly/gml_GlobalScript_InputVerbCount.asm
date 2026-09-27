:[0]
b [8]

> gml_Script_InputVerbCount (locals=0, argc=0)
:[1]
isstaticok.e
bt [6]

:[2]
setstatic.e
call.i @@This@@(argc=0)
b [5]

> gml_Script__system@anon@145@InputVerbCount@InputVerbCount (locals=0, argc=0)
:[3]
call.i gml_Script___InputSystemPlayerArray(argc=0)
popz.v
call.i gml_Script___InputSystem(argc=0)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script__system@anon@145@InputVerbCount@InputVerbCount
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
callv.v 0
pop.v.v static._system

:[6]
push.v static._system
pushi.e -9
push.v [stacktop]self.__verbCount
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_InputVerbCount
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbCount
popz.v

:[end]