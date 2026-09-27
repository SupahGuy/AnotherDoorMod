:[0]
b [38]

> gml_Script___InputTriggerEffectGamepad (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [37]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
call.i @@This@@(argc=0)
b [7]

> gml_Script__triggerModeMap@anon@178@__InputTriggerEffectGamepad@__InputTriggerEffectGamepad (locals=1, argc=0)
:[3]
call.i ds_map_create(argc=0)
pop.v.v local._map
push.l 0
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.l 2
conv.l.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
conv.i.v
push.l 3
conv.l.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v

:[5]
pushloc.v local._map
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script__triggerModeMap@anon@178@__InputTriggerEffectGamepad@__InputTriggerEffectGamepad
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
callv.v 0
pop.v.v static._triggerModeMap
b [36]

> gml_Script___Apply@anon@898@__InputTriggerEffectGamepad@__InputTriggerEffectGamepad (locals=7, argc=3)
:[8]
isstaticok.e
bt [10]

:[9]
setstatic.e
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._steam_trigger_params
call.i @@NewGMLObject@@(argc=0)
call.i @@NewGMLObject@@(argc=0)
call.i @@NewGMLArray@@(argc=2)
pop.v.v static._command_array

:[10]
pushi.e 1
pop.v.i local._triggerIndex
push.v arg.argument0
push.i 32775
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i local._triggerIndex
b [14]

:[12]
push.v arg.argument0
push.i 32776
cmp.i.v NEQ
bf [14]

:[13]
push.s " not a gamepad trigger"@1917
conv.s.v
push.v arg.argument0
push.s "Value "@1918
conv.s.v
call.i gml_Script_InputPlugInError(argc=3)
popz.v
pushi.e 0
conv.b.v
ret.v

:[14]
push.l 0
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
bf [34]

:[15]
push.v builtin.__device
call.i gml_Script_InputDeviceGetSteamHandle(argc=1)
pop.v.v local._steamHandle
pushi.e 0
conv.i.b
bt [18]

:[16]
push.l 2
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
bt [18]

:[17]
pushloc.v local._steamHandle
pushbltn.v builtin.undefined
cmp.v.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 0
conv.b.v
ret.v

:[21]
push.v arg.argument1
call.i is_struct(argc=1)
conv.v.b
not.b
bf [23]

:[22]
pushi.e 0
conv.b.v
ret.v

:[23]
push.i [variable]__params
conv.i.v
push.v arg.argument1
call.i struct_get_from_hash(argc=2)
call.i is_struct(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 0
conv.b.v
ret.v

:[25]
pushi.e 0
pop.v.i local._left
pushi.e 1
pop.v.i local._right
push.s "command_data"@1919
pop.v.s local._key_data
call.i @@NewGMLObject@@(argc=0)
pushloc.v local._key_data
pushloc.v local._left
push.v static._command_array
call.i @@array_get@@(argc=2)
call.i variable_struct_set(argc=3)
popz.v
call.i @@NewGMLObject@@(argc=0)
pushloc.v local._key_data
pushloc.v local._right
push.v static._command_array
call.i @@array_get@@(argc=2)
call.i variable_struct_set(argc=3)
popz.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__params
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__modeName
call.i string(argc=1)
push.s "_param"@1922
add.s.v
pushloc.v local._key_data
pushloc.v local._triggerIndex
push.v static._command_array
call.i @@array_get@@(argc=2)
call.i variable_struct_get(argc=2)
call.i variable_struct_set(argc=3)
popz.v
push.s "mode"@1923
pop.v.s local._key_mode
pushi.e 0
conv.i.v
pushloc.v local._key_mode
pushloc.v local._left
push.v static._command_array
call.i @@array_get@@(argc=2)
call.i variable_struct_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._key_mode
pushloc.v local._right
push.v static._command_array
call.i @@array_get@@(argc=2)
call.i variable_struct_set(argc=3)
popz.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__mode
push.v builtin._triggerModeMap
call.i ds_map_find_value(argc=2)
pushloc.v local._key_mode
pushloc.v local._triggerIndex
push.v static._command_array
call.i @@array_get@@(argc=2)
call.i variable_struct_set(argc=3)
popz.v
push.i [variable]amplitude
conv.i.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__params
call.i struct_get_from_hash(argc=2)
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [27]

:[26]
push.i [variable]amplitude
conv.i.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__params
call.i struct_get_from_hash(argc=2)
push.v arg.argument2
mul.v.v
push.s "amplitude"@1897
conv.s.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__params
call.i variable_struct_set(argc=3)
popz.v

:[27]
push.i [variable]strength
conv.i.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__params
call.i struct_get_from_hash(argc=2)
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [29]

:[28]
push.i [variable]strength
conv.i.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__params
call.i struct_get_from_hash(argc=2)
push.v arg.argument2
mul.v.v
push.s "strength"@1878
conv.s.v
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__params
call.i variable_struct_set(argc=3)
popz.v

:[29]
push.v static._command_array
push.v static._steam_trigger_params
pushi.e -9
pop.v.v [stacktop]self.command
push.s "trigger_mask"@1926
pop.v.s local._key_trigger_mask
pushloc.v local._triggerIndex
pushloc.v local._left
cmp.v.v EQ
bf [31]

:[30]
pushi.e 1
conv.i.v
pushloc.v local._key_trigger_mask
push.v static._steam_trigger_params
call.i variable_struct_set(argc=3)
popz.v

:[31]
pushloc.v local._triggerIndex
pushloc.v local._right
cmp.v.v EQ
bf [33]

:[32]
pushi.e 2
conv.i.v
pushloc.v local._key_trigger_mask
push.v static._steam_trigger_params
call.i variable_struct_set(argc=3)
popz.v

:[33]
push.v static._steam_trigger_params
pushloc.v local._steamHandle
call.i steam_input_set_dualsense_trigger_effect(argc=2)
ret.v

:[34]
pushi.e 0
conv.b.v
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script___Apply@anon@898@__InputTriggerEffectGamepad@__InputTriggerEffectGamepad
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Apply

:[37]
push.v arg.argument0
pop.v.v builtin.__device
exit.i

:[38]
push.i [function]gml_Script___InputTriggerEffectGamepad
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectGamepad
popz.v

:[end]