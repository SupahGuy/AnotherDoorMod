:[0]
b [2]

> gml_Script_Vec3 (locals=0, argc=3)
:[1]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.x
push.v arg.argument1
pop.v.v builtin.y
push.v arg.argument2
pop.v.v builtin.z
exit.i

:[2]
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.Vec3
popz.v

:[end]