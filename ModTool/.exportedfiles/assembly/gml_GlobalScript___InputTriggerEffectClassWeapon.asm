:[0]
b [15]

> gml_Script___InputTriggerEffectClassWeapon (locals=0, argc=4)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [14]

:[2]
setstatic.e
push.s "weapon"@1903
pop.v.s static.__modeName
push.l 2
pop.v.l static.__mode
b [5]

> gml_Script___ApplyPS5@anon@549@__InputTriggerEffectClassWeapon@__InputTriggerEffectClassWeapon (locals=0, argc=3)
:[3]
push.i [variable]strength
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
push.v arg.argument2
mul.v.v
push.i [variable]end_position
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
push.i [variable]start_position
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
push.v arg.argument1
push.v arg.argument0
call.i ps5_gamepad_set_trigger_effect_weapon(argc=5)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script___ApplyPS5@anon@549@__InputTriggerEffectClassWeapon@__InputTriggerEffectClassWeapon
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__ApplyPS5
b [13]

> gml_Script___SteamGetState@anon@1044@__InputTriggerEffectClassWeapon@__InputTriggerEffectClassWeapon (locals=1, argc=2)
:[6]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_InputDeviceGetGamepadValue(argc=2)
pop.v.v local._trigger_value
pushloc.v local._trigger_value
push.i [variable]end_position
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
pushi.e 2
add.i.v
push.d 9.9
conv.d.v
call.i min(argc=2)
pushi.e 10
conv.i.d
div.d.v
cmp.v.v GT
bf [9]

:[7]
push.l 5
conv.l.v
ret.v

:[8]
b [11]

:[9]
pushloc.v local._trigger_value
push.i [variable]start_position
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
pushi.e 10
conv.i.d
div.d.v
cmp.v.v GTE
bf [11]

:[10]
push.l 4
conv.l.v
ret.v

:[11]
push.l 3
conv.l.v
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script___SteamGetState@anon@1044@__InputTriggerEffectClassWeapon@__InputTriggerEffectClassWeapon
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__SteamGetState

:[14]
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__params
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
push.v arg.argument1
pushi.e 10
mul.i.v
call.i clamp(argc=3)
push.v builtin.__params
pushi.e -9
pop.v.v [stacktop]self.start_position
pushi.e 8
conv.i.v
push.v arg.argument1
pushi.e 10
mul.i.v
push.v arg.argument2
pushi.e 10
mul.i.v
call.i max(argc=2)
push.v arg.argument2
pushi.e 10
mul.i.v
call.i clamp(argc=3)
push.v builtin.__params
pushi.e -9
pop.v.v [stacktop]self.end_position
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument3
pushi.e 8
mul.i.v
call.i clamp(argc=3)
push.v builtin.__params
pushi.e -9
pop.v.v [stacktop]self.strength
exit.i

:[15]
push.i [function]gml_Script___InputTriggerEffectClassWeapon
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectClassWeapon
popz.v

:[end]