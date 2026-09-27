:[0]
b [31]

> gml_Script_InputPlugInVerbStateSet (locals=0, argc=6)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[5]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[7]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[9]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i builtin.argument5

:[11]
isstaticok.e
bt [13]

:[12]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[13]
push.v arg.argument5
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [15]

:[14]
push.s "\")"@194
conv.s.v
push.v arg.argument5
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[15]
push.v arg.argument5
pushi.e 4
cmp.i.v GTE
bf [17]

:[16]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument5
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[17]
push.v arg.argument5
pushi.e 0
cmp.i.v LT
bf [19]

:[18]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument5
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[19]
push.v static._system
pushi.e -9
push.v [stacktop]self.__plugInCurrentCallback
push.l 6
cmp.l.v NEQ
bf [21]

:[20]
push.s "Cannot call InputPlugInVerbStateSet() outside of a INPUT_PLUG_IN_CALLBACK.UPDATE_PLAYER callback"@6689
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[21]
pushi.e -16
push.v arg.argument5
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v arg.argument0
conv.v.i
push.v [array]self.__verbStateArray
pushi.e -9
pushenv [30]

:[22]
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [24]

:[23]
push.v arg.argument1
pop.v.v builtin.__prevHeld

:[24]
push.v arg.argument2
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [26]

:[25]
push.v arg.argument2
pop.v.v builtin.__valueRaw

:[26]
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [28]

:[27]
push.v arg.argument3
pop.v.v builtin.__valueClamp
push.v arg.argument3
pushi.e 0
cmp.i.v GT
pop.v.b builtin.__held

:[28]
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [30]

:[29]
push.v arg.argument4
pop.v.v builtin.__pressFrame

:[30]
popenv [22]
exit.i

:[31]
push.i [function]gml_Script_InputPlugInVerbStateSet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInVerbStateSet
popz.v

:[end]