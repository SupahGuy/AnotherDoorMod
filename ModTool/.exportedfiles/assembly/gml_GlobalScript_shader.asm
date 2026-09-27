:[0]
b [12]

> gml_Script_c_shader (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
push.s "u_time"@8114
conv.s.v
pushref.i 134217755
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_shape_time
push.s "u_resolution"@8116
conv.s.v
pushref.i 134217755
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_shape_resolution
push.s "u_zoom"@8118
conv.s.v
pushref.i 134217755
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_shape_zoom
push.s "u_offset"@8120
conv.s.v
pushref.i 134217755
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_shape_offset
push.s "ease-in-out-1-0"@8122
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.d 0.75
conv.d.v
pushbltn.v builtin.undefined
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.shapeMove
pushi.e 0
pop.v.i builtin.shapeInc
b [3]

> gml_Script_anon@515@c_shader@shader (locals=0, argc=0)
:[2]
push.v builtin.shapeMove
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.shapeMove
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
exit.i

:[3]
push.i [function]gml_Script_anon@515@c_shader@shader
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_shape
b [5]

> gml_Script_anon@605@c_shader@shader (locals=0, argc=0)
:[4]
push.v builtin.shapeInc
push.d 0.2
conv.d.v
push.d 0.05
conv.d.v
call.i random_range(argc=2)
add.v.v
pop.v.v builtin.shapeInc
exit.i

:[5]
push.i [function]gml_Script_anon@605@c_shader@shader
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.fake_loading
b [11]

> gml_Script_anon@1086@c_shader@shader (locals=0, argc=5)
:[6]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [8]

:[7]
pushglb.v global.zoom
pop.v.v builtin.argument4

:[8]
push.v builtin.shapeMove
dup.v 0 8
dup.v 0
push.v stacktop.is_running
callv.v 0
conv.v.b
bf [10]

:[9]
push.v builtin.shapeInc
push.d 0.2
push.v builtin.shapeMove
dup.v 0 8
dup.v 0
push.v stacktop.get_cur_length_normalize
callv.v 0
mul.v.d
add.v.v
pop.v.v builtin.shapeInc

:[10]
pushref.i 134217755
call.i shader_set(argc=1)
popz.v
push.v arg.argument4
push.v builtin.u_shape_zoom
call.i shader_set_uniform_f(argc=2)
popz.v
pushbltn.v builtin.current_time
pushi.e 4444
conv.i.d
div.d.v
push.v builtin.shapeInc
add.v.v
push.v builtin.u_shape_time
call.i shader_set_uniform_f(argc=2)
popz.v
push.v arg.argument3
push.v arg.argument1
sub.v.v
push.v arg.argument2
push.v arg.argument0
sub.v.v
push.v builtin.u_shape_resolution
call.i shader_set_uniform_f(argc=3)
popz.v
push.v arg.argument1
push.v arg.argument0
push.v builtin.u_shape_offset
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 0
conv.b.v
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i draw_rectangle(argc=5)
popz.v
call.i shader_reset(argc=0)
popz.v
exit.i

:[11]
push.i [function]gml_Script_anon@1086@c_shader@shader
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.draw_shape
exit.i

:[12]
push.i [function]gml_Script_c_shader
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.c_shader
popz.v

:[end]