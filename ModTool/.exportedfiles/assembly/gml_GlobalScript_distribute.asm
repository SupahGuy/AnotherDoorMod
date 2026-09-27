:[0]
b [9]

> gml_Script_g_distribute (locals=4, argc=2)
:[1]
push.v arg.argument0
push.v arg.argument1
div.v.v
call.i floor(argc=1)
pop.v.v local.base
push.v arg.argument0
push.v arg.argument1
mod.v.v
pop.v.v local.remainder
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.result
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v arg.argument1
cmp.v.v LT
bf [7]

:[3]
pushloc.v local.base
pushloc.v local.i
pushloc.v local.remainder
cmp.v.v LT
bf [5]

:[4]
pushi.e 1
conv.i.v
b [6]

:[5]
pushi.e 0
conv.i.v

:[6]
add.v.v
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self.result
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[7]
pushloc.v local.result
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_g_distribute
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_distribute
popz.v

:[end]