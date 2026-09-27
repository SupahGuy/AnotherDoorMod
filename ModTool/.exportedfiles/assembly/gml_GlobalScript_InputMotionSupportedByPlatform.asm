:[0]
b [11]

> gml_Script_InputMotionSupportedByPlatform (locals=0, argc=0)
:[1]
isstaticok.e
bt [9]

:[2]
setstatic.e
pushi.e 0
bt [7]

:[3]
pushi.e 1
bf [5]

:[4]
push.l 0
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
b [8]

:[7]
push.e 1

:[8]
pop.v.b static._result

:[9]
push.v static._result
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_InputMotionSupportedByPlatform
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMotionSupportedByPlatform
popz.v

:[end]