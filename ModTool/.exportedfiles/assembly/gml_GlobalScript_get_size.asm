:[0]
b [17]

> gml_Script_get_size (locals=2, argc=1)
:[1]
push.v arg.argument0
call.i typeof(argc=1)
pop.v.v local._type
pushloc.v local._type
dup.v 0
push.s "array"@6033
cmp.s.v EQ
bt [10]

:[2]
dup.v 0
push.s "struct"@6034
cmp.s.v EQ
bt [11]

:[3]
dup.v 0
push.s "string"@11
cmp.s.v EQ
bt [12]

:[4]
dup.v 0
push.s "number"@5108
cmp.s.v EQ
bt [13]

:[5]
dup.v 0
push.s "int32"@6035
cmp.s.v EQ
bt [13]

:[6]
dup.v 0
push.s "int64"@6036
cmp.s.v EQ
bt [13]

:[7]
dup.v 0
push.s "bool"@6037
cmp.s.v EQ
bt [14]

:[8]
b [15]

:[9]
b [16]

:[10]
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[11]
push.v arg.argument0
call.i variable_struct_get_names(argc=1)
call.i gml_Script_get_size(argc=1)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[12]
push.v arg.argument0
call.i string_length(argc=1)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[13]
push.v arg.argument0
call.i string(argc=1)
call.i gml_Script_get_size(argc=1)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[14]
pushi.e 1
conv.i.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[15]
pushi.e -1
conv.i.v
pop.v.v local.$$$$temp$$$$
push.v local.$$$$temp$$$$
ret.v

:[16]
popz.v
exit.i

:[17]
push.i [function]gml_Script_get_size
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.get_size
popz.v

:[end]