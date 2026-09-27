:[0]
b [25]

> gml_Script_InputBindingSetSafe (locals=3, argc=5)
:[1]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument3

:[3]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument4

:[5]
push.v arg.argument4
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument4
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument4
pushi.e 4
cmp.i.v GTE
bf [9]

:[8]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument4
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument4
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument4
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
push.v arg.argument3
push.v arg.argument4
push.v arg.argument1
push.v arg.argument2
push.v arg.argument0
call.i gml_Script_InputBindingFindCollisions(argc=5)
pop.v.v local._collisionArray
pushloc.v local._collisionArray
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_InputBindingSet(argc=5)
popz.v
pushi.e 1
conv.b.v
ret.v

:[13]
b [23]

:[14]
pushloc.v local._collisionArray
call.i array_length(argc=1)
pushi.e 1
cmp.i.v GT
bf [16]

:[15]
push.s "Warning! More than one binding collision found, resolution may not be desirable"@6326
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v

:[16]
pushi.e -7
pushi.e 0
push.v [array]self._collisionArray
pushi.e -9
push.v [stacktop]self.verbIndex
pop.v.v local._verbIndexB
pushi.e -7
pushi.e 0
push.v [array]self._collisionArray
pushi.e -9
push.v [stacktop]self.alternate
pop.v.v local._alternateB
push.v arg.argument1
pushloc.v local._verbIndexB
cmp.v.v NEQ
bt [18]

:[17]
push.v arg.argument3
pushloc.v local._alternateB
cmp.v.v NEQ
b [19]

:[18]
push.e 1

:[19]
bf [22]

:[20]
push.s ")"@372
conv.s.v
pushloc.v local._alternateB
push.s ", alternate="@6329
conv.s.v
pushloc.v local._verbIndexB
call.i gml_Script_InputVerbGetExportName(argc=1)
push.s ", verb="@6331
conv.s.v
push.v arg.argument0
push.s "Collision found in (forGamepad="@6332
conv.s.v
call.i gml_Script___InputTrace(argc=7)
popz.v
push.v arg.argument4
pushloc.v local._alternateB
pushloc.v local._verbIndexB
push.v arg.argument3
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_InputBindingSwap(argc=6)
popz.v
pushi.e 1
conv.b.v
ret.v

:[21]
b [23]

:[22]
push.s ")"@372
conv.s.v
push.v arg.argument3
push.s ", alternate="@6329
conv.s.v
push.v arg.argument1
call.i gml_Script_InputVerbGetExportName(argc=1)
push.s ", verb="@6331
conv.s.v
push.v arg.argument0
push.s ") is the same as existing binding (forGamepad="@6334
conv.s.v
push.v arg.argument2
push.s "New binding ("@6335
conv.s.v
call.i gml_Script___InputTrace(argc=9)
popz.v

:[23]
pushi.e 0
conv.b.v
ret.v

:[24]
exit.i

:[25]
push.i [function]gml_Script_InputBindingSetSafe
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputBindingSetSafe
popz.v

:[end]