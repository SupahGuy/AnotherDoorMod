:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
call.i draw_self(argc=0)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
push.v builtin.surface_mirror
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.sprite_height
pushglb.v global.zoom
mul.v.v
push.v builtin.sprite_width
pushglb.v global.zoom
mul.v.v
call.i surface_create(argc=2)
pop.v.v builtin.surface_mirror

:[2]
push.v builtin.surface_mirror
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushref.i 51
pushi.e -9
pushenv [4]

:[3]
push.d 0.75
conv.d.v
push.i 16777215
conv.i.v
push.v builtin.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v other.y
push.v other.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
sub.v.v
pushi.e 4
sub.i.v
push.v builtin.x
push.v other.x
push.v other.sprite_index
call.i sprite_get_xoffset(argc=1)
sub.v.v
sub.v.v
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
popenv [3]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v builtin.cursorColliding
conv.v.b
bf [12]

:[5]
push.v builtin.surface_mirror2
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.v builtin.sprite_height
pushglb.v global.zoom
mul.v.v
push.v builtin.sprite_width
pushglb.v global.zoom
mul.v.v
call.i surface_create(argc=2)
pop.v.v builtin.surface_mirror2

:[7]
push.v builtin.surface_mirror2
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushref.i 11
pushi.e -9
pushenv [9]

:[8]
push.d 0.75
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v other.y
push.v other.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
sub.v.v
pushi.e 4
sub.i.v
push.v builtin.x
push.v other.x
push.v other.sprite_index
call.i sprite_get_xoffset(argc=1)
sub.v.v
sub.v.v
pushi.e 4
add.i.v
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
popenv [8]
pushi.e 3
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushref.i 51
pushi.e -9
pushenv [11]

:[10]
push.d 0.75
conv.d.v
push.i 16777215
conv.i.v
push.v builtin.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v other.y
push.v other.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
sub.v.v
push.v builtin.x
push.v other.x
push.v other.sprite_index
call.i sprite_get_xoffset(argc=1)
sub.v.v
sub.v.v
pushi.e 1
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v builtin.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
push.v other.y
push.v other.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
sub.v.v
pushi.e 4
sub.i.v
push.v builtin.x
push.v other.x
push.v other.sprite_index
call.i sprite_get_xoffset(argc=1)
sub.v.v
sub.v.v
pushi.e 4
add.i.v
pushi.e 1
conv.i.v
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
popenv [10]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
call.i surface_reset_target(argc=0)
popz.v

:[12]
push.v builtin.y
push.v builtin.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.surface_mirror
call.i draw_surface(argc=3)
popz.v
push.v builtin.cursorColliding
conv.v.b
bf [end]

:[13]
push.v builtin.y
push.v builtin.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.surface_mirror2
call.i draw_surface(argc=3)
popz.v

:[end]