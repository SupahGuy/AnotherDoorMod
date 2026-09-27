:[0]
b [3]

> gml_Script_get_stacking_percentage (locals=0, argc=2)
:[1]
pushi.e 1
pushi.e 1
conv.i.d
pushi.e 1
push.v arg.argument1
pushi.e 100
conv.i.d
div.d.v
push.v arg.argument0
mul.v.v
add.v.i
div.v.d
sub.v.i
pushi.e 100
mul.i.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_get_stacking_percentage
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.get_stacking_percentage
popz.v
b [6]

> gml_Script_calculate_percentage_reduction (locals=0, argc=2)
:[4]
push.v arg.argument0
push.v arg.argument1
mul.v.v
pushi.e 100
conv.i.d
div.d.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_calculate_percentage_reduction
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.calculate_percentage_reduction
popz.v

:[end]