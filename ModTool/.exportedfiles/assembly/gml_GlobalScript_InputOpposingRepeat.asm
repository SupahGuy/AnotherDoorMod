:[0]
b [22]

> gml_Script_InputOpposingRepeat (locals=0, argc=5)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument2

:[3]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 9
pop.v.i builtin.argument3

:[5]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e 25
pop.v.i builtin.argument4

:[7]
push.v arg.argument2
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "\")"@194
conv.s.v
push.v arg.argument2
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
push.v arg.argument2
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
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[11]
push.v arg.argument2
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[13]
push.v arg.argument2
push.v arg.argument0
call.i gml_Script_InputCheck(argc=2)
conv.v.b
bf [18]

:[14]
push.v arg.argument2
push.v arg.argument1
call.i gml_Script_InputCheck(argc=2)
conv.v.b
bf [16]

:[15]
pushi.e 0
conv.i.v
ret.v

:[16]
pushi.e -1
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument0
call.i gml_Script_InputRepeat(argc=4)
mul.v.i
ret.v

:[17]
b [20]

:[18]
push.v arg.argument2
push.v arg.argument1
call.i gml_Script_InputCheck(argc=2)
conv.v.b
bf [20]

:[19]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
call.i gml_Script_InputRepeat(argc=4)
ret.v

:[20]
pushi.e 0
conv.i.v
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_InputOpposingRepeat
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputOpposingRepeat
popz.v

:[end]