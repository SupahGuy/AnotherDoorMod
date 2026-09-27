:[0]
b [10]

> gml_Script___InputTriggerEffectClassOff (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [9]

:[2]
setstatic.e
push.s "off"@1889
pop.v.s static.__modeName
push.l 0
pop.v.l static.__mode
b [5]

> gml_Script___ApplyPS5@anon@230@__InputTriggerEffectClassOff@__InputTriggerEffectClassOff (locals=0, argc=3)
:[3]
push.v arg.argument1
push.v arg.argument0
call.i ps5_gamepad_set_trigger_effect_off(argc=2)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script___ApplyPS5@anon@230@__InputTriggerEffectClassOff@__InputTriggerEffectClassOff
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__ApplyPS5
b [8]

> gml_Script___SteamGetState@anon@393@__InputTriggerEffectClassOff@__InputTriggerEffectClassOff (locals=0, argc=2)
:[6]
push.l 0
conv.l.v
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script___SteamGetState@anon@393@__InputTriggerEffectClassOff@__InputTriggerEffectClassOff
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__SteamGetState

:[9]
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__params
exit.i

:[10]
push.i [function]gml_Script___InputTriggerEffectClassOff
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectClassOff
popz.v

:[end]