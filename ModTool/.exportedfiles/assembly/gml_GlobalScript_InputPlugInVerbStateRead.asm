:[0]
b [24]

> gml_Script_InputPlugInVerbStateRead (locals=6, argc=2)
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
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
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
push.v static._system
pushi.e -9
push.v [stacktop]self.__plugInCurrentCallback
push.l 6
cmp.l.v NEQ
bf [13]

:[12]
push.s "Cannot call InputPlugInVerbStateRead() outside of a INPUT_PLUG_IN_CALLBACK.UPDATE_PLAYER callback"@6677
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[13]
push.v static._system
pushi.e -9
push.v [stacktop]self.__frame
pop.v.v local._frame
pushi.e 11
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._header
pushloc.v local._header
push.s "<PWP"@6680
cmp.s.v NEQ
bf [15]

:[14]
push.s "\""@1193
conv.s.v
pushloc.v local._header
push.s "\", got \""@6681
conv.s.v
push.s "<PWP"@6680
conv.s.v
push.s "Header mismatch (expecting \""@6682
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[15]
pushi.e 3
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._verbCount
pushloc.v local._verbCount
call.i gml_Script_InputVerbCount(argc=0)
cmp.v.v NEQ
bf [17]

:[16]
push.s "\""@1193
conv.s.v
pushloc.v local._verbCount
push.s "\", got \""@6681
conv.s.v
call.i gml_Script_InputVerbCount(argc=0)
push.s "Verb count mismatch (expecting \""@6684
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[17]
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v [stacktop]self.__verbStateArray
pop.v.v local._verbStateArray
pushi.e 0
pop.v.i local._i
pushloc.v local._verbCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [21]

:[18]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
pushenv [20]

:[19]
pushi.e 10
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v builtin.__prevHeld
pushi.e 8
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v builtin.__valueRaw
pushi.e 8
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v builtin.__valueClamp
pushloc.v local._frame
pushi.e 6
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
sub.v.v
pop.v.v builtin.__pressFrame
push.v builtin.__valueClamp
pushi.e 0
cmp.i.v GT
pop.v.b builtin.__held

:[20]
popenv [19]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [18]

:[21]
popz.i
pushi.e 11
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._footer
pushloc.v local._footer
push.s ">"@3938
cmp.s.v NEQ
bf [23]

:[22]
push.s "\""@1193
conv.s.v
pushloc.v local._footer
push.s "\", got \""@6681
conv.s.v
push.s ">"@3938
conv.s.v
push.s "Footer mismatch (expecting \""@6686
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[23]
exit.i

:[24]
push.i [function]gml_Script_InputPlugInVerbStateRead
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInVerbStateRead
popz.v

:[end]