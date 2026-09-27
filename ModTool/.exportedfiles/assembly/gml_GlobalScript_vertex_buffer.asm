:[0]
call.i vertex_format_begin(argc=0)
popz.v
call.i vertex_format_add_position_3d(argc=0)
popz.v
call.i vertex_format_add_texcoord(argc=0)
popz.v
call.i vertex_format_add_color(argc=0)
popz.v
call.i vertex_format_end(argc=0)
pop.v.v global.vFormat
b [4]

> gml_Script_vertex_create_face (locals=2, argc=9)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
pushi.e 32
pop.v.i static._texSize

:[3]
push.v arg.argument7
push.v static._texSize
div.v.v
pop.v.v local._texW
push.v arg.argument8
push.v static._texSize
div.v.v
pop.v.v local._texH
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.z
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
call.i vertex_position_3d(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i vertex_texcoord(argc=3)
popz.v
push.v arg.argument6
push.v arg.argument5
push.v arg.argument0
call.i vertex_color(argc=3)
popz.v
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.z
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
call.i vertex_position_3d(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i vertex_texcoord(argc=3)
popz.v
push.v arg.argument6
push.v arg.argument5
push.v arg.argument0
call.i vertex_color(argc=3)
popz.v
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.z
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
call.i vertex_position_3d(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i vertex_texcoord(argc=3)
popz.v
push.v arg.argument6
push.v arg.argument5
push.v arg.argument0
call.i vertex_color(argc=3)
popz.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.z
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
call.i vertex_position_3d(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i vertex_texcoord(argc=3)
popz.v
push.v arg.argument6
push.v arg.argument5
push.v arg.argument0
call.i vertex_color(argc=3)
popz.v
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.z
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument3
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
call.i vertex_position_3d(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i vertex_texcoord(argc=3)
popz.v
push.v arg.argument6
push.v arg.argument5
push.v arg.argument0
call.i vertex_color(argc=3)
popz.v
push.v arg.argument4
pushi.e -9
push.v [stacktop]self.z
push.v arg.argument4
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument4
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
call.i vertex_position_3d(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i vertex_texcoord(argc=3)
popz.v
push.v arg.argument6
push.v arg.argument5
push.v arg.argument0
call.i vertex_color(argc=3)
popz.v
exit.i

:[4]
push.i [function]gml_Script_vertex_create_face
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.vertex_create_face
popz.v

:[end]