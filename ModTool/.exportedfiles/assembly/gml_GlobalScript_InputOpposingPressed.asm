:[0]
b [35]

> gml_Script_InputOpposingPressed (locals=3, argc=4)
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
pushi.e 1
pop.v.b builtin.argument3

:[5]
push.v arg.argument2
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument2
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument2
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
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument2
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument2
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
push.v arg.argument2
push.v arg.argument0
call.i gml_Script_InputPressed(argc=2)
pop.v.v local._pressedNeg
push.v arg.argument2
push.v arg.argument1
call.i gml_Script_InputPressed(argc=2)
pop.v.v local._pressedPos
push.v arg.argument3
conv.v.b
bf [18]

:[12]
pushi.e 0
pop.v.i local._value
pushloc.v local._pressedPos
conv.v.b
bf [14]

:[13]
push.v local._value
push.e 1
add.i.v
pop.v.v local._value

:[14]
pushloc.v local._pressedNeg
conv.v.b
bf [16]

:[15]
push.v local._value
push.e 1
sub.i.v
pop.v.v local._value

:[16]
pushloc.v local._value
ret.v

:[17]
b [34]

:[18]
pushloc.v local._pressedNeg
conv.v.b
not.b
bf [20]

:[19]
pushloc.v local._pressedPos
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 0
conv.i.v
ret.v

:[23]
pushloc.v local._pressedPos
conv.v.b
bf [25]

:[24]
push.v arg.argument2
push.v arg.argument0
call.i gml_Script_InputCheck(argc=2)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 1
conv.i.v
ret.v

:[28]
pushloc.v local._pressedNeg
conv.v.b
bf [30]

:[29]
push.v arg.argument2
push.v arg.argument0
call.i gml_Script_InputCheck(argc=2)
conv.v.b
not.b
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e -1
conv.i.v
ret.v

:[33]
pushi.e 0
conv.i.v
ret.v

:[34]
exit.i

:[35]
push.i [function]gml_Script_InputOpposingPressed
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputOpposingPressed
popz.v

:[end]