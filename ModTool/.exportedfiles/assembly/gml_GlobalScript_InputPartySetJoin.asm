:[0]
b [10]

> gml_Script_InputPartySetJoin (locals=0, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputPartySystem(argc=0)
pop.v.v static._system

:[3]
push.v arg.argument0
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.b.v
call.i gml_Script_InputSetHotswap(argc=1)
popz.v
b [9]

:[5]
push.v arg.argument1
chknullish.e
bf [7]

:[6]
popz.v
call.i gml_Script_InputPlayerConnectedCount(argc=0)
pushi.e 1
cmp.i.v LTE
conv.b.v

:[7]
conv.v.b
bf [9]

:[8]
pushi.e 1
conv.b.v
call.i gml_Script_InputSetHotswap(argc=1)
popz.v

:[9]
push.v arg.argument0
push.v static._system
pushi.e -9
pop.v.v [stacktop]self.__joining
exit.i

:[10]
push.i [function]gml_Script_InputPartySetJoin
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPartySetJoin
popz.v

:[end]