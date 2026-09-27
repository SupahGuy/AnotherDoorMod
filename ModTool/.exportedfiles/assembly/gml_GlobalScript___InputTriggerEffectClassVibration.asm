:[0]
b [12]

> gml_Script___InputTriggerEffectClassVibration (locals=0, argc=3)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [11]

:[2]
setstatic.e
push.s "vibration"@1895
pop.v.s static.__modeName
push.l 3
pop.v.l static.__mode
b [5]

> gml_Script___ApplyPS5@anon@534@__InputTriggerEffectClassVibration@__InputTriggerEffectClassVibration (locals=0, argc=3)
:[3]
push.i [variable]frequency
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
push.i [variable]amplitude
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
push.v arg.argument2
mul.v.v
push.i [variable]position
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
push.v arg.argument1
push.v arg.argument0
call.i ps5_gamepad_set_trigger_effect_vibration(argc=5)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script___ApplyPS5@anon@534@__InputTriggerEffectClassVibration@__InputTriggerEffectClassVibration
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__ApplyPS5
b [10]

> gml_Script___SteamGetState@anon@1029@__InputTriggerEffectClassVibration@__InputTriggerEffectClassVibration (locals=0, argc=2)
:[6]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_InputDeviceGetGamepadValue(argc=2)
push.i [variable]position
conv.i.v
push.v builtin.__params
call.i struct_get_from_hash(argc=2)
pushi.e 10
conv.i.d
div.d.v
cmp.v.v GTE
bf [8]

:[7]
push.l 7
conv.l.v
ret.v

:[8]
push.l 6
conv.l.v
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script___SteamGetState@anon@1029@__InputTriggerEffectClassVibration@__InputTriggerEffectClassVibration
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__SteamGetState

:[11]
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__params
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
pushi.e 10
mul.i.v
call.i clamp(argc=3)
push.v builtin.__params
pushi.e -9
pop.v.v [stacktop]self.position
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
pushi.e 8
mul.i.v
call.i clamp(argc=3)
push.v builtin.__params
pushi.e -9
pop.v.v [stacktop]self.amplitude
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument2
pushi.e 255
mul.i.v
call.i clamp(argc=3)
push.v builtin.__params
pushi.e -9
pop.v.v [stacktop]self.frequency
exit.i

:[12]
push.i [function]gml_Script___InputTriggerEffectClassVibration
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectClassVibration
popz.v

:[end]