:[0]
b [9]

> gml_Script_InputPlugInGamepadNullifyAllMappings (locals=2, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script___InputGamepadGetReadArray(argc=1)
pop.v.v local._readArray
pushloc.v local._readArray
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
exit.i

:[3]
pushi.e 0
pop.v.i local._i
pushloc.v local._readArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[4]
b [7]

> gml_Script_anon@309@InputPlugInGamepadNullifyAllMappings@InputPlugInGamepadNullifyAllMappings (locals=0, argc=0)
:[5]
pushi.e 0
conv.i.v
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_anon@309@InputPlugInGamepadNullifyAllMappings@InputPlugInGamepadNullifyAllMappings
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._readArray
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[8]
popz.i
exit.i

:[9]
push.i [function]gml_Script_InputPlugInGamepadNullifyAllMappings
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGamepadNullifyAllMappings
popz.v

:[end]