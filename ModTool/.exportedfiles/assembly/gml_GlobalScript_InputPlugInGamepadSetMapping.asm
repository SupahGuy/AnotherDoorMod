:[0]
b [4]

> gml_Script_InputPlugInGamepadSetMapping (locals=1, argc=3)
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
push.v arg.argument2
pushi.e -7
push.v arg.argument1
push.i 32769
sub.i.v
conv.v.i
pop.v.v [array]self._readArray
exit.i

:[4]
push.i [function]gml_Script_InputPlugInGamepadSetMapping
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGamepadSetMapping
popz.v

:[end]