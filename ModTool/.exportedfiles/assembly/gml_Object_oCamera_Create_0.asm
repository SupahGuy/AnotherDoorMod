; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e -4
pop.v.i builtin.follow
call.i @@This@@(argc=0)
pop.v.v global.camera
pushi.e 1
pop.v.b builtin.positionReached
pushi.e 0
pop.v.i builtin.xVel
pushi.e 0
pop.v.i builtin.yVel
push.v builtin.x
pop.v.v builtin.newX
push.v builtin.y
pop.v.v builtin.newY
pushi.e 0
pop.v.i builtin.xView
pushi.e 0
pop.v.i builtin.yView
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v builtin.x3d
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 40
add.i.v
pop.v.v builtin.y3d
pushi.e -630
pop.v.i builtin.z3d
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v builtin.x3dLookat
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 40
add.i.v
pop.v.v builtin.y3dLookat
pushi.e 0
pop.v.i builtin.z3dLookat
b [10]

> gml_Script_anon@314@gml_Object_oCamera_Create_0 (locals=0, argc=1)
:[1]
pushglb.v global.zoom
pop.v.v global.zoomPrevious
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [6]

:[2]
pushglb.v global.zoom
call.i frac(argc=1)
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v global.zoom
pushi.e 1
add.i.v
pop.v.v global.zoom
b [5]

:[4]
pushglb.v global.zoom
call.i ceil(argc=1)
pop.v.v global.zoom

:[5]
b [9]

:[6]
pushglb.v global.zoom
call.i frac(argc=1)
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v global.zoom
pushi.e 1
sub.i.v
pop.v.v global.zoom
b [9]

:[8]
pushglb.v global.zoom
call.i floor(argc=1)
pop.v.v global.zoom

:[9]
pushglb.v global.zoomMax
pushglb.v global.zoomMin
pushglb.v global.zoom
call.i clamp(argc=3)
pop.v.v global.zoom
call.i @@This@@(argc=0)
push.v builtin.resize
callv.v 0
popz.v
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.zoom
push.s "zoom"@5381
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
exit.i

:[10]
push.i [function]gml_Script_anon@314@gml_Object_oCamera_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.switch_resolution
b [15]

> gml_Script_anon@924@gml_Object_oCamera_Create_0 (locals=0, argc=1)
:[11]
pushglb.v global.zoom
pop.v.v global.zoomPrevious
push.v arg.argument0
pop.v.v global.fullScreen
pushglb.v global.fullScreen
conv.v.b
bf [13]

:[12]
pushi.e 0
conv.b.v
call.i window_set_showborder(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
call.i display_get_width(argc=0)
pushglb.v global.gameWidth
div.v.v
pop.v.v global.zoom
b [14]

:[13]
pushi.e 1
conv.b.v
call.i window_set_showborder(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
pushbltn.v builtin.game_display_name
call.i window_set_caption(argc=1)
popz.v
pushglb.v global.zoomDefault
pop.v.v global.zoom

:[14]
pushi.e 11
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.fullScreen
push.s "fullScreen"@7256
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.zoom
push.s "zoom"@5381
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
exit.i

:[15]
push.i [function]gml_Script_anon@924@gml_Object_oCamera_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.switch_full_screen
b [36]

> gml_Script_anon@1640@gml_Object_oCamera_Create_0 (locals=1, argc=1)
:[16]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [18]

:[17]
pushglb.v global.fullScreen
pop.v.v builtin.argument0

:[18]
pushglb.v global.gameWidth
pushglb.v global.zoom
mul.v.v
pop.v.v global.windowWidth
pushglb.v global.gameHeight
pushglb.v global.zoom
mul.v.v
pop.v.v global.windowHeight
pushglb.v global.gameWidth
pushglb.v global.windowWidth
call.i max(argc=2)
pop.v.v global.windowWidth
pushglb.v global.gameHeight
pushglb.v global.windowHeight
call.i max(argc=2)
pop.v.v global.windowHeight
push.v arg.argument0
conv.v.b
not.b
bf [20]

:[19]
pushglb.v global.windowHeight
pushglb.v global.windowWidth
call.i window_set_size(argc=2)
popz.v

:[20]
pushglb.v global.windowWidth
pushglb.v global.windowHeight
div.v.v
pop.v.v local._aspect
pushloc.v local._aspect
pushglb.v global.aspectRatio
cmp.v.v GT
bf [22]

:[21]
pushglb.v global.windowHeight
pop.v.v global.gameDrawHeight
pushglb.v global.gameDrawHeight
pushglb.v global.aspectRatio
mul.v.v
pop.v.v global.gameDrawWidth
b [23]

:[22]
pushglb.v global.windowWidth
pop.v.v global.gameDrawWidth
pushglb.v global.gameDrawWidth
pushglb.v global.aspectRatio
div.v.v
pop.v.v global.gameDrawHeight

:[23]
pushglb.v global.windowWidth
pushglb.v global.gameDrawWidth
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v global.gameDrawOffsetX
pushglb.v global.windowHeight
pushglb.v global.gameDrawHeight
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v global.gameDrawOffsetY
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
pushbltn.v builtin.application_surface
call.i surface_resize(argc=3)
popz.v
push.v builtin.surf_crt
call.i surface_exists(argc=1)
conv.v.b
bf [25]

:[24]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
push.v builtin.surf_crt
call.i surface_resize(argc=3)
popz.v
b [26]

:[25]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surf_crt

:[26]
push.v builtin.surf_chroma
call.i surface_exists(argc=1)
conv.v.b
bf [28]

:[27]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
push.v builtin.surf_chroma
call.i surface_resize(argc=3)
popz.v
b [29]

:[28]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surf_chroma

:[29]
push.v builtin.surfGui
call.i surface_exists(argc=1)
conv.v.b
bf [31]

:[30]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
push.v builtin.surfGui
call.i surface_resize(argc=3)
popz.v
b [32]

:[31]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfGui

:[32]
push.v builtin.surfBlurTv
call.i surface_exists(argc=1)
conv.v.b
bf [34]

:[33]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
push.v builtin.surfBlurTv
call.i surface_resize(argc=3)
popz.v
b [35]

:[34]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfBlurTv

:[35]
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i display_set_gui_size(argc=2)
popz.v
call.i gml_Script_rescale_font(argc=0)
popz.v
pushglb.v global.zoom
pop.v.v global.zoomPrevious
exit.i

:[36]
push.i [function]gml_Script_anon@1640@gml_Object_oCamera_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.resize
pushi.e 0
conv.b.v
call.i application_surface_draw_enable(argc=1)
popz.v
pushi.e -1
pop.v.i builtin.surfBlurTv
pushi.e -1
pop.v.i builtin.surf_crt
pushi.e -1
pop.v.i builtin.surf_chroma
pushi.e -1
pop.v.i builtin.surfGui
pushi.e 1
pop.v.b builtin.view_enabled
call.i camera_create(argc=0)
pop.v.v builtin.cam3D
pushi.e 1
conv.b.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_visible
pushglb.v global.gameWidth
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_wport
pushglb.v global.gameHeight
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_hport
pushi.e 0
conv.i.v
pushglb.v global.gameWidth
pushglb.v global.gameHeight
pushglb.v global.gameWidth
call.i matrix_build_projection_perspective(argc=4)
pop.v.v local.projmat
pushloc.v local.projmat
push.v builtin.cam3D
call.i camera_set_proj_mat(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.z3dLookat
push.v builtin.y3dLookat
push.v builtin.x3dLookat
push.v builtin.z3d
push.v builtin.y3d
push.v builtin.x3d
call.i matrix_build_lookat(argc=9)
pop.v.v local.viewmat
pushloc.v local.viewmat
push.v builtin.cam3D
call.i camera_set_view_mat(argc=2)
popz.v
push.v builtin.cam3D
call.i camera_get_view_x(argc=1)
pop.v.v builtin.xView
push.v builtin.cam3D
call.i camera_get_view_y(argc=1)
pop.v.v builtin.yView
push.d 0.5
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.shakeTimer
pushi.e 0
pop.v.i builtin.shakeX
pushi.e 0
pop.v.i builtin.shakeY
push.s "u_time"@8114
conv.s.v
pushref.i 134217745
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_time
push.s "u_resolution"@8116
conv.s.v
pushref.i 134217745
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_resolution
push.s "u_zoom"@8118
conv.s.v
pushref.i 134217745
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_zoom
push.s "u_brightness"@8710
conv.s.v
pushref.i 134217745
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_brightness
push.s "u_contrast"@8711
conv.s.v
pushref.i 134217745
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_contrast
push.s "u_line"@8712
conv.s.v
pushref.i 134217745
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_line
push.s "u_crt_effect"@8713
conv.s.v
pushref.i 134217745
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_crt_effect
push.s "u_strenght"@8714
conv.s.v
pushref.i 134217742
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_chroma_strenght
push.s "u_res"@8716
conv.s.v
pushref.i 134217742
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_chroma_res
push.s "u_time"@8114
conv.s.v
pushref.i 134217742
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_chroma_time
pushi.e 0
pop.v.i global.chromaStrenght
pushi.e 1
conv.b.v
call.i gpu_set_ztestenable(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_texrepeat(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.resize
callv.v 1
popz.v
call.i window_center(argc=0)
popz.v
push.s "distortion_texture_page"@8724
conv.s.v
pushref.i 134217746
call.i shader_get_sampler_index(argc=2)
pop.v.v builtin.distortion_stage
pushi.e -1
pop.v.i builtin.surface_distort

:[end]