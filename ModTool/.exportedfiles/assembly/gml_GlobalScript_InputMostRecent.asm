:[0]
b [28]

> gml_Script_InputMostRecent (locals=6, argc=2)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument0

:[3]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument1

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
push.v static._system
pushi.e -9
push.v [stacktop]self.__verbDefIndexArray
pop.v.v static._verbDefIndexArray

:[7]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
push.v arg.argument1
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
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[11]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[13]
push.v arg.argument0
call.i is_numeric(argc=1)
conv.v.b
bf [15]

:[14]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v static._verbDefIndexArray
pop.v.v arg.argument0

:[18]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [27]

:[19]
pushi.e -1
pop.v.i local._maxTime
pushbltn.v builtin.undefined
pop.v.v local._maxVerb
pushi.e 0
pop.v.i local._i
push.v arg.argument0
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [26]

:[20]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pop.v.v local._verbIndex
pushi.e -6
pushloc.v local._verbIndex
conv.v.i
push.v [array]self.__verbStateArray
pop.v.v local._verbState
pushloc.v local._verbState
pushi.e -9
push.v [stacktop]self.__held
conv.v.b
bf [22]

:[21]
pushloc.v local._verbState
pushi.e -9
push.v [stacktop]self.__pressFrame
pushloc.v local._maxTime
cmp.v.v GT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushloc.v local._verbState
pushi.e -9
push.v [stacktop]self.__pressFrame
pop.v.v local._maxTime
pushloc.v local._verbIndex
pop.v.v local._maxVerb

:[25]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [20]

:[26]
popz.i
pushloc.v local._maxVerb
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[27]
popenv [19]
exit.i

:[28]
push.i [function]gml_Script_InputMostRecent
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMostRecent
popz.v

:[end]