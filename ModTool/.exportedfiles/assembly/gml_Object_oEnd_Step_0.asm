:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
push.v builtin.isTalkFinished
conv.v.b
bf [end]

:[3]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [5]

:[4]
push.l 0
pop.v.l global.gameEndReason
b [6]

:[5]
push.l 1
pop.v.l global.gameEndReason

:[6]
push.s "roomInit"@9287
conv.s.v
call.i gml_Script_g_go_to_room(argc=1)
popz.v

:[end]