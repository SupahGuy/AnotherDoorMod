:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [end]

:[1]
pushglb.v global.live_result
ret.v

:[end]