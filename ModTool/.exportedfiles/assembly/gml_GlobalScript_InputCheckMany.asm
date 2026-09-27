:[0]
b [31]

> gml_Script_InputCheckMany (locals=4, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefIndexArray
pop.v.v static._verbDefIndexArray
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[5]
push.v arg.argument0
call.i is_numeric(argc=1)
conv.v.b
bf [7]

:[6]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v static._verbDefIndexArray
pop.v.v arg.argument0

:[10]
push.v arg.argument0
call.i is_array(argc=1)
conv.v.b
bf [16]

:[11]
pushi.e 0
pop.v.i local._v
push.v arg.argument0
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[12]
push.v arg.argument1
pushi.e -15
pushloc.v local._v
conv.v.i
push.v [array]self.argument0
call.i gml_Script_InputCheckMany(argc=2)
conv.v.b
bf [14]

:[13]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[14]
push.v local._v
push.e 1
add.i.v
pop.v.v local._v
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[15]
popz.i
b [29]

:[16]
push.v arg.argument1
call.i is_array(argc=1)
conv.v.b
bf [22]

:[17]
pushi.e 0
pop.v.i local._p
push.v arg.argument1
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [21]

:[18]
pushi.e -15
pushloc.v local._p
conv.v.i
push.v [array]self.argument1
push.v arg.argument0
call.i gml_Script_InputCheck(argc=2)
conv.v.b
bf [20]

:[19]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[20]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
pushi.e 1
sub.i.i
dup.i 0
bt [18]

:[21]
popz.i
b [29]

:[22]
push.v arg.argument1
pushi.e -1
cmp.i.v EQ
bf [28]

:[23]
pushi.e 0
pop.v.i local._playerIndex
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[24]
pushloc.v local._playerIndex
push.v arg.argument0
call.i gml_Script_InputCheck(argc=2)
conv.v.b
bf [26]

:[25]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[26]
push.v local._playerIndex
push.e 1
add.i.v
pop.v.v local._playerIndex
pushi.e 1
sub.i.i
dup.i 0
bt [24]

:[27]
popz.i
b [29]

:[28]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_InputCheck(argc=2)
ret.v

:[29]
pushi.e 0
conv.b.v
ret.v

:[30]
exit.i

:[31]
push.i [function]gml_Script_InputCheckMany
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputCheckMany
popz.v

:[end]