:[0]
push.s "u_resolution"@8116
conv.s.v
pushref.i 134217756
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_resolution
push.s "u_time"@8114
conv.s.v
pushref.i 134217756
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_time
pushi.e 1000
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v builtin.randomizeTime
push.s "u_enableNoise"@11512
conv.s.v
pushref.i 134217756
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_enableNoise
push.s "u_noiseWaveCounter"@11513
conv.s.v
pushref.i 134217756
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_noiseWaveCounter
pushi.e 15
conv.i.v
pushi.e 5
conv.i.v
call.i irandom_range(argc=2)
pop.v.v builtin.noiseWaveCounter
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.z
pop.v.v builtin.zInit
call.i vertex_create_buffer(argc=0)
pop.v.v builtin.vBuffFace
pushi.e 0
conv.i.v
pushref.i 16777237
call.i sprite_get_texture(argc=2)
pop.v.v builtin.textureFace
pushglb.v global.vFormat
push.v builtin.vBuffFace
call.i vertex_begin(argc=2)
popz.v
push.v builtin.objHeight
push.v builtin.objWidth
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v builtin.z
push.v builtin.y
push.v builtin.objHeight
add.v.v
push.v builtin.x
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.z
push.v builtin.y
push.v builtin.objHeight
add.v.v
push.v builtin.x
push.v builtin.objWidth
add.v.v
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.z
push.v builtin.y
push.v builtin.x
push.v builtin.objWidth
add.v.v
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.z
push.v builtin.y
push.v builtin.x
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.vBuffFace
call.i gml_Script_vertex_create_face(argc=9)
popz.v
push.v builtin.vBuffFace
call.i vertex_end(argc=1)
popz.v
pushi.e -1
pop.v.i builtin.surfTv
push.v builtin.surfTv
call.i surface_get_texture(argc=1)
pop.v.v builtin.tex
push.v builtin.z
pop.v.v builtin.depth
pushi.e -1
pop.v.i builtin.whichOne
pushi.e -1
pop.v.i builtin.surfaceCrt
push.s "frame_size"@11468
conv.s.v
pushref.i 134217743
call.i shader_get_uniform(argc=2)
pop.v.v builtin.frame_size_uniform

:[end]