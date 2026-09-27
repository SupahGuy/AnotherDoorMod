:[0]
b [5]

> gml_Script_depth_manager (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
push.s "cursor"@4987
conv.s.v
push.s "controllerDisconnected"@4988
conv.s.v
push.s "settingsLang"@4989
conv.s.v
push.s "settings"@4990
conv.s.v
push.s "playerDisconnected"@4991
conv.s.v
push.s "roomTransition"@4992
conv.s.v
push.s "chatbox"@4993
conv.s.v
push.s "dialogue"@4994
conv.s.v
push.s "tooltip"@4995
conv.s.v
push.s "pouch"@4996
conv.s.v
push.s "gemAdd"@4997
conv.s.v
push.s "token"@4998
conv.s.v
push.s "floatText"@4999
conv.s.v
push.s "dayNight"@5000
conv.s.v
push.s "effect"@4187
conv.s.v
push.s "clover"@5001
conv.s.v
push.s "uiParticles"@5002
conv.s.v
push.s "ui"@5003
conv.s.v
push.s "cardActive"@5004
conv.s.v
push.s "cards"@4255
conv.s.v
push.s "fighters"@5005
conv.s.v
push.s "fightWindows"@5006
conv.s.v
push.s "intro"@5007
conv.s.v
push.s "button"@5008
conv.s.v
push.s "award"@5009
conv.s.v
push.s "buttonCharDesc"@5010
conv.s.v
push.s "charDesc"@5011
conv.s.v
push.s "charSelection"@5012
conv.s.v
push.s "player"@5013
conv.s.v
push.s "choice"@5014
conv.s.v
push.s "mainScene"@5015
conv.s.v
call.i @@NewGMLArray@@(argc=31)
pop.v.v builtin.depthArray
pushi.e -1
pop.v.i builtin.depthMultiplier
pushi.e 1000
pop.v.i builtin.depthOffset
pushi.e 10
pop.v.i builtin.depthRange
b [4]

> gml_Script_anon@909@depth_manager@depth_manager (locals=0, argc=1)
:[2]
pushi.e 1000
push.v arg.argument0
push.v builtin.depthArray
call.i array_get_index(argc=2)
push.v builtin.depthRange
mul.v.v
add.v.i
push.v builtin.depthMultiplier
mul.v.v
ret.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_anon@909@depth_manager@depth_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_depth
exit.i

:[5]
push.i [function]gml_Script_depth_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.depth_manager
popz.v

:[end]