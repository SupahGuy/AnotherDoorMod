:[0]
b [7]

> gml_Script___scribble_texture_group_get_ready (locals=0, argc=1)
:[1]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [4]

:[2]
push.v arg.argument0
call.i texturegroup_get_status(argc=1)
pushi.e 2
cmp.i.v EQ
bt [4]

:[3]
push.v arg.argument0
call.i texturegroup_get_status(argc=1)
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
conv.b.v
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script___scribble_texture_group_get_ready
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_texture_group_get_ready
popz.v

:[end]