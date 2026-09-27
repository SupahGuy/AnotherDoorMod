:[0]
b [15]

> gml_Script___InputGetMouseActive (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
pushi.e 1
bt [8]

:[4]
pushi.e 0
bf [6]

:[5]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
not.b
bf [11]

:[10]
pushi.e 0
conv.b.v
ret.v

:[11]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 0
conv.b.v
ret.v

:[13]
pushi.e 0
conv.b.v
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script___InputGetMouseActive
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGetMouseActive
popz.v

:[end]