:[0]
b [18]

> gml_Script_InputVerbConsume (locals=0, argc=2)
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
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[5]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument1
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
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument1
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [17]

:[12]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__verbStateArray
push.v builtin.__consumedArray
call.i array_get_index(argc=2)
pushi.e 0
cmp.i.v LT
bf [14]

:[13]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__verbStateArray
push.v builtin.__consumedArray
call.i array_push(argc=2)
popz.v

:[14]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__verbStateArray
pushi.e -9
pushenv [16]

:[15]
pushi.e 0
pop.v.b builtin.__prevHeld
pushi.e 0
pop.v.b builtin.__held
pushi.e 0
pop.v.i builtin.__valueRaw
pushi.e 0
pop.v.i builtin.__valueClamp
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__pressFrame

:[16]
popenv [15]

:[17]
popenv [12]
exit.i

:[18]
push.i [function]gml_Script_InputVerbConsume
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbConsume
popz.v

:[end]