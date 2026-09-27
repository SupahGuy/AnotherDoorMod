:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
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
call.i window_has_focus(argc=0)
conv.v.b
bf [4]

:[3]
push.v builtin.timerLaunched
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.b builtin.timerLaunched
push.v builtin.timerLogoAD
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[7]
pushi.e 1
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v
push.v builtin.timerLogoAD
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
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
pushglb.v global.gameDrawHeight
pushi.e 2
conv.i.d
div.d.v
pushref.i 16777227
call.i sprite_get_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
div.v.v
sub.v.v
pushglb.v global.gameDrawWidth
pushi.e 2
conv.i.d
div.d.v
pushref.i 16777227
call.i sprite_get_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
div.v.v
sub.v.v
pushi.e 0
conv.i.v
pushref.i 16777227
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_texfilter(argc=1)
popz.v

:[end]