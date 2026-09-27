:[0]
b [6]

> gml_Script_InputPlugInGamepadResetMapping (locals=1, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__genericReadArray
pop.v.v static._genericReadArray

:[3]
push.v arg.argument0
call.i gml_Script___InputGamepadGetReadArray(argc=1)
pop.v.v local._readArray
pushloc.v local._readArray
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
exit.i

:[5]
pushi.e -16
push.v arg.argument1
push.i 32769
sub.i.v
conv.v.i
push.v [array]self._genericReadArray
call.i variable_clone(argc=1)
pushi.e -7
push.v arg.argument1
push.i 32769
sub.i.v
conv.v.i
pop.v.v [array]self._readArray
exit.i

:[6]
push.i [function]gml_Script_InputPlugInGamepadResetMapping
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInGamepadResetMapping
popz.v

:[end]