:[0]
b [5]

> gml_Script_normalize (locals=1, argc=3)
:[1]
push.v arg.argument2
push.v arg.argument1
sub.v.v
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
ret.v

:[3]
push.v arg.argument0
push.v arg.argument1
sub.v.v
push.v arg.argument2
push.v arg.argument1
sub.v.v
div.v.v
pop.v.v local._numberNormalized
pushloc.v local._numberNormalized
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_normalize
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.normalize
popz.v

:[end]