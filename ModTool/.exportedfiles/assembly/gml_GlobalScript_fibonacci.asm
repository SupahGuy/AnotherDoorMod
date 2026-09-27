:[0]
b [6]

> gml_Script_fibonacci (locals=4, argc=1)
:[1]
pushi.e 1
pop.v.i local._a
pushi.e 1
pop.v.i local._b
pushi.e 3
pop.v.i local._i

:[2]
pushloc.v local._i
push.v arg.argument0
cmp.v.v LTE
bf [4]

:[3]
pushloc.v local._a
pushloc.v local._b
add.v.v
pop.v.v local._c
pushloc.v local._b
pop.v.v local._a
pushloc.v local._c
pop.v.v local._b
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[4]
pushloc.v local._b
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_fibonacci
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.fibonacci
popz.v

:[end]