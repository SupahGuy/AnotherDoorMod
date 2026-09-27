:[0]
b [15]

> gml_Script_InputBindingFindCollisions (locals=0, argc=5)
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
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._array

:[7]
pushi.e 0
conv.i.v
push.v static._array
call.i array_resize(argc=2)
popz.v
push.v arg.argument3
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "\")"@194
conv.s.v
push.v arg.argument3
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
push.v arg.argument3
pushi.e 4
cmp.i.v GTE
bf [11]

:[10]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument3
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[11]
push.v arg.argument3
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument3
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[13]
push.v arg.argument3
push.v arg.argument4
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.v static._array
push.l 10
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=7)
popz.v
push.v static._array
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_InputBindingFindCollisions
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputBindingFindCollisions
popz.v

:[end]