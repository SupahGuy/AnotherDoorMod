; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331656
cmp.v.v NEQ
bf [2]

:[1]
call.i gml_Script_is_paused_controller(argc=0)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
push.d 0.88
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
pushi.e 100
pop.v.i local._y
pushi.e 0
pop.v.i local._i

:[5]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [10]

:[6]
pushloc.v local._i
call.i gml_Script_InputPlayerGetStatus(argc=1)
pop.v.v local._state
pushref.i 16777271
call.i sprite_get_width(argc=1)
pop.v.v local._width
pushref.i 16777271
call.i sprite_get_height(argc=1)
pop.v.v local._height
pushi.e 16
pop.v.i local._spacing
pushglb.v global.gameWidth
pushloc.v local._width
pushglb.v global.playersCount
mul.v.v
pushloc.v local._spacing
pushglb.v global.playersCount
pushi.e 1
sub.i.v
mul.v.v
add.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._xMid
pushloc.v local._xMid
pushloc.v local._width
pushloc.v local._spacing
add.v.v
pushloc.v local._i
mul.v.v
add.v.v
pop.v.v local._xBox
pushloc.v local._y
push.v builtin.titleH
add.v.v
push.v builtin.txtSpacing
add.v.v
push.v builtin.descH
add.v.v
push.v builtin.controllerSpacing
add.v.v
pop.v.v local._yBox
pushloc.v local._state
push.l 3
cmp.l.v EQ
bf [8]

:[7]
pushloc.v local._yBox
pushloc.v local._xBox
pushi.e 0
conv.i.v
pushref.i 16777271
call.i draw_sprite(argc=4)
popz.v
pushloc.v local._yBox
pushloc.v local._xBox
pushi.e 0
conv.i.v
pushref.i 16777353
call.i draw_sprite(argc=4)
popz.v
b [9]

:[8]
pushloc.v local._yBox
pushloc.v local._xBox
pushi.e 0
conv.i.v
pushref.i 16777271
call.i draw_sprite(argc=4)
popz.v

:[9]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [5]

:[10]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.title
pushloc.v local._y
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
pushloc.v local._y
push.v builtin.titleH
add.v.v
push.v builtin.txtSpacing
add.v.v
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
pushi.e 0
pop.v.i local._i

:[11]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [end]

:[12]
pushloc.v local._i
call.i gml_Script_InputPlayerGetStatus(argc=1)
pop.v.v local._state
pushloc.v local._xMid
pushloc.v local._width
pushloc.v local._spacing
add.v.v
pushloc.v local._i
mul.v.v
add.v.v
pop.v.v local._xBox
pushloc.v local._y
push.v builtin.titleH
add.v.v
push.v builtin.txtSpacing
add.v.v
push.v builtin.descH
add.v.v
push.v builtin.controllerSpacing
add.v.v
pop.v.v local._yBox
pushloc.v local._state
push.l 3
cmp.l.v EQ
bf [14]

:[13]
push.s "[p{_i}]settings._connected[/c]"@8979
conv.s.v
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
pushloc.v local._yBox
pushi.e 2
add.i.v
pushglb.v global.zoom
mul.v.v
pushloc.v local._height
add.v.v
pushloc.v local._xBox
pushglb.v global.zoom
mul.v.v
dup.e 2 16
callv.v 2
popz.v
b [15]

:[14]
push.s "settings._disconnected"@8980
conv.s.v
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
pushloc.v local._yBox
pushi.e 2
add.i.v
pushglb.v global.zoom
mul.v.v
pushloc.v local._height
add.v.v
pushloc.v local._xBox
pushglb.v global.zoom
mul.v.v
dup.e 2 16
callv.v 2
popz.v
pushloc.v local._i
pushi.e 1
add.i.v
push.s "player._p#{0}"@8869
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushloc.v local._yBox
pushglb.v global.zoom
mul.v.v
pushloc.v local._xBox
pushglb.v global.zoom
mul.v.v
dup.e 2 16
callv.v 2
popz.v

:[15]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [11]

:[end]