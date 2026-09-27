:[0]
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.z
pop.v.v builtin.zInit
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

:[end]