:[0]
call.i gml_Script___scribble_system(argc=0)
popz.v
b [48]

> gml_Script___scribble_system (locals=9, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._system

:[5]
push.v static._system
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [7]

:[6]
push.v static._system
ret.v

:[7]
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
pushenv [46]

:[8]
push.s "Welcome to Scribble Deluxe by Juju Adams! This is version 9.7.3.3, 2026-03-30"@4085
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i buffer_create(argc=3)
pop.v.v builtin.__protection_buffer
call.i ds_map_create(argc=0)
pop.v.v builtin.__protection_map
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v builtin.__protection_grid
push.s "Verbose mode is off, set SCRIBBLE_VERBOSE to <true> to see more information"@4090
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushref.i 134217739
call.i shader_is_compiled(argc=1)
conv.v.b
not.b
bf [10]

:[9]
push.s "Shader failed to compile. Please check your version of GameMaker is compatible\nPlease report this error if it persists"@4092
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[10]
push.s "scribble_fallback_font"@4093
conv.s.v
call.i asset_get_index(argc=1)
call.i font_exists(argc=1)
conv.v.b
not.b
bf [12]

:[11]
push.s "Fallback font was not found. This may indicate that unused assets have been stripped from the project\nPlease untick \"Automatically remove unused assets when compiling\" in Game Options"@4094
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[12]
push.s "scribble_fallback_font"@4093
conv.s.v
call.i asset_get_index(argc=1)
call.i font_get_info(argc=1)
pop.v.v local._fontInfo
push.i [variable]sdfEnabled
conv.i.v
pushloc.v local._fontInfo
call.i struct_get_from_hash(argc=2)
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [14]

:[13]
push.s "Versions of GameMaker without SDF font support are not supported (versions pre-2023.1, including LTS 2022)"@4096
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[14]
push.i 732
conv.i.v
push.i 652
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=0)
b [16]

> gml_Script_anon@2519@__scribble_system@__scribble_system (locals=0, argc=0)
:[15]
call.i gml_Script___scribble_tick(argc=0)
popz.v
exit.i

:[16]
push.i [function]gml_Script_anon@2519@__scribble_system@__scribble_system
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i time_source_create(argc=6)
call.i time_source_start(argc=1)
popz.v
b [18]

:[17]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
pushloc.v local._error
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.s "Versions earlier than GameMaker 2023.1 are not supported"@4099
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
call.i @@finish_catch@@(argc=0)
popz.v
b [19]

:[18]
call.i @@try_unhook@@(argc=0)
popz.v

:[19]
pushi.e 0
pop.v.b builtin.__useHandleParse
push.i 920
conv.i.v
push.i 860
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
pushref.i gml_Script___scribble_system
call.i string(argc=1)
call.i handle_parse(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__useHandleParse
push.s "Using handle_parse() where possible"@4100
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [21]

:[20]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
push.s "handle_parse() not available"@4101
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
call.i @@finish_catch@@(argc=0)
popz.v
b [22]

:[21]
call.i @@try_unhook@@(argc=0)
popz.v

:[22]
pushi.e 1
pop.v.b builtin.__gmMightRemoveUnusedAssets
pushi.e 0
pop.v.i builtin.__gmVersionMajor
pushi.e 0
pop.v.i builtin.__gmVersionMinor
pushi.e 0
pop.v.i builtin.__gmVersionPatch
pushi.e 0
pop.v.i builtin.__gmVersionBuild
push.i 1512
conv.i.v
push.i 1452
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
push.s "2026.0.0.23"@4106
pop.v.s local._workString
pushloc.v local._workString
push.s "."@492
conv.s.v
call.i string_pos(argc=2)
pop.v.v local._pos
pushloc.v local._pos
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local._workString
call.i string_copy(argc=3)
call.i real(argc=1)
pop.v.v builtin.__gmVersionMajor
pushloc.v local._pos
pushi.e 1
conv.i.v
pushloc.v local._workString
call.i string_delete(argc=3)
pop.v.v local._workString
pushloc.v local._workString
push.s "."@492
conv.s.v
call.i string_pos(argc=2)
pop.v.v local._pos
pushloc.v local._pos
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local._workString
call.i string_copy(argc=3)
call.i real(argc=1)
pop.v.v builtin.__gmVersionMinor
pushloc.v local._pos
pushi.e 1
conv.i.v
pushloc.v local._workString
call.i string_delete(argc=3)
pop.v.v local._workString
pushloc.v local._workString
push.s "."@492
conv.s.v
call.i string_pos(argc=2)
pop.v.v local._pos
pushloc.v local._pos
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local._workString
call.i string_copy(argc=3)
call.i real(argc=1)
pop.v.v builtin.__gmVersionPatch
pushloc.v local._pos
pushi.e 1
conv.i.v
pushloc.v local._workString
call.i string_delete(argc=3)
call.i real(argc=1)
pop.v.v builtin.__gmVersionBuild
b [24]

:[23]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
push.s "Warning! Failed to obtain runtime version"@4109
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
call.i @@finish_catch@@(argc=0)
popz.v
b [25]

:[24]
call.i @@try_unhook@@(argc=0)
popz.v

:[25]
push.v builtin.__gmVersionMajor
pushi.e 2025
cmp.i.v GTE
bt [33]

:[26]
push.v builtin.__gmVersionMajor
pushi.e 2024
cmp.i.v EQ
bf [31]

:[27]
push.v builtin.__gmVersionMinor
pushi.e 1100
cmp.i.v GTE
bt [29]

:[28]
push.v builtin.__gmVersionMinor
pushi.e 11
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
b [32]

:[31]
push.e 0

:[32]
b [34]

:[33]
push.e 1

:[34]
pop.v.b builtin.__gmMightRemoveUnusedAssets
call.i gml_Script___scribble_config_colours(argc=0)
popz.v
pushref.i gml_Script___scribble_no_preprocessing
pop.v.v builtin.__defaultPreprocessorFunc
call.i ds_map_create(argc=0)
pop.v.v builtin.__font_data_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__sprite_texture_index_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__sprite_texture_material_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__material_map
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1024
conv.i.v
call.i buffer_create(argc=3)
pop.v.v builtin.__buffer_a
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1024
conv.i.v
call.i buffer_create(argc=3)
pop.v.v builtin.__buffer_b
pushbltn.v builtin.undefined
push.l 21
conv.l.v
call.i array_create(argc=2)
pop.v.v builtin.__anim_properties
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
b [36]

> gml_Script____struct___55@__scribble_system@__scribble_system (locals=0, argc=0)
:[35]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.__frames
push.s "scribble_fallback_font"@4093
pop.v.s self.__default_font
pushi.e 50
pop.v.i self.__blink_on_duration
pushi.e 50
pop.v.i self.__blink_off_duration
pushi.e 0
pop.v.i self.__blink_time_offset
pushi.e 0
pop.v.b self.__shader_anim_desync
pushi.e 0
pop.v.b self.__shader_anim_desync_to_default
pushi.e 0
pop.v.b self.__shader_anim_default
pushi.e 0
pop.v.b self.__shader_anim_disabled
pushi.e 0
pop.v.i self.__sdf_thickness_offset
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.__markdown_styles_struct
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.__sprite_whitelist_map
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.__sound_whitelist_map
exit.i

:[36]
push.i [function]gml_Script____struct___55@__scribble_system@__scribble_system
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___55
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.__state
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
b [38]

> gml_Script____struct___57@__scribble_system@__scribble_system (locals=0, argc=0)
:[37]
call.i @@SetStatic@@(argc=0)
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.__mcache_dict
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.__mcache_name_array
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.__ecache_dict
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.__ecache_array
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.__ecache_weak_array
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.__ecache_name_array
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.__gc_vbuff_refs
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.__gc_vbuff_ids
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.__gc_grid_refs
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.__gc_grid_ids
exit.i

:[38]
push.i [function]gml_Script____struct___57@__scribble_system@__scribble_system
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___57
call.i @@NewGMLObject@@(argc=9)
pop.v.v builtin.__cache_state
push.i [function]gml_Script___scribble_class_generator_state
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v builtin.__generator_state
call.i gml_Script___scribble_glyph_data_initialize(argc=0)
pop.v.v builtin.__glyph_data
call.i gml_Script___scribble_krutidev_lookup_map_initialize(argc=0)
pop.v.v builtin.__krutidev_lookup_map
call.i gml_Script___scribble_krutidev_matra_lookup_map_initialize(argc=0)
pop.v.v builtin.__krutidev_matra_lookup_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__external_sprite_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__external_sound_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__macros_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__typewriter_events_map
pushbltn.v builtin.undefined
push.s "pause"@511
conv.s.v
push.v builtin.__typewriter_events_map
call.i ds_map_set(argc=3)
popz.v
pushbltn.v builtin.undefined
push.s "delay"@3044
conv.s.v
push.v builtin.__typewriter_events_map
call.i ds_map_set(argc=3)
popz.v
pushbltn.v builtin.undefined
push.s "sync"@3045
conv.s.v
push.v builtin.__typewriter_events_map
call.i ds_map_set(argc=3)
popz.v
pushbltn.v builtin.undefined
push.s "speed"@3046
conv.s.v
push.v builtin.__typewriter_events_map
call.i ds_map_set(argc=3)
popz.v
pushbltn.v builtin.undefined
push.s "/speed"@3047
conv.s.v
push.v builtin.__typewriter_events_map
call.i ds_map_set(argc=3)
popz.v
call.i ds_map_create(argc=0)
pop.v.v builtin.__effects_map
call.i ds_map_create(argc=0)
pop.v.v builtin.__effects_slash_map
pushi.e 1
conv.i.v
push.s "wave"@4115
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "shake"@4116
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "rainbow"@4117
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "wobble"@4118
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "pulse"@4119
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "wheel"@4120
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "cycle"@3446
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "jitter"@4121
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 9
conv.i.v
push.s "blink"@4122
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 10
conv.i.v
push.s "slant"@4123
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "/wave"@4124
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "/shake"@4125
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "/rainbow"@4126
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "/wobble"@4127
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "/pulse"@4128
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "/wheel"@4129
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "/cycle"@3447
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "/jitter"@4130
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 9
conv.i.v
push.s "/blink"@4131
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 10
conv.i.v
push.s "/slant"@4132
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "WAVE"@4133
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "SHAKE"@4134
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "RAINBOW"@4135
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "WOBBLE"@4136
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "PULSE"@4137
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "WHEEL"@4138
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "CYCLE"@4139
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "JITTER"@4140
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 9
conv.i.v
push.s "BLINK"@4141
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 10
conv.i.v
push.s "SLANT"@4142
conv.s.v
push.v builtin.__effects_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "/WAVE"@4143
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "/SHAKE"@4144
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "/RAINBOW"@4145
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "/WOBBLE"@4146
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "/PULSE"@4147
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "/WHEEL"@4148
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "/CYCLE"@4149
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "/JITTER"@4150
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 9
conv.i.v
push.s "/BLINK"@4151
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 10
conv.i.v
push.s "/SLANT"@4152
conv.s.v
push.v builtin.__effects_slash_map
call.i ds_map_set(argc=3)
popz.v
call.i ds_map_create(argc=0)
pop.v.v builtin.__font_to_texture_group_map
push.i 4620
conv.i.v
push.i 4524
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
call.i texturegroup_get_names(argc=0)
pop.v.v local._tg_name_array
b [40]

:[39]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
push.s "1.0.0.0"@4155
conv.s.v
push.s "Warning! GameMaker {0} doesn't support `texturegroup_get_names()`. Please consider updating to 2024.8 or later"@4156
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script___scribble_trace(argc=1)
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._tg_name_array
call.i @@finish_catch@@(argc=0)
popz.v
b [41]

:[40]
call.i @@try_unhook@@(argc=0)
popz.v

:[41]
pushi.e 0
pop.v.i local._i
pushloc.v local._tg_name_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [45]

:[42]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._tg_name_array
pop.v.v local._tg_name
pushloc.v local._tg_name
call.i texturegroup_get_fonts(argc=1)
pop.v.v local._font_index_array
pushi.e 0
pop.v.i local._j
pushloc.v local._font_index_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [44]

:[43]
pushloc.v local._tg_name
pushloc.v local._j
pushloc.v local._font_index_array
call.i @@array_get@@(argc=2)
push.v builtin.__font_to_texture_group_map
call.i ds_map_set(argc=3)
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [43]

:[44]
popz.i
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [42]

:[45]
popz.i

:[46]
popenv [8]
call.i gml_Script_scribble_anim_reset(argc=0)
popz.v
call.i gml_Script___scribble_font_add_all_from_bundle(argc=0)
popz.v
push.v static._system
ret.v

:[47]
exit.i

:[48]
push.i [function]gml_Script___scribble_system
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_system
popz.v

:[end]