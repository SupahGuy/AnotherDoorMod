:[0]
b [6]

> gml_Script_InputVibrateSetStrength (locals=0, argc=2)
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
call.i gml_Script___InputVibrateSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i clamp(argc=3)
pushi.e -16
push.v arg.argument1
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pop.v.v [stacktop]self.__strength
exit.i

:[6]
push.i [function]gml_Script_InputVibrateSetStrength
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVibrateSetStrength
popz.v

:[end]