:[0]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v NEQ
bf [2]

:[1]
exit.i

:[2]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777960
call.i draw_sprite(argc=4)
popz.v
pushref.i 19
pushi.e -9
pushenv [17]

:[3]
push.v builtin.image_alpha
push.v builtin.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.yUi
push.v builtin.xUi
pushi.e 0
conv.i.v
push.v builtin.spriteProfile
call.i draw_sprite_ext(argc=9)
popz.v
call.i @@This@@(argc=0)
push.v builtin.is_alive
callv.v 0
conv.v.b
not.b
bf [5]

:[4]
push.v builtin.yUi
pushi.e 32
add.i.v
push.v builtin.xUi
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
push.v builtin.spriteProfileDeadTop
call.i draw_sprite(argc=4)
popz.v

:[5]
push.v builtin.image_alpha
push.v builtin.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.yUi
pushi.e 20
add.i.v
push.v builtin.xUi
pushi.e 32
add.i.v
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [7]

:[6]
push.v builtin.image_index
b [8]

:[7]
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0

:[8]
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.yUi
pushi.e 40
add.i.v
push.v builtin.xUi
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
push.v builtin.spriteProfileBoxGem
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.image_alpha
push.v builtin.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.yUi
pushi.e 52
add.i.v
push.v builtin.xUi
pushi.e 44
add.i.v
pushi.e 0
conv.i.v
pushref.i 16777957
call.i draw_sprite_ext(argc=9)
popz.v
push.v builtin.state
push.l 2
cmp.l.v NEQ
bf [10]

:[9]
push.v builtin.state
push.l 3
cmp.l.v NEQ
b [11]

:[10]
push.e 0

:[11]
bf [16]

:[12]
pushglb.v global.dayNightCycle
pushi.e -9
push.v [stacktop]self.currentEvent
push.l 4
cmp.l.v EQ
bf [14]

:[13]
push.v builtin.yUi
pushi.e 38
add.i.v
pushi.e 1
sub.i.v
push.v builtin.xUi
pushi.e 53
add.i.v
pushi.e 0
conv.i.v
push.v builtin.spriteProfileHpHidden
call.i draw_sprite(argc=4)
popz.v
b [16]

:[14]
push.v builtin.yUi
pushi.e 38
add.i.v
push.v builtin.xUi
pushi.e 53
add.i.v
push.v builtin.hpProfileH
push.v builtin.hpProfileW
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.spriteProfileHp
call.i draw_sprite_part(argc=8)
popz.v
push.v builtin.hpProfileWTo
push.v builtin.hpProfileW
cmp.v.v NEQ
bf [16]

:[15]
push.v builtin.yUi
pushi.e 38
add.i.v
push.v builtin.xUi
pushi.e 53
add.i.v
push.v builtin.hpProfileWTo
add.v.v
push.v builtin.hpProfileH
push.v builtin.hpProfileW
push.v builtin.hpProfileWTo
sub.v.v
pushi.e 0
conv.i.v
push.v builtin.hpProfileWTo
pushi.e 0
conv.i.v
pushref.i 16777786
call.i draw_sprite_part(argc=8)
popz.v

:[16]
pushi.e 1
conv.i.v
pushi.e 274
pushi.e 64
push.v builtin.number
mul.v.i
add.v.i
pushi.e 0
conv.i.v
push.v builtin.spriteHeadSmall
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 296
pushi.e 64
push.v builtin.number
mul.v.i
add.v.i
pushi.e 0
conv.i.v
pushref.i 16777974
call.i draw_sprite(argc=4)
popz.v

:[17]
popenv [3]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.levelName
pushi.e 11
pushglb.v global.zoom
mul.v.i
pushi.e 126
pushglb.v global.zoom
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
pushref.i 19
pushi.e -9
pushenv [23]

:[18]
push.v builtin.number
pushi.e 1
add.i.v
push.v builtin.number
push.s "[p{0}]player._p[/c]#{1}"@8992
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushi.e 9
pushglb.v global.zoom
mul.v.i
pushi.e 284
pushi.e 64
push.v builtin.number
mul.v.i
add.v.i
pushglb.v global.zoom
mul.v.v
dup.e 2 16
callv.v 2
popz.v
push.v builtin.gemSecuredTxt
pushglb.v global.uiPos
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.gemSecured
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.zoom
mul.v.v
pushglb.v global.uiPos
pushi.e -9
push.v builtin.number
conv.v.i
push.v [array]self.gemSecured
pushi.e -9
push.v [stacktop]self.x
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
pushglb.v global.playersManager
pushi.e 1
conv.b.v
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.get_name
callv.v 2
push.v builtin.yUi
pushi.e 48
add.i.v
pushglb.v global.zoom
mul.v.v
push.v builtin.xUi
pushi.e 60
add.i.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
push.v builtin.gemTxt
push.v builtin.yUi
pushi.e 57
add.i.v
pushglb.v global.zoom
mul.v.v
push.v builtin.xUi
pushi.e 42
add.i.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
push.v builtin.state
push.l 2
cmp.l.v NEQ
bf [20]

:[19]
push.v builtin.state
push.l 3
cmp.l.v NEQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v builtin.txtHp
push.v builtin.yUi
pushi.e 41
add.i.v
pushglb.v global.zoom
mul.v.v
push.v builtin.xUi
pushi.e 108
add.i.v
push.v builtin.txtHpLabel
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pushglb.v global.zoom
div.v.v
sub.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
push.v builtin.txtHpLabel
push.v builtin.yUi
pushi.e 41
add.i.v
pushglb.v global.zoom
mul.v.v
push.v builtin.xUi
pushi.e 108
add.i.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[23]
popenv [18]

:[end]