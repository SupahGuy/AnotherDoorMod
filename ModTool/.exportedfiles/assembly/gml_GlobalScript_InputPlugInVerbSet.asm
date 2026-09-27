:[0]
b [18]

> gml_Script_InputPlugInVerbSet (locals=0, argc=4)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
push.v arg.argument1
pop.v.v builtin.argument2

:[3]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i builtin.argument3

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

:[7]
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
push.v static._system
pushi.e -9
push.v [stacktop]self.__plugInCurrentCallback
push.l 5
cmp.l.v NEQ
bf [15]

:[14]
push.s "Cannot call InputPlugInVerbSet() outside of a INPUT_PLUG_IN_CALLBACK.COLLECT_PLAYER callback"@6675
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[15]
pushi.e -16
push.v arg.argument3
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [17]

:[16]
push.v arg.argument2
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.__valueRawArray
push.v arg.argument1
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.__valueClampArray

:[17]
popenv [16]
exit.i

:[18]
push.i [function]gml_Script_InputPlugInVerbSet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInVerbSet
popz.v

:[end]