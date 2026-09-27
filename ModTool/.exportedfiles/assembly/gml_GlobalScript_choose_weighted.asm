:[0]
b [30]

> gml_Script_choose_weighted (locals=4, argc=3)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e -1
pop.v.i builtin.argument2

:[5]
pushi.e 0
pop.v.i local.n
pushi.e 1
pop.v.i local.i

:[6]
pushloc.v local.i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [11]

:[7]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
b [10]

:[9]
push.v local.n
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
add.v.v
pop.v.v local.n

:[10]
push.v local.i
pushi.e 2
add.i.v
pop.v.v local.i
b [6]

:[11]
push.v arg.argument1
pushi.e -1
cmp.i.v EQ
bf [16]

:[12]
push.v arg.argument2
pushi.e -1
cmp.i.v EQ
bf [14]

:[13]
pushloc.v local.n
call.i random(argc=1)
pop.v.v local._chance
b [15]

:[14]
pushloc.v local.n
pushglb.v global.rng
call.i gml_Script_minstd_float(argc=2)
pop.v.v local._chance

:[15]
b [17]

:[16]
pushloc.v local.n
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
call.i gml_Script_map_value(argc=5)
pop.v.v local._chanceCalculated
pushloc.v local._chanceCalculated
pop.v.v local._chance

:[17]
pushi.e 1
pop.v.i local.i

:[18]
pushloc.v local.i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [26]

:[19]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e 0
cmp.i.v LTE
bf [21]

:[20]
b [25]

:[21]
push.v local._chance
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
sub.v.v
pop.v.v local._chance
pushloc.v local._chance
pushi.e 0
cmp.i.v LT
bf [25]

:[22]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e -15
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.argument0
b [24]

> gml_Script____struct___62@choose_weighted@choose_weighted (locals=0, argc=0)
:[23]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.elem
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.weight
exit.i

:[24]
push.i [function]gml_Script____struct___62@choose_weighted@choose_weighted
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___62
call.i @@NewGMLObject@@(argc=3)
ret.v

:[25]
push.v local.i
pushi.e 2
add.i.v
pop.v.v local.i
b [18]

:[26]
pushi.e -15
pushi.e 1
push.v [array]self.argument0
pushi.e -15
pushi.e 0
push.v [array]self.argument0
b [28]

> gml_Script____struct___63@choose_weighted@choose_weighted (locals=0, argc=0)
:[27]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.elem
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.weight
exit.i

:[28]
push.i [function]gml_Script____struct___63@choose_weighted@choose_weighted
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___63
call.i @@NewGMLObject@@(argc=3)
ret.v

:[29]
exit.i

:[30]
push.i [function]gml_Script_choose_weighted
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.choose_weighted
popz.v
b [44]

> gml_Script_get_percentage_weighted (locals=4, argc=1)
:[31]
pushi.e 0
pop.v.i local._n
pushi.e 1
pop.v.i local.i

:[32]
pushloc.v local.i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [37]

:[33]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e 0
cmp.i.v LTE
bf [35]

:[34]
b [36]

:[35]
push.v local._n
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
add.v.v
pop.v.v local._n

:[36]
push.v local.i
pushi.e 2
add.i.v
pop.v.v local.i
b [32]

:[37]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._result
pushi.e 0
pop.v.i local.i

:[38]
pushloc.v local.i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [42]

:[39]
pushi.e -15
pushloc.v local.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.argument0
pushloc.v local._n
div.v.v
pushi.e 100
mul.i.v
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.className
b [41]

> gml_Script____struct___64@get_percentage_weighted@choose_weighted (locals=0, argc=0)
:[40]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.name
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.percentage
exit.i

:[41]
push.i [function]gml_Script____struct___64@get_percentage_weighted@choose_weighted
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___64
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._data
pushloc.v local._data
pushloc.v local._result
call.i array_push(argc=2)
popz.v
push.v local.i
pushi.e 2
add.i.v
pop.v.v local.i
b [38]

:[42]
pushloc.v local._result
ret.v

:[43]
exit.i

:[44]
push.i [function]gml_Script_get_percentage_weighted
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.get_percentage_weighted
popz.v
b [47]

> gml_Script_choose_rng (locals=0, argc=0)
:[45]
pushi.e -15
pushbltn.v builtin.argument_count
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
conv.v.i
push.v [array]self.argument
ret.v

:[46]
exit.i

:[47]
push.i [function]gml_Script_choose_rng
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.choose_rng
popz.v

:[end]