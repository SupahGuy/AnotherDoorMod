; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.surfTv
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.objHeight
push.v builtin.objWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfTv

:[2]
push.v builtin.surfTv
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_ztestenable(argc=1)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v builtin.objHeight
push.v builtin.objWidth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v builtin.objHeight
pushi.e 2
conv.i.d
div.d.v
push.v builtin.objWidth
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.current_time
pushi.e 100
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.d 0.5
add.d.v
pushi.e 4
mul.i.v
pushref.i 16777914
call.i draw_sprite(argc=4)
popz.v
push.v builtin.objHeight
pushi.e 2
conv.i.d
div.d.v
push.v builtin.objWidth
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushref.i 16777848
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_ztestenable(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v builtin.surfaceCrt
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
push.v builtin.objHeight
push.v builtin.objWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfaceCrt

:[4]
push.v builtin.surfaceCrt
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushref.i 134217756
call.i shader_set(argc=1)
popz.v
push.v builtin.objHeight
push.v builtin.objWidth
push.v builtin.u_resolution
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.surfTv
call.i draw_surface(argc=3)
popz.v
call.i shader_reset(argc=0)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.objHeight
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.yInit
sub.v.v
push.v builtin.objWidth
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.xInit
sub.v.v
call.i matrix_build(argc=9)
pop.v.v local._matrixToOrigin
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.angleZ
push.v builtin.angleY
push.v builtin.angleX
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i matrix_build(argc=9)
pop.v.v local._matrixRotate
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.zInit
push.v builtin.yInit
push.v builtin.xInit
call.i matrix_build(argc=9)
pop.v.v local._matrixTranslate
pushloc.v local._matrixRotate
pushloc.v local._matrixToOrigin
call.i matrix_multiply(argc=2)
pop.v.v local._transformFinal
pushloc.v local._matrixTranslate
pushloc.v local._transformFinal
call.i matrix_multiply(argc=2)
pop.v.v local._transformFinal2
pushloc.v local._transformFinal2
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
pushref.i 134217743
call.i shader_set(argc=1)
popz.v
push.v builtin.objHeight
push.v builtin.objWidth
push.v builtin.frame_size_uniform
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_tex_filter(argc=1)
popz.v
push.v builtin.surfaceCrt
call.i surface_get_texture(argc=1)
pop.v.v builtin.tex
push.v builtin.tex
pushi.e 5
conv.i.v
push.v builtin.vBuffFace
call.i vertex_submit(argc=3)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_tex_filter(argc=1)
popz.v
call.i shader_reset(argc=0)
popz.v
call.i matrix_build_identity(argc=0)
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v

:[end]