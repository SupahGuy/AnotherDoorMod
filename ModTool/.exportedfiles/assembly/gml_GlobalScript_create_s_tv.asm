:[0]
b [2]

> gml_Script_generate_tv (locals=0, argc=11)
:[1]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.x
push.v arg.argument1
pop.v.v builtin.y
push.v arg.argument2
pop.v.v builtin.z1
push.v arg.argument3
pop.v.v builtin.z2
push.v arg.argument4
pop.v.v builtin.z3
push.v arg.argument5
pop.v.v builtin.z4
push.v arg.argument6
pop.v.v builtin.angleX
push.v arg.argument7
pop.v.v builtin.angleY
push.v arg.argument8
pop.v.v builtin.angleZ
push.v arg.argument9
pop.v.v builtin.objWidth
push.v arg.argument10
pop.v.v builtin.objHeight
exit.i

:[2]
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.generate_tv
popz.v

:[end]