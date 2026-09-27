; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 4
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [3]

:[1]
pushi.e 0
conv.i.v
pushref.i 4
call.i instance_find(argc=2)
pop.v.v local.first
push.v builtin.id
pushloc.v local.first
cmp.v.v NEQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[3]
push.s "live_init"@6273
conv.s.v
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
conv.i.v
push.s "live_init is missing!\nEither GMLive is not imported in the project, or the 'GMLive' script got corrupted (try re-importing)\nIf you don't have GMLive, you can safely remove obj_gmlive and any remaining live_* function calls.\n\n"@8665
conv.s.v
call.i show_error(argc=2)
popz.v

:[5]
push.s ""@61
conv.s.v
push.s "http://localhost:5100"@8666
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_live_init(argc=3)
popz.v

:[end]