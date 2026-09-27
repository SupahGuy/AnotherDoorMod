:[0]
b [12]

> gml_Script_InputTriggerEffectWeapon (locals=0, argc=5)
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
push.v arg.argument4
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.s "\")"@194
conv.s.v
push.v arg.argument4
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.v arg.argument4
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
push.v arg.argument4
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[9]
push.v arg.argument4
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument4
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[11]
pushi.e -16
push.v arg.argument4
conv.v.i
push.v [array]self._playerArray
pushi.e 1
conv.b.v
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script___InputTriggerEffectClassWeapon
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.v arg.argument0
dup.v 3 8
dup.v 0
push.v stacktop.__SetTriggerEffect
callv.v 3
popz.v
exit.i

:[12]
push.i [function]gml_Script_InputTriggerEffectWeapon
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputTriggerEffectWeapon
popz.v

:[end]