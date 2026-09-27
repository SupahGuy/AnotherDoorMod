:[0]
b [8]

> gml_Script_InputPartyGetReady (locals=1, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputPartySystem(argc=0)
pop.v.v static._system

:[3]
call.i gml_Script_InputPlayerConnectedCount(argc=0)
pop.v.v local._connected
pushloc.v local._connected
push.v static._system
pushi.e -9
push.v [stacktop]self.__minPlayers
cmp.v.v GTE
bf [5]

:[4]
pushloc.v local._connected
push.v static._system
pushi.e -9
push.v [stacktop]self.__maxPlayers
cmp.v.v LTE
b [6]

:[5]
push.e 0

:[6]
conv.b.v
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_InputPartyGetReady
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPartyGetReady
popz.v

:[end]