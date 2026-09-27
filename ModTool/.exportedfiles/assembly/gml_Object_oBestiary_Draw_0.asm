:[0]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
push.v builtin.currentMonsterSprite
call.i draw_sprite(argc=4)
popz.v

:[end]