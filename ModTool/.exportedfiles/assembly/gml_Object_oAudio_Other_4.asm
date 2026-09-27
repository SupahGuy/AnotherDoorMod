:[0]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v EQ
bf [2]

:[1]
pushref.i 33554437
pop.v.v global.nextMusic
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.reset_effect
callv.v 0
popz.v
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.switch_music
callv.v 0
popz.v

:[2]
pushbltn.v builtin.room
pushref.i 50331652
cmp.v.v EQ
bf [end]

:[3]
push.v builtin.timerMainTheme
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.timerMainTheme
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[end]