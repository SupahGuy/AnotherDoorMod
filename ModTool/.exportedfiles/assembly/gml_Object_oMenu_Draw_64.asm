; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
push.v builtin.state
push.l 5
cmp.l.v NEQ
bf [6]

:[3]
pushi.e 1
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
push.d 1.3
div.d.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
push.d 1.3
div.d.v
pushi.e 32
pushglb.v global.zoom
mul.v.i
pushi.e 28
pushglb.v global.zoom
mul.v.i
pushi.e 0
conv.i.v
pushref.i 16777227
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v
pushref.i 26
pushi.e -9
pushenv [5]

:[4]
push.v builtin.txtVersion
pushi.e 105
pushglb.v global.zoom
mul.v.i
pushi.e 106
pushglb.v global.zoom
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[5]
popenv [4]
push.v builtin.demoWishlistTxt
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.align
callv.v 2
pushi.e 315
pushglb.v global.zoom
mul.v.i
pushi.e 532
pushglb.v global.zoom
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[6]
push.v builtin.clickToJoinTxtShow
conv.v.b
bf [11]

:[7]
pushbltn.v builtin.current_time
pushi.e 400
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._alpha
push.v builtin.clickToJoinTxt
pushloc.v local._alpha
push.i 16777215
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.blend
callv.v 2
pushglb.v global.fontBorderThickness
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
dup.v 2 8
dup.v 0
push.v stacktop.sdf_outline
callv.v 2
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.fontShadowAlpha
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushloc.v local._alpha
b [10]

:[9]
pushglb.v global.fontShadowAlpha

:[10]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
dup.v 4 8
dup.v 0
push.v stacktop.sdf_shadow
callv.v 4
pushglb.v global.gameHeight
pushi.e 100
sub.i.v
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

:[11]
push.v builtin.state
push.l 9
cmp.l.v EQ
bf [end]

:[12]
pushi.e 0
conv.b.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pushbltn.v builtin.room_height
pushglb.v global.zoom
mul.v.v
pushbltn.v builtin.room_width
pushglb.v global.zoom
mul.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_colour(argc=9)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
push.d 1.3
div.d.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
push.d 1.3
div.d.v
pushbltn.v builtin.room_height
push.v builtin.offsetCredit
add.v.v
pushglb.v global.zoom
mul.v.v
pushi.e 72
pushglb.v global.zoom
mul.v.i
pushi.e 0
conv.i.v
pushref.i 16777227
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_height
pushi.e 96
add.i.v
pushi.e 24
add.i.v
push.v builtin.offsetCredit
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.creditTxt
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
add.v.v
pushi.e 80
pushglb.v global.zoom
mul.v.i
pushi.e 0
conv.i.v
pushref.i 16777228
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
push.d 2.1
div.d.v
pushglb.v global.zoom
pushi.e 3
conv.i.d
div.d.v
push.d 2.1
div.d.v
pushbltn.v builtin.room_height
pushi.e 96
add.i.v
pushi.e 13
add.i.v
push.v builtin.offsetCredit
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.creditTxt
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
add.v.v
pushi.e 180
pushglb.v global.zoom
mul.v.i
pushi.e 0
conv.i.v
pushref.i 16777229
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v
push.v builtin.creditTxt
pushbltn.v builtin.room_height
pushi.e 96
add.i.v
push.v builtin.offsetCredit
add.v.v
pushglb.v global.zoom
mul.v.v
pushi.e 80
pushglb.v global.zoom
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[end]