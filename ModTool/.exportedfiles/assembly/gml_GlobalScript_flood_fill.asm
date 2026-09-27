:[0]
b [16]

> gml_Script_flood_fill (locals=5, argc=5)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i builtin.argument2

:[3]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 2
pop.v.i builtin.argument3

:[5]
push.v arg.argument0
pop.v.v local._x
push.v arg.argument1
pop.v.v local._y
push.v arg.argument2
pop.v.v local._prevValue
push.v arg.argument3
pop.v.v local._newValue
push.v arg.argument4
pop.v.v local._array
pushloc.v local._x
pushi.e 0
cmp.i.v LT
bt [9]

:[6]
pushloc.v local._x
pushloc.v local._array
call.i array_length(argc=1)
cmp.v.v GTE
bt [9]

:[7]
pushloc.v local._y
pushi.e 0
cmp.i.v LT
bt [9]

:[8]
pushloc.v local._y
pushi.e -7
pushi.e 0
push.v [array]self._array
call.i array_length(argc=1)
cmp.v.v GTE
b [10]

:[9]
push.e 1

:[10]
bt [12]

:[11]
pushi.e -7
pushloc.v local._x
conv.v.i
push.v [arraypushaf]self._array
pushloc.v local._y
conv.v.i
pushaf.e
pushloc.v local._prevValue
cmp.v.v NEQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
pushi.e 0
conv.i.v
ret.v

:[15]
push.v arg.argument3
pushi.e -7
pushloc.v local._x
conv.v.i
push.v [arraypopaf]self._array
pushloc.v local._y
conv.v.i
popaf.e
pushloc.v local._array
push.v arg.argument3
push.v arg.argument2
pushloc.v local._y
pushloc.v local._x
pushi.e 1
sub.i.v
call.i gml_Script_flood_fill(argc=5)
popz.v
pushloc.v local._array
push.v arg.argument3
push.v arg.argument2
pushloc.v local._y
pushloc.v local._x
pushi.e 1
add.i.v
call.i gml_Script_flood_fill(argc=5)
popz.v
pushloc.v local._array
push.v arg.argument3
push.v arg.argument2
pushloc.v local._y
pushi.e 1
sub.i.v
pushloc.v local._x
call.i gml_Script_flood_fill(argc=5)
popz.v
pushloc.v local._array
push.v arg.argument3
push.v arg.argument2
pushloc.v local._y
pushi.e 1
add.i.v
pushloc.v local._x
call.i gml_Script_flood_fill(argc=5)
popz.v
exit.i

:[16]
push.i [function]gml_Script_flood_fill
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.flood_fill
popz.v

:[end]