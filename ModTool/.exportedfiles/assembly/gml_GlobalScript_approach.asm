:[0]
b [9]

> gml_Script_approach (locals=0, argc=3)
:[1]
push.v arg.argument0
push.v arg.argument1
cmp.v.v LT
bf [5]

:[2]
push.v arg.argument0
push.v arg.argument2
add.v.v
pop.v.v arg.argument0
push.v arg.argument0
push.v arg.argument1
cmp.v.v GT
bf [4]

:[3]
push.v arg.argument1
ret.v

:[4]
b [7]

:[5]
push.v arg.argument0
push.v arg.argument2
sub.v.v
pop.v.v arg.argument0
push.v arg.argument0
push.v arg.argument1
cmp.v.v LT
bf [7]

:[6]
push.v arg.argument1
ret.v

:[7]
push.v arg.argument0
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_approach
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.approach
popz.v

:[end]