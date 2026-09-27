:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.screen_TV
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777237
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.gameWidth
pushi.e 80
sub.i.v
pushi.e 0
conv.i.v
pushref.i 16777620
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.gameHeight
pushi.e 80
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777791
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.gameHeight
pushi.e 80
sub.i.v
pushglb.v global.gameWidth
pushi.e 80
sub.i.v
pushi.e 0
conv.i.v
pushref.i 16777734
call.i draw_sprite(argc=4)
popz.v

:[end]