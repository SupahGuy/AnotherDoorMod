:[0]
b [6]

> gml_Script_find_nearest_obj (locals=2, argc=2)
:[1]
pushi.e -4
pop.v.i local.n
push.v arg.argument1
pushi.e -9
pushenv [4]

:[2]
push.v other.y
push.v other.x
push.v builtin.y
push.v builtin.x
call.i point_distance(argc=4)
pop.v.v local.t
pushloc.v local.t
push.v arg.argument0
cmp.v.v LT
bf [4]

:[3]
pushloc.v local.t
pop.v.v arg.argument0
push.v builtin.id
pop.v.v local.n

:[4]
popenv [2]
pushloc.v local.n
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_find_nearest_obj
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.find_nearest_obj
popz.v

:[end]