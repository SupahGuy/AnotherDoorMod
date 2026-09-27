:[0]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [end]

:[1]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.currentSprite
call.i draw_sprite(argc=4)
popz.v
pushi.e 8
conv.i.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777795
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.runCounter
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [5]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [6]

:[3]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [7]

:[4]
b [8]

:[5]
pushi.e 27
conv.i.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777796
call.i draw_sprite(argc=4)
popz.v

:[6]
pushi.e 19
conv.i.v
pushi.e 33
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777796
call.i draw_sprite(argc=4)
popz.v

:[7]
pushi.e 8
conv.i.v
pushi.e 34
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777796
call.i draw_sprite(argc=4)
popz.v
b [8]

:[8]
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]