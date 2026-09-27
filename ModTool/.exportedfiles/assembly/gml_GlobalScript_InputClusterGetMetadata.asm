:[0]
b [18]

> gml_Script_InputClusterGetMetadata (locals=1, argc=3)
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
pop.v.b builtin.argument2

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray

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
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
push.v arg.argument0
conv.v.i
push.v [array]self.__clusterMetadataArray
pop.v.v local._data
push.v arg.argument2
conv.v.b
bf [15]

:[14]
pushloc.v local._data
call.i variable_clone(argc=1)
b [16]

:[15]
pushloc.v local._data

:[16]
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_InputClusterGetMetadata
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputClusterGetMetadata
popz.v

:[end]