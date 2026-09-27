:[0]
b [9]

> gml_Script_squidShot (locals=1, argc=6)
:[1]
push.v arg.argument2
call.i degtorad(argc=1)
pop.v.v arg.argument2
pushi.e 0
pop.v.i local.posY
push.v arg.argument2
call.i cos(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
push.v arg.argument1
pushi.e 0
cmp.i.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v arg.argument5
pushi.e 2
conv.i.d
div.d.v
neg.v
pushi.e 2
conv.i.v
push.v arg.argument0
push.v arg.argument3
sub.v.v
call.i power(argc=2)
pushi.e 2
conv.i.v
push.v arg.argument1
call.i power(argc=2)
pushi.e 2
conv.i.v
push.v arg.argument2
call.i cos(argc=1)
call.i power(argc=2)
mul.v.v
div.v.v
mul.v.v
push.v arg.argument2
call.i tan(argc=1)
push.v arg.argument0
push.v arg.argument3
sub.v.v
mul.v.v
add.v.v
push.v arg.argument4
add.v.v
pop.v.v local.posY
b [7]

:[6]
pushi.e 0
pop.v.i local.posY

:[7]
pushloc.v local.posY
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_squidShot
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.squidShot
popz.v

:[end]