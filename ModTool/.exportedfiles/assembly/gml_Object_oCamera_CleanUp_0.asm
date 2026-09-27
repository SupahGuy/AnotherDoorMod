:[0]
call.i gml_Script_g_clean_up(argc=0)
popz.v
push.v builtin.cam3D
call.i camera_destroy(argc=1)
popz.v
push.v builtin.surf_crt
call.i surface_free(argc=1)
popz.v
push.v builtin.surf_chroma
call.i surface_free(argc=1)
popz.v
push.v builtin.surfGui
call.i surface_free(argc=1)
popz.v

:[end]