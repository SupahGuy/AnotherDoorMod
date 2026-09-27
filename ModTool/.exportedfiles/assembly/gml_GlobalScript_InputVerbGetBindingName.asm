:[0]
b [15]

> gml_Script_InputVerbGetBindingName (locals=1, argc=4)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument2

:[5]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
push.s "???"@6459
pop.v.s builtin.argument3

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
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
pop.v.v local._forGamepad
push.v arg.argument3
pushloc.v local._forGamepad
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
pushloc.v local._forGamepad
call.i gml_Script_InputBindingGet(argc=4)
call.i gml_Script_InputGetBindingName(argc=3)
ret.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_InputVerbGetBindingName
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbGetBindingName
popz.v

:[end]