; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
push.v builtin.surf_crt
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surf_crt

:[4]
push.v builtin.surf_chroma
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surf_chroma

:[6]
push.v builtin.surfGui
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 1
conv.b.v
call.i surface_depth_disable(argc=1)
popz.v
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfGui
pushi.e 0
conv.b.v
call.i surface_depth_disable(argc=1)
popz.v

:[8]
push.v builtin.surfBlurTv
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfBlurTv

:[10]
push.v builtin.surfGui
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i gpu_set_blendmode_ext_sepalpha(argc=4)
popz.v
pushi.e 0
conv.i.v
push.s "drawGUI"@8734
conv.s.v
call.i tag_get_asset_ids(argc=2)
pop.v.v local._uiObj
call.i ds_priority_create(argc=0)
pop.v.v local.depthOrder
pushi.e 0
pop.v.i local._i

:[11]
pushloc.v local._i
pushloc.v local._uiObj
call.i array_length(argc=1)
cmp.v.v LT
bf [15]

:[12]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._uiObj
pushi.e -9
pushenv [14]

:[13]
push.v builtin.depth
neg.v
push.v builtin.id
pushloc.v local.depthOrder
call.i ds_priority_add(argc=3)
popz.v

:[14]
popenv [13]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [11]

:[15]
pushloc.v local.depthOrder
call.i ds_priority_empty(argc=1)
conv.v.b
not.b
bf [19]

:[16]
pushloc.v local.depthOrder
call.i ds_priority_delete_min(argc=1)
pushi.e -9
pushenv [18]

:[17]
pushi.e 64
conv.i.v
pushi.e 8
conv.i.v
call.i event_perform(argc=2)
popz.v

:[18]
popenv [17]
b [15]

:[19]
pushloc.v local.depthOrder
call.i ds_priority_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v builtin.surf_crt
call.i surface_set_target(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushref.i 134217745
call.i shader_set(argc=1)
popz.v
pushbltn.v builtin.current_time
pushi.e 100
conv.i.d
div.d.v
push.v builtin.u_time
call.i shader_set_uniform_f(argc=2)
popz.v
pushglb.v global.gameHeight
pushglb.v global.gameWidth
push.v builtin.u_resolution
call.i shader_set_uniform_f(argc=3)
popz.v
pushglb.v global.zoom
push.v builtin.u_zoom
call.i shader_set_uniform_f(argc=2)
popz.v
push.d 1.03
conv.d.v
push.v builtin.u_brightness
call.i shader_set_uniform_f(argc=2)
popz.v
push.d 0.91
conv.d.v
push.v builtin.u_line
call.i shader_set_uniform_f(argc=2)
popz.v
push.d 1.23
conv.d.v
push.v builtin.u_contrast
call.i shader_set_uniform_f(argc=2)
popz.v
pushglb.v global.crtEffect
conv.v.b
bf [21]

:[20]
pushi.e 1
conv.i.v
push.v builtin.u_crt_effect
call.i shader_set_uniform_f(argc=2)
popz.v
b [22]

:[21]
pushi.e 0
conv.i.v
push.v builtin.u_crt_effect
call.i shader_set_uniform_f(argc=2)
popz.v

:[22]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.application_surface
call.i draw_surface(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.surfGui
call.i draw_surface(argc=3)
popz.v
call.i shader_reset(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v builtin.surf_chroma
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushref.i 134217742
call.i shader_set(argc=1)
popz.v
pushbltn.v builtin.current_time
push.v builtin.u_chroma_time
call.i shader_set_uniform_f(argc=2)
popz.v
pushglb.v global.chromaStrenght
push.v builtin.u_chroma_strenght
call.i shader_set_uniform_f(argc=2)
popz.v
pushglb.v global.gameHeight
pushglb.v global.gameWidth
push.v builtin.u_chroma_res
call.i shader_set_uniform_f(argc=3)
popz.v
push.v builtin.shakeY
push.v builtin.shakeX
push.v builtin.surf_crt
call.i draw_surface(argc=3)
popz.v
call.i shader_reset(argc=0)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushglb.v global.gameDrawOffsetY
pushglb.v global.gameDrawOffsetX
push.v builtin.surf_chroma
call.i draw_surface(argc=3)
popz.v

:[end]