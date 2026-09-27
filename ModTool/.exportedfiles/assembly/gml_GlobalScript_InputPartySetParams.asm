:[0]
b [10]

> gml_Script_InputPartySetParams (locals=0, argc=7)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[3]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument5

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputPartySystem(argc=0)
pop.v.v static._system

:[7]
push.v static._system
pushi.e -9
pushenv [9]

:[8]
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
call.i clamp(argc=3)
pop.v.v builtin.__minPlayers
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument2
call.i clamp(argc=3)
pop.v.v builtin.__maxPlayers
push.v arg.argument3
pop.v.v builtin.__fillEmpty
push.v arg.argument0
pop.v.v builtin.__joinVerb
push.v arg.argument4
pop.v.v builtin.__leaveVerb
push.v arg.argument5
pop.v.v builtin.__abortCallback
push.v arg.argument6
pop.v.v builtin.__hotswapOnAbort

:[9]
popenv [8]
exit.i

:[10]
push.i [function]gml_Script_InputPartySetParams
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPartySetParams
popz.v

:[end]