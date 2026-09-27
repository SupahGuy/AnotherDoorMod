:[0]
call.i gml_Script___InputPartySystem(argc=0)
popz.v
b [52]

> gml_Script___InputPartySystem (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._system

:[3]
push.v static._system
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [5]

:[4]
push.v static._system
ret.v

:[5]
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
pushenv [50]

:[6]
pushi.e 0
pop.v.b builtin.__joining
pushi.e 1
pop.v.i builtin.__minPlayers
pushi.e 4
pop.v.i builtin.__maxPlayers
pushi.e 1
pop.v.b builtin.__fillEmpty
pushbltn.v builtin.undefined
pop.v.v builtin.__joinVerb
pushbltn.v builtin.undefined
pop.v.v builtin.__leaveVerb
pushbltn.v builtin.undefined
pop.v.v builtin.__abortCallback
pushi.e 1
pop.v.b builtin.__hotswapOnAbort
b [49]

> gml_Script_anon@610@__InputPartySystem@__InputPartySystem (locals=0, argc=0)
:[7]
b [48]

> gml_Script_anon@715@anon@610@__InputPartySystem@__InputPartySystem (locals=3, argc=0)
:[8]
push.v builtin.__joining
conv.v.b
not.b
bf [10]

:[9]
exit.i

:[10]
push.v builtin.__joinVerb
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [12]

:[11]
push.s "Join verb not defined. Please call InputPartySetParams()"@1680
conv.s.v
call.i gml_Script_InputPlugInError(argc=1)
popz.v

:[12]
pushi.e 0
pop.v.i local._p
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[13]
pushloc.v local._p
call.i gml_Script_InputPlayerIsConnected(argc=1)
conv.v.b
not.b
bf [15]

:[14]
pushloc.v local._p
pushi.e -666
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v

:[15]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [13]

:[16]
popz.i
push.v builtin.__fillEmpty
conv.v.b
bf [25]

:[17]
pushi.e 0
pop.v.b local._fail
pushi.e 3
pop.v.i local._p
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [24]

:[18]
pushloc.v local._p
call.i gml_Script_InputPlayerIsConnected(argc=1)
conv.v.b
bf [20]

:[19]
pushloc.v local._p
pushi.e 1
sub.i.v
call.i gml_Script_InputPlayerIsConnected(argc=1)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.s " (disconnected)"@1685
conv.s.v
pushloc.v local._p
pushi.e 1
sub.i.v
push.s " (connected) to "@1686
conv.s.v
pushloc.v local._p
push.s "Moving player "@1687
conv.s.v
call.i gml_Script___InputTrace(argc=5)
popz.v
pushloc.v local._p
pushi.e 1
sub.i.v
pushloc.v local._p
call.i gml_Script_InputPlayerSwap(argc=2)
popz.v
pushi.e 1
pop.v.b local._fail

:[23]
push.v local._p
push.e 1
sub.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [18]

:[24]
popz.i
pushloc.v local._fail
conv.v.b
not.b
bf [17]

:[25]
push.v builtin.__maxPlayers
pop.v.v local._p
pushi.e 4
push.v builtin.__maxPlayers
sub.v.i
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[26]
pushloc.v local._p
pushi.e -666
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [26]

:[27]
popz.i
pushi.e 0
pop.v.i local._p
push.v builtin.__maxPlayers
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [41]

:[28]
pushloc.v local._p
call.i gml_Script_InputPlayerIsConnected(argc=1)
conv.v.b
not.b
bf [40]

:[29]
push.v builtin.__abortCallback
call.i is_callable(argc=1)
conv.v.b
bf [31]

:[30]
call.i gml_Script_InputPlayerConnectedCount(argc=0)
pushi.e 0
cmp.i.v LTE
b [32]

:[31]
push.e 0

:[32]
bf [35]

:[33]
pushloc.v local._p
push.v builtin.__leaveVerb
call.i gml_Script_InputDeviceGetNewActivityOnVerb(argc=2)
pop.v.v local._device
pushloc.v local._device
pushi.e -666
cmp.i.v NEQ
bf [35]

:[34]
pushloc.v local._device
push.s " aborted with device "@1692
conv.s.v
pushloc.v local._p
push.s "Player "@1693
conv.s.v
call.i gml_Script___InputTrace(argc=4)
popz.v
push.v builtin.__hotswapOnAbort
pushi.e 0
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=2)
popz.v
pushloc.v local._p
pushloc.v local._device
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
pushloc.v local._p
call.i gml_Script_InputVerbConsumeAll(argc=1)
popz.v
call.i @@This@@(argc=0)
push.v builtin.__abortCallback
callv.v 0
popz.v
popz.i
exit.i

:[35]
push.v builtin.__joinVerb
pushi.e -1
cmp.i.v EQ
bf [37]

:[36]
pushloc.v local._p
push.v builtin.__leaveVerb
call.i gml_Script___InputPartyDeviceGetNewActivity(argc=2)
pop.v.v local._device
b [38]

:[37]
pushloc.v local._p
push.v builtin.__joinVerb
call.i gml_Script_InputDeviceGetNewActivityOnVerb(argc=2)
pop.v.v local._device

:[38]
pushloc.v local._device
pushi.e -666
cmp.i.v NEQ
bf [40]

:[39]
pushloc.v local._device
push.s " joined with device "@1696
conv.s.v
pushloc.v local._p
push.s "Player "@1693
conv.s.v
call.i gml_Script___InputTrace(argc=4)
popz.v
pushloc.v local._p
pushloc.v local._device
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
pushloc.v local._p
call.i gml_Script_InputVerbConsumeAll(argc=1)
popz.v

:[40]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [28]

:[41]
popz.i
push.v builtin.__leaveVerb
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [47]

:[42]
pushi.e 0
pop.v.i local._p
push.v builtin.__maxPlayers
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [46]

:[43]
pushloc.v local._p
push.v builtin.__leaveVerb
call.i gml_Script_InputPressed(argc=2)
conv.v.b
bf [45]

:[44]
push.s " left"@1698
conv.s.v
pushloc.v local._p
push.s "Player "@1693
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushloc.v local._p
pushi.e -666
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v

:[45]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [43]

:[46]
popz.i

:[47]
exit.i

:[48]
push.i [function]gml_Script_anon@715@anon@610@__InputPartySystem@__InputPartySystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 1
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
exit.i

:[49]
push.i [function]gml_Script_anon@610@__InputPartySystem@__InputPartySystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.s "10.0"@466
conv.s.v
push.s "1.0"@467
conv.s.v
push.s "Input Team"@468
conv.s.v
push.s "InputTeam.PartyMultiplayer"@1701
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[50]
popenv [6]
push.v static._system
ret.v

:[51]
exit.i

:[52]
push.i [function]gml_Script___InputPartySystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputPartySystem
popz.v

:[end]