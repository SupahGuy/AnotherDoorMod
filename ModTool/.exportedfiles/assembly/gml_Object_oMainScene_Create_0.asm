:[0]
pushglb.v global.depthManager
push.s "mainScene"@5015
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
pushi.e 0
pop.v.b global.isLightOn
pushref.i 16777635
pop.v.v builtin.spriteMainScene
b [9]

> gml_Script_anon@145@gml_Object_oMainScene_Create_0 (locals=0, argc=1)
:[1]
pushglb.v global.isLightOn
push.v arg.argument0
cmp.v.v NEQ
bf [8]

:[2]
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554507
call.i audio_play_sound(argc=6)
popz.v
push.v arg.argument0
pop.v.v global.isLightOn
pushglb.v global.isLightOn
conv.v.b
bf [4]

:[3]
pushref.i 16777634
b [5]

:[4]
pushref.i 16777635

:[5]
pop.v.v builtin.spriteMainScene
pushref.i 29
pushi.e -9
pushenv [7]

:[6]
pushglb.v global.isLightOn
pop.v.v builtin.lightExit

:[7]
popenv [6]

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@145@gml_Object_oMainScene_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.switch_light

:[end]