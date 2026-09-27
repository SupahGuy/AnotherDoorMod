; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.d 0.9
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pushbltn.v builtin.room_height
pushglb.v global.gameWidth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v builtin.y
pushref.i 16777703
call.i sprite_get_yoffset(argc=1)
sub.v.v
pushi.e 24
sub.i.v
push.v builtin.x
pushref.i 58
pushi.e -9
push.v [stacktop]self.frameSynchEight
dup.v 0 8
dup.v 0
push.v stacktop.get_current_frame
callv.v 0
pushref.i 16777703
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.title
push.v builtin.y
pushglb.v global.zoom
mul.v.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
push.v builtin.desc
push.v builtin.y
pushglb.v global.zoom
mul.v.v
push.v builtin.titleH
add.v.v
pushi.e 8
add.i.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
pushi.e 0
pop.v.i local._i

:[1]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [6]

:[2]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.is_connected
callv.v 1
pop.v.v local._state
push.v builtin.y
push.v builtin.controllerSpacing
pushloc.v local._i
mul.v.v
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.titleH
add.v.v
push.v builtin.descH
add.v.v
pushi.e 32
add.i.v
pop.v.v local._y
pushloc.v local._state
pushi.e 1
cmp.b.v EQ
bf [4]

:[3]
push.s "settings._connected"@10925
pop.v.s local._label
pushloc.v local._i
push.s "p{0}"@10926
conv.s.v
call.i @@string@@(argc=2)
pop.v.v local._color
b [5]

:[4]
push.s "settings._disconnected"@8980
pop.v.s local._label
push.s "grey1"@5384
pop.v.s local._color

:[5]
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._label
pushloc.v local._color
push.s "[{0}]{1}#P{2}[/c]"@10927
conv.s.v
call.i @@string@@(argc=4)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushloc.v local._y
push.v builtin.x
pushglb.v global.zoom
mul.v.v
dup.e 2 16
callv.v 2
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [1]

:[6]
push.v builtin.numberPlayersConnected
push.v builtin.wannaContinueCounter
push.s "online._voteContinue#{0}#{1}"@10928
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushglb.v global.gameHeight
pushi.e 80
sub.i.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
pushglb.v global.zoom
mul.v.v
dup.e 2 16
callv.v 2
popz.v

:[end]