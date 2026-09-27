:[0]
b [8]

> gml_Script_first_empty_in_array (locals=1, argc=1)
:[1]
pushi.e 0
pop.v.i local._i

:[2]
pushloc.v local._i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [6]

:[3]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushloc.v local._i
ret.v

:[5]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[6]
pushi.e -1
conv.i.v
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_first_empty_in_array
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.first_empty_in_array
popz.v

:[end]