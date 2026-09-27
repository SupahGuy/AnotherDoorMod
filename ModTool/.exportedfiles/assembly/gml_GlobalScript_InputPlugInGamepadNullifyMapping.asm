:[0]
b [7]

> gml_Script_InputPlugInGamepadNullifyMapping (locals=1, argc=2)
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
b [6]

> gml_Script_anon@337@InputPlugInGamepadNullifyMapping@InputPlugInGamepadNullifyMapping (locals=0, argc=0)
:[4]
pushi.e 0
conv.i.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_anon@337@InputPlugInGamepadNullifyMapping@InputPlugInGamepadNullifyMapping
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e -7
push.v arg.argument1
push.i 32769
sub.i.v
conv.v.i
pop.v.v [array]self._readArray
exit.i

:[7]
push.i [function]gml_Script_InputPlugInGamepadNullifyMapping
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGamepadNullifyMapping
popz.v

:[end]