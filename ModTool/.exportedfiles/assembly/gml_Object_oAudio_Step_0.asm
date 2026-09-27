:[0]
push.v builtin.timerFadeInMusic
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [2]

:[1]
push.v builtin.timerFadeInMusic
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.timerFadeInMusic
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.fadeInCallback
call.i @@This@@(argc=0)
push.v builtin.play_callback
callv.v 1
popz.v

:[2]
push.v builtin.timerFadeOutMusic
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [4]

:[3]
push.v builtin.timerFadeOutMusic
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.timerFadeOutMusic
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.fade_out_end
callv.v 0
popz.v

:[4]
push.v builtin.timerMainTheme
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [end]

:[5]
push.v builtin.timerMainTheme
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.timerMainTheme
dup.v 0 8
dup.v 0
push.v stacktop.stop
callv.v 0
popz.v
push.v builtin.currentMusic
pushi.e -1
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.fade_in
callv.v 2
popz.v

:[end]