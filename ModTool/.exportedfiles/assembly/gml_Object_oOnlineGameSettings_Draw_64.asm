:[0]
push.d 0.88
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
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
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v builtin.n_root
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [end]

:[1]
push.v builtin.n_root
call.i gml_Script_ik_flex_panel_draw_layout(argc=1)
popz.v

:[end]