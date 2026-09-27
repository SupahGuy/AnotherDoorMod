:[0]
b [46]

> gml_Script_InputOpposing (locals=5, argc=4)
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
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

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
pop.v.v local._heldNeg
push.v arg.argument2
push.v arg.argument1
call.i gml_Script_InputCheck(argc=2)
pop.v.v local._heldPos
pushloc.v local._heldNeg
conv.v.b
not.b
bf [15]

:[14]
pushloc.v local._heldPos
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
conv.i.v
ret.v

:[18]
pushloc.v local._heldNeg
conv.v.b
bf [21]

:[19]
pushloc.v local._heldPos
conv.v.b
bf [21]

:[20]
push.v arg.argument3
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
conv.i.v
ret.v

:[24]
pushloc.v local._heldPos
conv.v.b
not.b
bf [29]

:[25]
pushloc.v local._heldNeg
conv.v.b
bf [27]

:[26]
pushi.e -1
conv.i.v
b [28]

:[27]
pushi.e 0
conv.i.v

:[28]
ret.v

:[29]
pushloc.v local._heldNeg
conv.v.b
not.b
bf [34]

:[30]
pushloc.v local._heldPos
conv.v.b
bf [32]

:[31]
pushi.e 1
conv.i.v
b [33]

:[32]
pushi.e 0
conv.i.v

:[33]
ret.v

:[34]
pushi.e -16
push.v arg.argument2
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [45]

:[35]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__verbStateArray
pop.v.v local._verbStructNeg
pushi.e -6
push.v arg.argument1
conv.v.i
push.v [array]self.__verbStateArray
pop.v.v local._verbStructPos
pushloc.v local._verbStructNeg
pushi.e -9
push.v [stacktop]self.__pressFrame
pushloc.v local._verbStructPos
pushi.e -9
push.v [stacktop]self.__pressFrame
cmp.v.v GT
bf [41]

:[36]
pushloc.v local._heldNeg
conv.v.b
bf [38]

:[37]
pushi.e -1
conv.i.v
b [39]

:[38]
pushi.e 0
conv.i.v

:[39]
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[40]
b [45]

:[41]
pushloc.v local._heldPos
conv.v.b
bf [43]

:[42]
pushi.e 1
conv.i.v
b [44]

:[43]
pushi.e 0
conv.i.v

:[44]
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[45]
popenv [35]
push.s "Opposing check unhandled"@6548
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v
exit.i

:[46]
push.i [function]gml_Script_InputOpposing
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputOpposing
popz.v

:[end]