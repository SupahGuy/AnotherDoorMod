:[0]
b [7]

> gml_Script_random_manager (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
pushi.e 1000
conv.i.v
call.i irandom(argc=1)
pop.v.v builtin.seed
pushi.e 0
pop.v.i builtin.percentage
b [3]

> gml_Script_anon@323@random_manager@random_manager (locals=0, argc=0)
:[2]
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
pop.v.v builtin.percentage
exit.i

:[3]
push.i [function]gml_Script_anon@323@random_manager@random_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.generate_percentage
b [6]

> gml_Script_anon@450@random_manager@random_manager (locals=0, argc=0)
:[4]
push.v builtin.percentage
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_anon@450@random_manager@random_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_percentage
exit.i

:[7]
push.i [function]gml_Script_random_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.random_manager
popz.v
push.i [function]gml_Script_random_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.randomManager

:[end]