:[0]
b [6]

> gml_Script_InputTriggerEffectVibration (locals=0, argc=5)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument4

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputTriggerEffectSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray

:[5]
pushi.e -16
push.v arg.argument4
conv.v.i
push.v [array]self._playerArray
pushi.e 1
conv.b.v
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.i [function]gml_Script___InputTriggerEffectClassVibration
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v arg.argument0
dup.v 3 8
dup.v 0
push.v stacktop.__SetTriggerEffect
callv.v 3
popz.v
exit.i

:[6]
push.i [function]gml_Script_InputTriggerEffectVibration
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputTriggerEffectVibration
popz.v

:[end]