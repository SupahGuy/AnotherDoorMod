:[0]
b [7]

> gml_Script_InputPartyGetParams (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputPartySystem(argc=0)
pop.v.v static._system
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._params

:[3]
push.v static._params
pushi.e -9
pushenv [5]

:[4]
push.v static._system
pushi.e -9
push.v [stacktop]self.__minPlayers
pop.v.v builtin.minPlayers
push.v static._system
pushi.e -9
push.v [stacktop]self.__maxPlayers
pop.v.v builtin.maxPlayers
push.v static._system
pushi.e -9
push.v [stacktop]self.__fillEmpty
pop.v.v builtin.fillEmpty
push.v static._system
pushi.e -9
push.v [stacktop]self.__joinVerb
pop.v.v builtin.joinVerb
push.v static._system
pushi.e -9
push.v [stacktop]self.__leaveVerb
pop.v.v builtin.leaveVerb
push.v static._system
pushi.e -9
push.v [stacktop]self.__abortCallback
pop.v.v builtin.abortCallback
push.v static._system
pushi.e -9
push.v [stacktop]self.__hotswapOnAbort
pop.v.v builtin.hotswapOnAbort

:[5]
popenv [4]
push.v static._params
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_InputPartyGetParams
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPartyGetParams
popz.v

:[end]