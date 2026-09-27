:[0]
b [14]

> gml_Script_array_find_struct_duplicate (locals=3, argc=2)
:[1]
push.v arg.argument1
pushi.e -15
pushi.e 0
push.v [array]self.argument0
call.i struct_exists(argc=2)
conv.v.b
not.b
bf [3]

:[2]
pushi.e -1
conv.i.v
ret.v

:[3]
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v local._arrayLength
pushloc.v local._arrayLength
pushi.e 1
cmp.i.v GT
bf [12]

:[4]
pushi.e 0
pop.v.i local._i

:[5]
pushloc.v local._i
pushloc.v local._arrayLength
pushi.e 1
sub.i.v
cmp.v.v LT
bf [12]

:[6]
pushloc.v local._i
pushi.e 1
add.i.v
pop.v.v local._j

:[7]
pushloc.v local._j
pushloc.v local._arrayLength
cmp.v.v LT
bf [11]

:[8]
push.v arg.argument1
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
call.i struct_get(argc=2)
push.v arg.argument1
pushi.e -15
pushloc.v local._j
conv.v.i
push.v [array]self.argument0
call.i struct_get(argc=2)
cmp.v.v EQ
bf [10]

:[9]
pushi.e 1
conv.b.v
ret.v

:[10]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [7]

:[11]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [5]

:[12]
pushi.e 0
conv.b.v
ret.v

:[13]
exit.i

:[14]
push.i [function]gml_Script_array_find_struct_duplicate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.array_find_struct_duplicate
popz.v
b [25]

> gml_Script_array_sort_struct_desc (locals=4, argc=2)
:[15]
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v local._length
pushi.e 1
pop.v.i local._i

:[16]
pushloc.v local._i
pushloc.v local._length
cmp.v.v LT
bf [24]

:[17]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pop.v.v local._key
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._j

:[18]
pushloc.v local._j
pushi.e 0
cmp.i.v GTE
bf [20]

:[19]
push.v arg.argument1
pushi.e -15
pushloc.v local._j
conv.v.i
push.v [array]self.argument0
call.i struct_get(argc=2)
push.v arg.argument1
pushloc.v local._key
call.i struct_get(argc=2)
cmp.v.v LT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e -15
pushloc.v local._j
conv.v.i
push.v [array]self.argument0
pushi.e -15
pushloc.v local._j
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.argument0
pushloc.v local._j
pushi.e 1
sub.i.v
pop.v.v local._j
b [18]

:[23]
pushloc.v local._key
pushi.e -15
pushloc.v local._j
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.argument0
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [16]

:[24]
exit.i

:[25]
push.i [function]gml_Script_array_sort_struct_desc
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.array_sort_struct_desc
popz.v
b [53]

> gml_Script_array_sort_by_struct (locals=0, argc=4)
:[26]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i builtin.argument3

:[28]
push.v arg.argument2
push.v arg.argument0
call.i variable_struct_exists(argc=2)
conv.v.b
bf [30]

:[29]
push.v arg.argument2
push.v arg.argument1
call.i variable_struct_exists(argc=2)
conv.v.b
b [31]

:[30]
push.e 0

:[31]
bf [45]

:[32]
push.v arg.argument3
pushi.e 1
cmp.i.v EQ
bf [39]

:[33]
push.v arg.argument2
push.v arg.argument0
call.i variable_struct_get(argc=2)
push.v arg.argument2
push.v arg.argument1
call.i variable_struct_get(argc=2)
cmp.v.v LT
bf [35]

:[34]
pushi.e -1
conv.i.v
ret.v

:[35]
push.v arg.argument2
push.v arg.argument0
call.i variable_struct_get(argc=2)
push.v arg.argument2
push.v arg.argument1
call.i variable_struct_get(argc=2)
cmp.v.v GT
bf [37]

:[36]
pushi.e 1
conv.i.v
ret.v

:[37]
pushi.e 0
conv.i.v
ret.v

:[38]
b [44]

:[39]
push.v arg.argument2
push.v arg.argument0
call.i variable_struct_get(argc=2)
push.v arg.argument2
push.v arg.argument1
call.i variable_struct_get(argc=2)
cmp.v.v LT
bf [41]

:[40]
pushi.e 1
conv.i.v
ret.v

:[41]
push.v arg.argument2
push.v arg.argument0
call.i variable_struct_get(argc=2)
push.v arg.argument2
push.v arg.argument1
call.i variable_struct_get(argc=2)
cmp.v.v GT
bf [43]

:[42]
pushi.e -1
conv.i.v
ret.v

:[43]
pushi.e 0
conv.i.v
ret.v

:[44]
b [52]

:[45]
push.v arg.argument2
push.v arg.argument0
call.i variable_struct_exists(argc=2)
conv.v.b
bf [48]

:[46]
pushi.e -1
conv.i.v
ret.v

:[47]
b [52]

:[48]
push.v arg.argument2
push.v arg.argument1
call.i variable_struct_exists(argc=2)
conv.v.b
bf [51]

:[49]
pushi.e 1
conv.i.v
ret.v

:[50]
b [52]

:[51]
pushi.e 0
conv.i.v
ret.v

:[52]
exit.i

:[53]
push.i [function]gml_Script_array_sort_by_struct
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.array_sort_by_struct
popz.v

:[end]