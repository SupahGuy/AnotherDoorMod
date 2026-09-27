:[0]
b [22]

> gml_Script_InputDistance (locals=1, argc=2)
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
pushenv [21]

:[12]
push.v arg.argument0
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [14]

:[13]
push.s "\")"@194
conv.s.v
push.v arg.argument0
call.i typeof(argc=1)
push.s "Cluster index must be a number (typeof = \""@6448
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[14]
push.v builtin.__clusterXArray
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.s " too large. No clusters are defined"@6449
conv.s.v
push.v arg.argument0
push.s "Cluster index "@6450
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[16]
push.v arg.argument0
push.v builtin.__clusterXArray
call.i array_length(argc=1)
cmp.v.v GTE
bf [18]

:[17]
push.s ")"@372
conv.s.v
push.v builtin.__clusterXArray
call.i array_length(argc=1)
push.s " too large. Must be within range of defined clusters ("@6451
conv.s.v
push.v arg.argument0
push.s "Cluster index "@6450
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[18]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument0
push.s "Cluster index "@6450
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[20]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__clusterYArray
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__clusterXArray
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[21]
popenv [12]
exit.i

:[22]
push.i [function]gml_Script_InputDistance
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputDistance
popz.v

:[end]