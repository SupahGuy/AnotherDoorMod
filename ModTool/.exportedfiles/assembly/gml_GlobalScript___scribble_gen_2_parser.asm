:[0]
b [629]

> gml_Script___scribble_gen_2_parser (locals=105, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._command_tag_lookup_accelerator_map
call.i gml_Script___scribble_system(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__useHandleParse
pop.v.v static._useHandleParse
push.v static._system
pushi.e -9
push.v [stacktop]self.__effects_map
pop.v.v static._effects_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__effects_slash_map
pop.v.v static._effects_slash_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__typewriter_events_map
pop.v.v static._typewriter_events_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__external_sprite_map
pop.v.v static._external_sprite_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__external_sound_map
pop.v.v static._external_sound_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__macros_map
pop.v.v static._macros_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__buffer_a
pop.v.v static._string_buffer
push.v static._system
pushi.e -9
push.v [stacktop]self.__buffer_b
pop.v.v static._other_string_buffer
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colors_struct
push.v static._system
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state
push.v static._system
pushi.e -9
push.v [stacktop]self.__state
pushi.e -9
push.v [stacktop]self.__sprite_whitelist_map
pop.v.v static._sprite_whitelist_map
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__glyph_data
pop.v.v static._glyph_data_struct
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__bidi_map
pop.v.v static._global_glyph_bidi_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__arabic_join_next_map
pop.v.v static._arabic_join_next_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__arabic_join_prev_map
pop.v.v static._arabic_join_prev_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__arabic_isolated_map
pop.v.v static._arabic_isolated_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__arabic_initial_map
pop.v.v static._arabic_initial_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__arabic_medial_map
pop.v.v static._arabic_medial_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__arabic_final_map
pop.v.v static._arabic_final_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__thai_base_map
pop.v.v static._thai_base_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__thai_base_descender_map
pop.v.v static._thai_base_descender_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__thai_base_ascender_map
pop.v.v static._thai_base_ascender_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__thai_top_map
pop.v.v static._thai_top_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__thai_lower_map
pop.v.v static._thai_lower_map
push.v static._glyph_data_struct
pushi.e -9
push.v [stacktop]self.__thai_upper_map
pop.v.v static._thai_upper_map

:[3]
push.v static._command_tag_lookup_accelerator_map
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
call.i ds_map_create(argc=0)
pop.v.v static._command_tag_lookup_accelerator_map
pushi.e 0
conv.i.v
push.s ""@61
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "/"@573
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "/font"@3423
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "/f"@3424
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "/colour"@3425
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "/color"@3426
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "/c"@3427
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "/alpha"@3428
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "/a"@3429
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "/scale"@3430
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "/s"@3431
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "/page"@3432
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "scale"@2140
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "scaleStack"@3433
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 10
conv.i.v
push.s "alpha"@3434
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 11
conv.i.v
push.s "fa_left"@3435
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 12
conv.i.v
push.s "fa_center"@3436
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 12
conv.i.v
push.s "fa_centre"@3437
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 13
conv.i.v
push.s "fa_right"@3438
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
push.s "fa_top"@3439
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 15
conv.i.v
push.s "fa_middle"@3440
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 16
conv.i.v
push.s "fa_bottom"@3441
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 17
conv.i.v
push.s "pin_left"@2098
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 18
conv.i.v
push.s "pin_center"@2100
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 18
conv.i.v
push.s "pin_centre"@2099
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 19
conv.i.v
push.s "pin_right"@2101
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 20
conv.i.v
push.s "fa_justify"@2105
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "nbsp"@3442
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "&nbsp"@3443
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "nbsp;"@3444
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "&nbsp;"@3445
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 22
conv.i.v
push.s "cycle"@3446
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 23
conv.i.v
push.s "/cycle"@3447
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 24
conv.i.v
push.s "r"@3448
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 24
conv.i.v
push.s "/b"@3449
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 24
conv.i.v
push.s "/i"@3450
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 24
conv.i.v
push.s "/bi"@3451
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 25
conv.i.v
push.s "b"@3452
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 26
conv.i.v
push.s "i"@3453
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 27
conv.i.v
push.s "bi"@3454
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 28
conv.i.v
push.s "surface"@3455
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 29
conv.i.v
push.s "region"@3456
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 30
conv.i.v
push.s "/region"@3457
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 31
conv.i.v
push.s "zwsp"@3458
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 32
conv.i.v
push.s "typistSound"@3459
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 33
conv.i.v
push.s "typistSoundPerChar"@3460
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 34
conv.i.v
push.s "r2l"@3461
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 35
conv.i.v
push.s "l2r"@3462
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 36
conv.i.v
push.s "indent"@3463
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 37
conv.i.v
push.s "/indent"@3464
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 38
conv.i.v
push.s "offset"@3215
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 39
conv.i.v
push.s "offsetPop"@3465
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 40
conv.i.v
push.s "texture"@3167
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 41
conv.i.v
push.s "pin_top"@2102
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 42
conv.i.v
push.s "pin_middle"@2103
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v
pushi.e 43
conv.i.v
push.s "pin_bottom"@2104
conv.s.v
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_set(argc=3)
popz.v

:[5]
push.v static._generator_state
pushi.e -9
pushenv [7]

:[6]
push.v builtin.__glyph_grid
pop.v.v local._glyph_grid
push.v builtin.__word_grid
pop.v.v local._word_grid
push.v builtin.__control_grid
pop.v.v local._control_grid
push.v builtin.__vbuff_pos_grid
pop.v.v local._vbuff_pos_grid
push.v builtin.__element
pop.v.v local._element

:[7]
popenv [6]
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__text
pop.v.v local._element_text
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__starting_colour
pop.v.v local._starting_colour
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__starting_halign
pop.v.v local._starting_halign
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__starting_valign
pop.v.v local._starting_valign
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__ignore_command_tags
pop.v.v local._ignore_commands
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__pre_scale
pop.v.v local._pre_scale
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__starting_font
pop.v.v local._starting_font
pushloc.v local._starting_font
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
push.s "The default font has not been set\nCheck that you've added fonts to Scribble (scribble_font_add() / scribble_font_add_from_sprite() etc.)"@3473
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[9]
pushloc.v local._starting_font
call.i gml_Script_scribble_font_get_remap(argc=1)
pop.v.v local._starting_font
pushloc.v local._starting_font
pop.v.v local._font_name
pushloc.v local._element_text
call.i @@This@@(argc=0)
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__preprocessorFunc
chknullish.e
bf [11]

:[10]
popz.v
push.v static._system
pushi.e -9
push.v [stacktop]self.__defaultPreprocessorFunc

:[11]
callv.v 1
chknullish.e
bf [13]

:[12]
popz.v
pushloc.v local._element_text

:[13]
pop.v.v local._element_text
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._element_text
pushi.e 11
conv.i.v
push.v static._string_buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
push.v static._string_buffer
call.i buffer_write(argc=3)
popz.v
push.v static._string_buffer
call.i buffer_tell(argc=1)
pop.v.v local._buffer_length
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__overall_bidi
pop.v.v local._overall_bidi
pushloc.v local._overall_bidi
push.l 4
cmp.l.v NEQ
bf [15]

:[14]
pushloc.v local._overall_bidi
push.l 6
cmp.l.v NEQ
b [16]

:[15]
push.e 0

:[16]
bf [46]

:[17]
pushi.e 0
pop.v.b local._in_tag
pushi.e 0
pop.v.b local._state_command_tag_flipflop
pushloc.v local._element_text
call.i string_byte_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [40]

:[18]
push.v static._string_buffer
call.i gml_Script___scribble_buffer_read_unicode(argc=1)
pop.v.v local._glyph_ord
pushloc.v local._glyph_ord
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
b [40]

:[20]
pushloc.v local._in_tag
conv.v.b
bf [24]

:[21]
pushloc.v local._glyph_ord
pushi.e 93
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.b local._in_tag

:[23]
b [39]

:[24]
pushloc.v local._glyph_ord
pushi.e 91
cmp.i.v EQ
bf [26]

:[25]
pushloc.v local._ignore_commands
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [33]

:[28]
push.v static._string_buffer
call.i buffer_tell(argc=1)
push.v static._string_buffer
call.i gml_Script___scribble_buffer_peek_unicode(argc=2)
pushi.e 91
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.b local._state_command_tag_flipflop
b [33]

:[30]
pushloc.v local._state_command_tag_flipflop
conv.v.b
bf [32]

:[31]
pushi.e 0
pop.v.b local._state_command_tag_flipflop
b [33]

:[32]
pushi.e 1
pop.v.b local._in_tag
b [39]

:[33]
pushloc.v local._glyph_ord
push.v static._global_glyph_bidi_map
call.i ds_map_find_value(argc=2)
pop.v.v local._bidi
pushloc.v local._bidi
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [35]

:[34]
push.l 4
pop.v.l local._bidi

:[35]
pushloc.v local._bidi
push.l 4
cmp.l.v EQ
bf [37]

:[36]
pushloc.v local._bidi
pop.v.v local._overall_bidi
b [40]

:[37]
pushloc.v local._bidi
push.l 6
cmp.l.v GTE
bf [39]

:[38]
push.l 6
pop.v.l local._overall_bidi
b [40]

:[39]
pushi.e 1
sub.i.i
dup.i 0
bt [18]

:[40]
popz.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._overall_bidi
push.l 4
cmp.l.v NEQ
bf [42]

:[41]
pushloc.v local._overall_bidi
push.l 6
cmp.l.v NEQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
push.l 4
pop.v.l local._overall_bidi

:[45]
pushloc.v local._overall_bidi
push.v static._generator_state
pushi.e -9
pop.v.v [stacktop]self.__overall_bidi

:[46]
pushloc.v local._element_text
call.i string_length(argc=1)
pushi.e 2
add.i.v
pop.v.v local._element_expected_text_length
pushloc.v local._glyph_grid
call.i ds_grid_width(argc=1)
pushloc.v local._element_expected_text_length
cmp.v.v LT
bf [48]

:[47]
push.l 20
conv.l.v
pushloc.v local._element_expected_text_length
pushloc.v local._glyph_grid
call.i ds_grid_resize(argc=3)
popz.v

:[48]
pushloc.v local._word_grid
call.i ds_grid_width(argc=1)
pushloc.v local._element_expected_text_length
cmp.v.v LT
bf [50]

:[49]
push.l 20
conv.l.v
pushloc.v local._element_expected_text_length
pushloc.v local._word_grid
call.i ds_grid_resize(argc=3)
popz.v

:[50]
pushloc.v local._vbuff_pos_grid
call.i ds_grid_width(argc=1)
pushloc.v local._element_expected_text_length
cmp.v.v LT
bf [52]

:[51]
push.l 20
conv.l.v
pushloc.v local._element_expected_text_length
pushloc.v local._vbuff_pos_grid
call.i ds_grid_resize(argc=3)
popz.v

:[52]
pushbltn.v builtin.undefined
pop.v.v local._tag_start
pushi.e 0
pop.v.i local._tag_parameter_count
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._tag_parameters
push.s ""@61
pop.v.s local._tag_command_name
pushi.e 0
pop.v.i local._tag_open_count
pushi.e 0
pop.v.i local._glyph_count
pushi.e 0
pop.v.i local._glyph_ord
pushi.e 0
pop.v.i local._glyph_prev
pushi.e 0
pop.v.i local._glyph_prev_prev
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushi.e 0
pop.v.i local._control_count
pushi.e 0
pop.v.b local._skip_write
pushi.e 0
pop.v.i local._state_effect_flags
push.l 4278190080
pushloc.v local._starting_colour
conv.v.l
or.l.l
pop.v.l local._state_colour
pushloc.v local._starting_halign
pop.v.v local._state_halign
pushi.e 0
pop.v.b local._state_command_tag_flipflop
pushloc.v local._pre_scale
pop.v.v local._state_scale
pushi.e 0
pop.v.i local._state_scale_start_glyph
pushi.e 0
pop.v.i local._state_halign_offset
pushi.e 0
pop.v.i local._state_valign_offset
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._offset_data_array
push.l 1
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [54]

:[53]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[54]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [56]

:[55]
popz.v
pushloc.v local._starting_valign

:[56]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [58]

:[57]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
ret.v

:[58]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[59]
pushi.e 1
bf [614]

:[60]
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pop.v.v local._glyph_ord
pushloc.v local._glyph_ord
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
b [614]

:[62]
pushloc.v local._glyph_ord
conv.v.l
pushi.e 224
and.i.l
pushi.e 192
cmp.i.l EQ
bf [64]

:[63]
pushloc.v local._glyph_ord
conv.v.l
pushi.e 31
and.i.l
pushi.e 6
conv.i.l
shl.l.l
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
conv.v.l
pushi.e 63
and.i.l
or.l.l
pop.v.l local._glyph_ord
b [68]

:[64]
pushloc.v local._glyph_ord
conv.v.l
pushi.e 240
and.i.l
pushi.e 224
cmp.i.l EQ
bf [66]

:[65]
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pop.v.v local._glyph_ord_b
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pop.v.v local._glyph_ord_c
pushloc.v local._glyph_ord
conv.v.l
pushi.e 15
and.i.l
pushi.e 12
conv.i.l
shl.l.l
pushloc.v local._glyph_ord_b
conv.v.l
pushi.e 63
and.i.l
pushi.e 6
conv.i.l
shl.l.l
or.l.l
pushloc.v local._glyph_ord_c
conv.v.l
pushi.e 63
and.i.l
or.l.l
pop.v.l local._glyph_ord
b [68]

:[66]
pushloc.v local._glyph_ord
conv.v.l
pushi.e 248
and.i.l
pushi.e 240
cmp.i.l EQ
bf [68]

:[67]
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pop.v.v local._glyph_ord_b
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pop.v.v local._glyph_ord_c
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pop.v.v local._glyph_ord_d
pushloc.v local._glyph_ord
conv.v.l
pushi.e 7
and.i.l
pushi.e 18
conv.i.l
shl.l.l
pushloc.v local._glyph_ord_b
conv.v.l
pushi.e 63
and.i.l
pushi.e 12
conv.i.l
shl.l.l
or.l.l
pushloc.v local._glyph_ord_c
conv.v.l
pushi.e 63
and.i.l
pushi.e 6
conv.i.l
shl.l.l
or.l.l
pushloc.v local._glyph_ord_d
conv.v.l
pushi.e 63
and.i.l
or.l.l
pop.v.l local._glyph_ord
b [68]

:[68]
pushloc.v local._tag_start
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [407]

:[69]
pushloc.v local._glyph_ord
pushi.e 93
cmp.i.v EQ
bf [400]

:[70]
push.v local._tag_open_count
push.e 1
sub.i.v
pop.v.v local._tag_open_count
pushloc.v local._tag_open_count
pushi.e 0
cmp.i.v LTE
bf [399]

:[71]
push.v local._tag_parameter_count
push.e 1
add.i.v
pop.v.v local._tag_parameter_count
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._string_buffer
call.i buffer_poke(argc=4)
popz.v
pushloc.v local._tag_start
pushi.e 0
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._tag_parameter_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [73]

:[72]
pushi.e 11
conv.i.v
push.v static._string_buffer
call.i buffer_read(argc=2)
pushloc.v local._tag_parameters
call.i array_push(argc=2)
popz.v
pushi.e 1
sub.i.i
dup.i 0
bt [72]

:[73]
popz.i
pushbltn.v builtin.undefined
pop.v.v local._tag_start
pushi.e -7
pushi.e 0
push.v [array]self._tag_parameters
pop.v.v local._tag_command_name
pushbltn.v builtin.undefined
pop.v.v local._new_halign
pushbltn.v builtin.undefined
pop.v.v local._new_valign
pushloc.v local._tag_command_name
push.v static._command_tag_lookup_accelerator_map
call.i ds_map_find_value(argc=2)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [117]

:[74]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [128]

:[75]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [137]

:[76]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [138]

:[77]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [139]

:[78]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [142]

:[79]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [143]

:[80]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [149]

:[81]
dup.v 0
pushi.e 38
cmp.i.v EQ
bt [155]

:[82]
dup.v 0
pushi.e 39
cmp.i.v EQ
bt [162]

:[83]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [168]

:[84]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [169]

:[85]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [170]

:[86]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [171]

:[87]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [172]

:[88]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [173]

:[89]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [174]

:[90]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [175]

:[91]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [176]

:[92]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [177]

:[93]
dup.v 0
pushi.e 41
cmp.i.v EQ
bt [178]

:[94]
dup.v 0
pushi.e 42
cmp.i.v EQ
bt [179]

:[95]
dup.v 0
pushi.e 43
cmp.i.v EQ
bt [180]

:[96]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [181]

:[97]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [182]

:[98]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [188]

:[99]
dup.v 0
pushi.e 34
cmp.i.v EQ
bt [189]

:[100]
dup.v 0
pushi.e 35
cmp.i.v EQ
bt [190]

:[101]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [191]

:[102]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [204]

:[103]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [205]

:[104]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [219]

:[105]
dup.v 0
pushi.e 26
cmp.i.v EQ
bt [231]

:[106]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [243]

:[107]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [255]

:[108]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [259]

:[109]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [262]

:[110]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [263]

:[111]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [267]

:[112]
dup.v 0
pushi.e 36
cmp.i.v EQ
bt [274]

:[113]
dup.v 0
pushi.e 37
cmp.i.v EQ
bt [275]

:[114]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [276]

:[115]
b [277]

:[116]
b [382]

:[117]
pushloc.v local._state_scale
pushi.e 1
cmp.i.v NEQ
bf [119]

:[118]
pushloc.v local._state_scale
push.l 9
conv.l.v
pushloc.v local._glyph_count
push.l 2
conv.l.v
pushloc.v local._state_scale_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_multiply_region(argc=6)
popz.v

:[119]
pushloc.v local._glyph_count
pop.v.v local._state_scale_start_glyph
pushloc.v local._font_name
pushloc.v local._starting_font
cmp.v.v NEQ
bf [127]

:[120]
pushloc.v local._starting_font
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [122]

:[121]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[122]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [124]

:[123]
popz.v
pushloc.v local._starting_valign

:[124]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [126]

:[125]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[126]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[127]
pushi.e 0
pop.v.i local._state_effect_flags
pushloc.v local._pre_scale
pop.v.v local._state_scale
push.l 4278190080
pushloc.v local._starting_colour
conv.v.l
or.l.l
pop.v.l local._state_colour
push.l 3
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[128]
pushloc.v local._font_name
pushloc.v local._starting_font
cmp.v.v NEQ
bf [136]

:[129]
pushloc.v local._starting_font
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [131]

:[130]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[131]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [133]

:[132]
popz.v
pushloc.v local._starting_valign

:[133]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [135]

:[134]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[135]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[136]
b [382]

:[137]
pushloc.v local._state_colour
conv.v.l
push.l 4278190080
and.l.l
pushloc.v local._starting_colour
conv.v.l
or.l.l
pop.v.l local._state_colour
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[138]
push.l 4278190080
pushloc.v local._state_colour
conv.v.l
or.l.l
pop.v.l local._state_colour
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[139]
pushloc.v local._state_scale
pushi.e 1
cmp.i.v NEQ
bf [141]

:[140]
pushloc.v local._state_scale
push.l 9
conv.l.v
pushloc.v local._glyph_count
push.l 2
conv.l.v
pushloc.v local._state_scale_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_multiply_region(argc=6)
popz.v

:[141]
pushloc.v local._glyph_count
pop.v.v local._state_scale_start_glyph
pushloc.v local._pre_scale
pop.v.v local._state_scale
b [382]

:[142]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 0
pop.v.i local._glyph_prev
b [382]

:[143]
pushloc.v local._tag_parameter_count
pushi.e 1
cmp.i.v LTE
bf [145]

:[144]
push.s "Not enough parameters for [scale] tag!"@3521
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [148]

:[145]
pushloc.v local._state_scale
pushi.e 1
cmp.i.v NEQ
bf [147]

:[146]
pushloc.v local._state_scale
push.l 9
conv.l.v
pushloc.v local._glyph_count
push.l 2
conv.l.v
pushloc.v local._state_scale_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_multiply_region(argc=6)
popz.v

:[147]
pushloc.v local._glyph_count
pop.v.v local._state_scale_start_glyph
pushloc.v local._pre_scale
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
mul.v.v
pop.v.v local._state_scale

:[148]
b [382]

:[149]
pushloc.v local._tag_parameter_count
pushi.e 1
cmp.i.v LTE
bf [151]

:[150]
push.s "Not enough parameters for [scaleStack] tag!"@3522
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [154]

:[151]
pushloc.v local._state_scale
pushi.e 1
cmp.i.v NEQ
bf [153]

:[152]
pushloc.v local._state_scale
push.l 9
conv.l.v
pushloc.v local._glyph_count
push.l 2
conv.l.v
pushloc.v local._state_scale_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_multiply_region(argc=6)
popz.v

:[153]
pushloc.v local._glyph_count
pop.v.v local._state_scale_start_glyph
push.v local._state_scale
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
mul.v.v
pop.v.v local._state_scale

:[154]
b [382]

:[155]
pushloc.v local._tag_parameter_count
pushi.e 1
cmp.i.v GT
bf [157]

:[156]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
b [158]

:[157]
pushi.e 0
conv.i.v

:[158]
pop.v.v local._offset_dx
pushloc.v local._tag_parameter_count
pushi.e 2
cmp.i.v GT
bf [160]

:[159]
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
call.i real(argc=1)
b [161]

:[160]
pushi.e 0
conv.i.v

:[161]
pop.v.v local._offset_dy
pushloc.v local._offset_dy
pushloc.v local._offset_dx
pushloc.v local._glyph_count
pushloc.v local._offset_data_array
call.i array_push(argc=4)
popz.v
b [382]

:[162]
pushloc.v local._glyph_count
pushi.e 0
cmp.i.v GT
bf [164]

:[163]
pushloc.v local._offset_data_array
call.i array_length(argc=1)
pushi.e 3
cmp.i.v GTE
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
pushloc.v local._offset_data_array
call.i array_pop(argc=1)
pop.v.v local._offset_dy
pushloc.v local._offset_data_array
call.i array_pop(argc=1)
pop.v.v local._offset_dx
pushloc.v local._offset_data_array
call.i array_pop(argc=1)
pop.v.v local._offset_start
pushloc.v local._offset_dx
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 2
conv.l.v
pushloc.v local._offset_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._offset_dy
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 3
conv.l.v
pushloc.v local._offset_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[167]
b [382]

:[168]
pushi.e 255
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
call.i clamp(argc=3)
mul.v.i
call.i floor(argc=1)
conv.v.l
pushi.e 24
conv.i.l
shl.l.l
pushloc.v local._state_colour
conv.v.l
push.i 16777215
and.i.l
or.l.l
pop.v.l local._state_colour
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[169]
pushi.e 0
pop.v.i local._new_halign
b [382]

:[170]
pushi.e 1
pop.v.i local._new_halign
b [382]

:[171]
pushi.e 2
pop.v.i local._new_halign
b [382]

:[172]
pushi.e 0
pop.v.i local._new_valign
b [382]

:[173]
pushi.e 1
pop.v.i local._new_valign
b [382]

:[174]
pushi.e 2
pop.v.i local._new_valign
b [382]

:[175]
pushi.e 3
pop.v.i local._new_halign
b [382]

:[176]
pushi.e 4
pop.v.i local._new_halign
b [382]

:[177]
pushi.e 5
pop.v.i local._new_halign
b [382]

:[178]
pushi.e 3
pop.v.i local._new_valign
b [382]

:[179]
pushi.e 4
pop.v.i local._new_valign
b [382]

:[180]
pushi.e 5
pop.v.i local._new_valign
b [382]

:[181]
pushi.e 6
pop.v.i local._new_halign
b [382]

:[182]
pushloc.v local._tag_parameters
call.i array_length(argc=1)
pushi.e 2
cmp.i.v EQ
bf [184]

:[183]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
b [185]

:[184]
pushi.e 1
conv.i.v

:[185]
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [187]

:[186]
pushi.e 160
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_space_width
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 160
pop.v.i local._glyph_prev
pushi.e 1
sub.i.i
dup.i 0
bt [186]

:[187]
popz.i
b [382]

:[188]
pushi.e 8203
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 0
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 8203
pop.v.i local._glyph_prev
b [382]

:[189]
pushi.e 8207
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 8207
pop.v.i local._glyph_prev
b [382]

:[190]
pushi.e 8206
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 8206
pop.v.i local._glyph_prev
b [382]

:[191]
pushloc.v local._tag_parameter_count
pushi.e 1
cmp.i.v GT
bf [193]

:[192]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
pushi.e 1
conv.i.v
call.i max(argc=2)
b [194]

:[193]
pushi.e 0
conv.i.v

:[194]
pop.v.v local._cycle_r
pushloc.v local._tag_parameter_count
pushi.e 2
cmp.i.v GT
bf [196]

:[195]
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
call.i real(argc=1)
pushi.e 1
conv.i.v
call.i max(argc=2)
b [197]

:[196]
pushi.e 0
conv.i.v

:[197]
pop.v.v local._cycle_g
pushloc.v local._tag_parameter_count
pushi.e 3
cmp.i.v GT
bf [199]

:[198]
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
call.i real(argc=1)
pushi.e 1
conv.i.v
call.i max(argc=2)
b [200]

:[199]
pushi.e 0
conv.i.v

:[200]
pop.v.v local._cycle_b
pushloc.v local._tag_parameter_count
pushi.e 4
cmp.i.v GT
bf [202]

:[201]
pushi.e -7
pushi.e 4
push.v [array]self._tag_parameters
call.i real(argc=1)
pushi.e 1
conv.i.v
call.i max(argc=2)
b [203]

:[202]
pushi.e 0
conv.i.v

:[203]
pop.v.v local._cycle_a
pushloc.v local._state_effect_flags
conv.v.l
pushi.e 1
conv.i.l
push.s "cycle"@3446
conv.s.v
push.v static._effects_map
call.i ds_map_find_value(argc=2)
conv.v.l
shl.l.l
or.l.l
pop.v.l local._state_effect_flags
push.l 3
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_effect_flags
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
push.l 4
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._cycle_a
conv.v.l
pushi.e 24
conv.i.l
shl.l.l
pushloc.v local._cycle_b
conv.v.l
pushi.e 16
conv.i.l
shl.l.l
or.l.l
pushloc.v local._cycle_g
conv.v.l
pushi.e 8
conv.i.l
shl.l.l
or.l.l
pushloc.v local._cycle_r
conv.v.l
or.l.l
conv.l.v
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
pushi.e 1
pop.v.b builtin.__has_animation
b [382]

:[204]
pushloc.v local._state_effect_flags
conv.v.l
not.l
pushi.e 1
conv.i.l
push.s "/cycle"@3447
conv.s.v
push.v static._effects_slash_map
call.i ds_map_find_value(argc=2)
conv.v.l
shl.l.l
or.l.l
not.l
pop.v.l local._state_effect_flags
push.l 3
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_effect_flags
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
push.l 4
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[205]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__style_regular
pop.v.v local._new_font
pushloc.v local._new_font
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [207]

:[206]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "Regular style not set for font \""@3533
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
b [218]

:[207]
pushloc.v local._new_font
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bf [209]

:[208]
push.s "\")"@194
conv.s.v
pushloc.v local._font_name
push.s "\" not found (regular style for \""@3534
conv.s.v
pushloc.v local._font_name
push.s "Font \""@3182
conv.s.v
call.i gml_Script___scribble_trace(argc=5)
popz.v
b [218]

:[209]
pushloc.v local._new_font
call.i gml_Script_scribble_font_get_remap(argc=1)
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [211]

:[210]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[211]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [213]

:[212]
popz.v
pushloc.v local._starting_valign

:[213]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [215]

:[214]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[215]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
pushloc.v local._state_scale
pushi.e 1
cmp.i.v NEQ
bf [217]

:[216]
pushloc.v local._state_scale
push.l 9
conv.l.v
pushloc.v local._glyph_count
push.l 2
conv.l.v
pushloc.v local._state_scale_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_multiply_region(argc=6)
popz.v

:[217]
pushloc.v local._glyph_count
pop.v.v local._state_scale_start_glyph

:[218]
b [382]

:[219]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__style_bold
pop.v.v local._new_font
pushloc.v local._new_font
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [221]

:[220]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "Bold style not set for font \""@3535
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
b [230]

:[221]
pushloc.v local._new_font
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bf [223]

:[222]
push.s "\")"@194
conv.s.v
pushloc.v local._font_name
push.s "\" not found (bold style for \""@3536
conv.s.v
pushloc.v local._font_name
push.s "Font \""@3182
conv.s.v
call.i gml_Script___scribble_trace(argc=5)
popz.v
b [230]

:[223]
pushloc.v local._new_font
call.i gml_Script_scribble_font_get_remap(argc=1)
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [225]

:[224]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[225]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [227]

:[226]
popz.v
pushloc.v local._starting_valign

:[227]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [229]

:[228]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[229]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[230]
b [382]

:[231]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__style_italic
pop.v.v local._new_font
pushloc.v local._new_font
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [233]

:[232]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "Italic style not set for font \""@3537
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
b [242]

:[233]
pushloc.v local._new_font
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bf [235]

:[234]
push.s "\")"@194
conv.s.v
pushloc.v local._font_name
push.s "\" not found (italic style for \""@3538
conv.s.v
pushloc.v local._font_name
push.s "Font \""@3182
conv.s.v
call.i gml_Script___scribble_trace(argc=5)
popz.v
b [242]

:[235]
pushloc.v local._new_font
call.i gml_Script_scribble_font_get_remap(argc=1)
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [237]

:[236]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[237]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [239]

:[238]
popz.v
pushloc.v local._starting_valign

:[239]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [241]

:[240]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[241]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[242]
b [382]

:[243]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__style_bold_italic
pop.v.v local._new_font
pushloc.v local._new_font
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [245]

:[244]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "Bold-Italic style not set for font \""@3539
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
b [254]

:[245]
pushloc.v local._new_font
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
not.b
bf [247]

:[246]
push.s "\")"@194
conv.s.v
pushloc.v local._font_name
push.s "\" not found (bold-italic style for \""@3540
conv.s.v
pushloc.v local._font_name
push.s "Font \""@3182
conv.s.v
call.i gml_Script___scribble_trace(argc=5)
popz.v
b [254]

:[247]
pushloc.v local._new_font
call.i gml_Script_scribble_font_get_remap(argc=1)
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [249]

:[248]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[249]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [251]

:[250]
popz.v
pushloc.v local._starting_valign

:[251]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [253]

:[252]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[253]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[254]
b [382]

:[255]
push.v static._useHandleParse
conv.v.b
bf [257]

:[256]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i handle_parse(argc=1)
pop.v.v local._surface
b [258]

:[257]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._surface

:[258]
pushloc.v local._surface
call.i surface_get_width(argc=1)
pop.v.v local._surface_w
pushloc.v local._surface
call.i surface_get_height(argc=1)
pop.v.v local._surface_h
pushi.e -2
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign_offset
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_valign_offset
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._surface_w
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._surface_h
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._surface_h
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._surface_w
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 9
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._surface
call.i gml_Script___scribble_surface_get_material(argc=1)
push.l 10
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 11
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 12
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 14
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e -2
pop.v.i local._glyph_prev
b [382]

:[259]
pushloc.v local._tag_parameters
call.i array_length(argc=1)
pushi.e 2
cmp.i.v NEQ
bf [261]

:[260]
push.s "[region] tags must contain a name e.g. [region,This is a region]"@3546
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[261]
push.l 5
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[262]
push.l 5
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[263]
pushloc.v local._tag_parameters
call.i array_length(argc=1)
pushi.e 5
cmp.i.v NEQ
bf [265]

:[264]
push.s "[typistSound] tags must use the same number of arguments as .sound()"@3547
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
b [266]

:[265]
push.l 0
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tag_parameters
push.s "__scribble_typist_sound__"@3049
conv.s.v
push.i [function]gml_Script___scribble_class_event
conv.i.v
call.i @@NewGMLObject@@(argc=3)
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[266]
b [382]

:[267]
pushloc.v local._tag_parameters
call.i array_length(argc=1)
pushi.e 4
cmp.i.v NEQ
bf [269]

:[268]
pushloc.v local._tag_parameters
call.i array_length(argc=1)
pushi.e 5
cmp.i.v NEQ
b [270]

:[269]
push.e 0

:[270]
bf [272]

:[271]
push.s "[typistSoundPerChar] tags must use the same number of arguments as .sound_per_char()"@3548
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
b [273]

:[272]
push.l 0
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tag_parameters
push.s "__scribble_typist_sound_per_char__"@3050
conv.s.v
push.i [function]gml_Script___scribble_class_event
conv.i.v
call.i @@NewGMLObject@@(argc=3)
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count

:[273]
b [382]

:[274]
push.l 7
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[275]
push.l 8
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushbltn.v builtin.undefined
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [382]

:[276]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._tex_index
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._tex_x
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._tex_y
pushi.e -7
pushi.e 4
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._tex_w
pushi.e -7
pushi.e 5
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._tex_h
pushloc.v local._tex_index
call.i texture_get_texel_width(argc=1)
pop.v.v local._texture_tw
pushloc.v local._tex_index
call.i texture_get_texel_height(argc=1)
pop.v.v local._texture_th
pushloc.v local._tex_x
pushloc.v local._texture_tw
mul.v.v
pop.v.v local._u0
pushloc.v local._tex_y
pushloc.v local._texture_th
mul.v.v
pop.v.v local._v0
pushloc.v local._tex_x
pushloc.v local._tex_w
add.v.v
pushloc.v local._texture_tw
mul.v.v
pop.v.v local._u1
pushloc.v local._tex_y
pushloc.v local._tex_h
add.v.v
pushloc.v local._texture_th
mul.v.v
pop.v.v local._v1
pushi.e -3
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign_offset
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_valign_offset
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tex_w
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tex_h
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tex_h
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tex_w
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 9
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tex_index
call.i gml_Script___scribble_texture_get_material(argc=1)
push.l 10
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._u0
push.l 11
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._u1
push.l 12
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._v0
push.l 13
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._v1
push.l 14
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e -3
pop.v.i local._glyph_prev
b [382]

:[277]
pushloc.v local._tag_command_name
push.v static._effects_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [279]

:[278]
pushloc.v local._state_effect_flags
conv.v.l
pushi.e 1
conv.i.l
pushloc.v local._tag_command_name
push.v static._effects_map
call.i ds_map_find_value(argc=2)
conv.v.l
shl.l.l
or.l.l
pop.v.l local._state_effect_flags
push.l 3
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_effect_flags
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
pushi.e 1
pop.v.b builtin.__has_animation
b [381]

:[279]
pushloc.v local._tag_command_name
push.v static._effects_slash_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [281]

:[280]
pushloc.v local._state_effect_flags
conv.v.l
not.l
pushi.e 1
conv.i.l
pushloc.v local._tag_command_name
push.v static._effects_slash_map
call.i ds_map_find_value(argc=2)
conv.v.l
shl.l.l
or.l.l
not.l
pop.v.l local._state_effect_flags
push.l 3
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_effect_flags
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[281]
pushloc.v local._tag_command_name
push.v static._colors_struct
call.i variable_struct_exists(argc=2)
conv.v.b
bf [283]

:[282]
pushloc.v local._state_colour
conv.v.l
push.l 4278190080
and.l.l
pushloc.v local._tag_command_name
push.v static._colors_struct
call.i variable_struct_get(argc=2)
conv.v.l
push.i 16777215
and.i.l
or.l.l
pop.v.l local._state_colour
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[283]
pushloc.v local._tag_command_name
push.v static._typewriter_events_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [285]

:[284]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._tag_parameters
call.i array_delete(argc=3)
popz.v
push.l 0
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tag_parameters
pushloc.v local._tag_command_name
push.i [function]gml_Script___scribble_class_event
conv.i.v
call.i @@NewGMLObject@@(argc=3)
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[285]
pushloc.v local._tag_command_name
push.v static._macros_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [310]

:[286]
pushloc.v local._tag_command_name
push.v static._macros_map
call.i ds_map_find_value(argc=2)
pop.v.v local._function
push.s ""@61
pop.v.s local._macro_result
pushloc.v local._tag_parameter_count
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [297]

:[287]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [298]

:[288]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [299]

:[289]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [300]

:[290]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [301]

:[291]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [302]

:[292]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [303]

:[293]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [304]

:[294]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [305]

:[295]
b [306]

:[296]
b [307]

:[297]
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 0
pop.v.v local._macro_result
b [307]

:[298]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 1
pop.v.v local._macro_result
b [307]

:[299]
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 2
pop.v.v local._macro_result
b [307]

:[300]
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 3
pop.v.v local._macro_result
b [307]

:[301]
pushi.e -7
pushi.e 4
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 4
pop.v.v local._macro_result
b [307]

:[302]
pushi.e -7
pushi.e 5
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 4
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 5
pop.v.v local._macro_result
b [307]

:[303]
pushi.e -7
pushi.e 6
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 5
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 4
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 6
pop.v.v local._macro_result
b [307]

:[304]
pushi.e -7
pushi.e 7
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 6
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 5
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 4
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 7
pop.v.v local._macro_result
b [307]

:[305]
pushi.e -7
pushi.e 8
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 7
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 6
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 5
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 4
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 3
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 8
pop.v.v local._macro_result
b [307]

:[306]
push.s " unsupported"@3556
conv.s.v
pushloc.v local._tag_parameter_count
push.s "Macro argument count "@3557
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
b [307]

:[307]
popz.v
pushloc.v local._macro_result
call.i string(argc=1)
pop.v.v local._macro_result
pushloc.v local._buffer_length
push.v static._string_buffer
call.i buffer_tell(argc=1)
sub.v.v
pop.v.v local._copy_size
pushloc.v local._macro_result
call.i string_byte_length(argc=1)
pushloc.v local._copy_size
add.v.v
pop.v.v local._buffer_length
pushloc.v local._buffer_length
push.v static._other_string_buffer
call.i buffer_get_size(argc=1)
cmp.v.v GT
bf [309]

:[308]
pushloc.v local._buffer_length
push.v static._other_string_buffer
call.i buffer_resize(argc=2)
popz.v

:[309]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._other_string_buffer
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._macro_result
pushi.e 13
conv.i.v
push.v static._other_string_buffer
call.i buffer_write(argc=3)
popz.v
push.v static._other_string_buffer
call.i buffer_tell(argc=1)
push.v static._other_string_buffer
pushloc.v local._copy_size
push.v static._string_buffer
call.i buffer_tell(argc=1)
push.v static._string_buffer
call.i buffer_copy(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._other_string_buffer
call.i buffer_seek(argc=3)
popz.v
push.v static._string_buffer
pop.v.v local._temp
push.v static._other_string_buffer
pop.v.v static._string_buffer
pushloc.v local._temp
pop.v.v static._other_string_buffer
b [381]

:[310]
pushloc.v local._tag_command_name
push.v static._font_data_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [318]

:[311]
pushloc.v local._tag_command_name
call.i gml_Script_scribble_font_get_remap(argc=1)
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
dup.v 0 8
dup.v 0
push.v stacktop.__ensure_texel_data
callv.v 0
popz.v
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__is_krutidev
conv.v.b
bf [313]

:[312]
pushi.e 1
pop.v.b builtin.__has_devanagari

:[313]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._font_kerning_map
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__halign_offset_array
pop.v.v local._font_halign_offset_array
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__valign_offset_array
pop.v.v local._font_valign_offset_array
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
pushi.e -7
push.v builtin.__valign
chknullish.e
bf [315]

:[314]
popz.v
pushloc.v local._starting_valign

:[315]
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset
pushi.e 32
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._space_data_index
pushloc.v local._space_data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [317]

:[316]
push.s "\""@1193
conv.s.v
pushloc.v local._font_name
push.s "The space character is missing from font definition for \""@3509
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
push.v local.$$$$temp$$$$
ret.v

:[317]
push.l 8
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._space_data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_line_height
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender
pop.v.v local._font_ascender
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__ascender_offset
pop.v.v local._font_ascender_offset
push.l 6
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_name
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[318]
pushloc.v local._tag_command_name
push.v static._external_sprite_map
call.i ds_map_find_value(argc=2)
chknullish.e
bf [320]

:[319]
popz.v
pushloc.v local._tag_command_name
call.i asset_get_index(argc=1)

:[320]
pop.v.v local._sprite_index
pushloc.v local._sprite_index
call.i sprite_exists(argc=1)
conv.v.b
not.b
bf [322]

:[321]
push.v static._useHandleParse
conv.v.b
b [323]

:[322]
push.e 0

:[323]
bf [325]

:[324]
pushloc.v local._tag_command_name
call.i handle_parse(argc=1)
pop.v.v local._sprite_index

:[325]
pushloc.v local._sprite_index
call.i sprite_exists(argc=1)
conv.v.b
bf [349]

:[326]
pushloc.v local._sprite_index
call.i sprite_exists(argc=1)
conv.v.b
bf [333]

:[327]
pushi.e 1
conv.i.b
bt [331]

:[328]
pushloc.v local._sprite_index
push.v static._sprite_whitelist_map
call.i ds_map_find_value(argc=2)
chknullish.e
bf [330]

:[329]
popz.v
pushi.e 0
conv.b.v

:[330]
conv.v.b
b [332]

:[331]
push.e 1

:[332]
b [334]

:[333]
push.e 0

:[334]
bf [348]

:[335]
pushloc.v local._sprite_index
call.i sprite_get_width(argc=1)
pop.v.v local._sprite_w
pushloc.v local._sprite_index
call.i sprite_get_height(argc=1)
pop.v.v local._sprite_h
pushi.e 0
pop.v.i local._sprite_y_offset
pushloc.v local._font_line_height
pop.v.v local._sprite_space_h
pushi.e 0
pop.v.i local._image_index
pushi.e 0
pop.v.i local._image_speed
pushloc.v local._tag_parameter_count
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [339]

:[336]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [340]

:[337]
b [341]

:[338]
b [342]

:[339]
pushi.e 0
pop.v.i local._image_index
pushi.e 1
pop.v.i local._image_speed
b [342]

:[340]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._image_index
pushi.e 0
pop.v.i local._image_speed
b [342]

:[341]
pushi.e -7
pushi.e 1
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._image_index
pushi.e -7
pushi.e 2
push.v [array]self._tag_parameters
call.i real(argc=1)
pop.v.v local._image_speed
b [342]

:[342]
popz.v
push.v local._image_speed
pushloc.v local._sprite_index
call.i gml_Script___scribble_image_speed_get(argc=1)
mul.v.v
pop.v.v local._image_speed
pushloc.v local._image_speed
pushi.e 0
cmp.i.v NEQ
bf [344]

:[343]
pushloc.v local._sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
cmp.i.v GT
b [345]

:[344]
push.e 0

:[345]
bf [347]

:[346]
pushi.e 1
pop.v.b builtin.__has_animation

:[347]
pushi.e -1
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign_offset
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_valign_offset
pushloc.v local._sprite_y_offset
add.v.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_w
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_h
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_h
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_w
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 9
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._sprite_index
push.l 17
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._image_index
push.l 18
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._image_speed
push.l 19
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e -1
pop.v.i local._glyph_prev

:[348]
b [381]

:[349]
pushloc.v local._tag_command_name
call.i asset_get_type(argc=1)
pushi.e 2
cmp.i.v EQ
bf [351]

:[350]
push.l 0
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tag_parameters
push.s "__scribble_audio_playback__"@3048
conv.s.v
push.i [function]gml_Script___scribble_class_event
conv.i.v
call.i @@NewGMLObject@@(argc=3)
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[351]
pushloc.v local._tag_command_name
push.v static._external_sound_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [353]

:[352]
push.l 0
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._tag_command_name
push.v static._external_sound_map
call.i ds_map_find_value(argc=2)
call.i @@NewGMLArray@@(argc=1)
push.s "__scribble_audio_playback__"@3048
conv.s.v
push.i [function]gml_Script___scribble_class_event
conv.i.v
call.i @@NewGMLObject@@(argc=3)
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[353]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._tag_command_name
call.i string_copy(argc=3)
pop.v.v local._first_char
pushloc.v local._tag_command_name
call.i string_length(argc=1)
pushi.e 7
cmp.i.v LTE
bf [358]

:[354]
pushloc.v local._first_char
push.s "$"@3570
cmp.s.v EQ
bt [356]

:[355]
pushloc.v local._first_char
push.s "#"@3571
cmp.s.v EQ
b [357]

:[356]
push.e 1

:[357]
b [359]

:[358]
push.e 0

:[359]
bf [364]

:[360]
push.i 28892
conv.i.v
push.i 28752
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
push.s "0x"@3572
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._tag_command_name
call.i string_delete(argc=3)
add.v.s
call.i real(argc=1)
pop.v.v local._decoded_colour
pushloc.v local._decoded_colour
call.i gml_Script_scribble_rgb_to_bgr(argc=1)
pop.v.v local._decoded_colour
b [362]

:[361]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
pushloc.v local._error
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.s "\" could not be converted into a hexcode"@3575
conv.s.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._tag_command_name
call.i string_delete(argc=3)
push.s "Error! \""@3576
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
pushloc.v local._starting_colour
pop.v.v local._decoded_colour
call.i @@finish_catch@@(argc=0)
popz.v
b [363]

:[362]
call.i @@try_unhook@@(argc=0)
popz.v

:[363]
pushloc.v local._state_colour
conv.v.l
push.l 4278190080
and.l.l
pushloc.v local._decoded_colour
conv.v.l
push.i 16777215
and.i.l
or.l.l
pop.v.l local._state_colour
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[364]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local._tag_command_name
call.i string_copy(argc=3)
pop.v.v local._second_char
pushloc.v local._first_char
push.s "d"@3578
cmp.s.v EQ
bt [366]

:[365]
pushloc.v local._first_char
push.s "D"@1457
cmp.s.v EQ
b [367]

:[366]
push.e 1

:[367]
bf [372]

:[368]
pushloc.v local._second_char
push.s "$"@3570
cmp.s.v EQ
bt [370]

:[369]
pushloc.v local._second_char
push.s "#"@3571
cmp.s.v EQ
b [371]

:[370]
push.e 1

:[371]
b [373]

:[372]
push.e 0

:[373]
bf [378]

:[374]
push.i 29496
conv.i.v
push.i 29356
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._tag_command_name
call.i string_delete(argc=3)
call.i real(argc=1)
pop.v.v local._decoded_colour
b [376]

:[375]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
pushloc.v local._error
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.s "\" could not be converted into a decimal"@3579
conv.s.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._tag_command_name
call.i string_delete(argc=3)
push.s "Error! \""@3576
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
pushloc.v local._starting_colour
pop.v.v local._decoded_colour
call.i @@finish_catch@@(argc=0)
popz.v
b [377]

:[376]
call.i @@try_unhook@@(argc=0)
popz.v

:[377]
pushloc.v local._state_colour
conv.v.l
push.l 4278190080
and.l.l
pushloc.v local._decoded_colour
conv.v.l
push.i 16777215
and.i.l
or.l.l
pop.v.l local._state_colour
push.l 2
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_colour
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
b [381]

:[378]
pushloc.v local._tag_command_name
call.i string(argc=1)
pop.v.v local._command_string
pushi.e 1
pop.v.i local._j
pushloc.v local._tag_parameter_count
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [380]

:[379]
push.v local._command_string
push.s ","@570
pushi.e -7
push.v local._j
dup.v 0
push.e 1
add.i.v
pop.v.v local._j
conv.v.i
push.v [array]self._tag_parameters
call.i string(argc=1)
add.v.s
add.v.v
pop.v.v local._command_string
pushi.e 1
sub.i.i
dup.i 0
bt [379]

:[380]
popz.i
push.s "Warning! Unrecognised command tag ["@3581
pushloc.v local._command_string
add.v.s
push.s "]"@571
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v

:[381]
b [382]

:[382]
popz.v
pushloc.v local._new_halign
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [384]

:[383]
pushloc.v local._new_halign
pushloc.v local._state_halign
cmp.v.v NEQ
b [385]

:[384]
push.e 0

:[385]
bf [393]

:[386]
pushloc.v local._new_halign
pop.v.v local._state_halign
pushbltn.v builtin.undefined
pop.v.v local._new_halign
pushi.e -7
pushloc.v local._state_halign
conv.v.i
push.v [array]self._font_halign_offset_array
pop.v.v local._state_halign_offset
push.l 1
conv.l.v
push.l 0
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._state_halign
push.l 1
conv.l.v
pushloc.v local._control_count
pushloc.v local._control_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._control_count
push.e 1
add.i.v
pop.v.v local._control_count
pushloc.v local._glyph_count
pushi.e 0
cmp.i.v GT
bf [393]

:[387]
pushloc.v local._glyph_prev
pushi.e 0
cmp.i.v NEQ
bf [389]

:[388]
pushloc.v local._glyph_prev
pushi.e 10
cmp.i.v NEQ
b [390]

:[389]
push.e 0

:[390]
bf [392]

:[391]
pushi.e 10
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 10
pop.v.i local._glyph_prev
b [393]

:[392]
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set_post(argc=4)
popz.v

:[393]
pushloc.v local._new_valign
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [399]

:[394]
push.v builtin.__valign
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [396]

:[395]
pushloc.v local._new_valign
pop.v.v builtin.__valign
b [398]

:[396]
push.v builtin.__valign
pushloc.v local._new_valign
cmp.v.v NEQ
bf [398]

:[397]
push.s "In-line vertical alignment cannot be set more than once"@3583
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[398]
pushbltn.v builtin.undefined
pop.v.v local._new_valign
pushi.e -7
push.v builtin.__valign
conv.v.i
push.v [array]self._font_valign_offset_array
pop.v.v local._state_valign_offset

:[399]
b [406]

:[400]
pushloc.v local._glyph_ord
pushi.e 44
cmp.i.v EQ
bf [404]

:[401]
pushloc.v local._tag_open_count
pushi.e 1
cmp.i.v EQ
bf [403]

:[402]
push.v local._tag_parameter_count
push.e 1
add.i.v
pop.v.v local._tag_parameter_count
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._string_buffer
call.i buffer_poke(argc=4)
popz.v

:[403]
b [406]

:[404]
pushloc.v local._glyph_ord
pushi.e 91
cmp.i.v EQ
bf [406]

:[405]
push.v local._tag_open_count
push.e 1
add.i.v
pop.v.v local._tag_open_count

:[406]
b [613]

:[407]
pushloc.v local._glyph_ord
pushi.e 91
cmp.i.v EQ
bf [413]

:[408]
pushloc.v local._ignore_commands
conv.v.b
not.b
bf [413]

:[409]
pushloc.v local._state_command_tag_flipflop
conv.v.b
bt [411]

:[410]
push.v static._string_buffer
call.i buffer_tell(argc=1)
push.v static._string_buffer
call.i gml_Script___scribble_buffer_peek_unicode(argc=2)
pushi.e 91
cmp.i.v NEQ
b [412]

:[411]
push.e 1

:[412]
b [414]

:[413]
push.e 0

:[414]
bf [419]

:[415]
pushloc.v local._state_command_tag_flipflop
conv.v.b
bf [417]

:[416]
pushi.e 0
pop.v.b local._state_command_tag_flipflop
b [418]

:[417]
push.v static._string_buffer
call.i buffer_tell(argc=1)
pop.v.v local._tag_start
pushi.e 1
pop.v.i local._tag_open_count
pushi.e 0
pop.v.i local._tag_parameter_count
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._tag_parameters

:[418]
b [613]

:[419]
pushloc.v local._glyph_ord
pushi.e 10
cmp.i.v EQ
bt [424]

:[420]
pushi.e 0
bf [422]

:[421]
pushloc.v local._glyph_ord
pushi.e 35
cmp.i.v EQ
b [423]

:[422]
push.e 0

:[423]
b [425]

:[424]
push.e 1

:[425]
bf [427]

:[426]
pushi.e 10
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 10
pop.v.i local._glyph_prev
b [613]

:[427]
pushloc.v local._glyph_ord
pushi.e 9
cmp.i.v EQ
bf [429]

:[428]
pushi.e 9
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 0
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 4
pushloc.v local._font_space_width
mul.v.i
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 4
pushloc.v local._font_space_width
mul.v.i
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 9
pop.v.i local._glyph_prev
b [613]

:[429]
pushloc.v local._glyph_ord
pushi.e 32
cmp.i.v EQ
bf [431]

:[430]
pushi.e 32
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 0
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_space_width
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 32
pop.v.i local._glyph_prev
b [613]

:[431]
pushloc.v local._glyph_ord
pushi.e 160
cmp.i.v EQ
bf [433]

:[432]
pushi.e 160
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_space_width
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_space_width
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 160
pop.v.i local._glyph_prev
b [613]

:[433]
pushloc.v local._glyph_ord
pushi.e 8203
cmp.i.v EQ
bt [439]

:[434]
pushi.e 0
bf [437]

:[435]
push.v builtin.__has_thai
conv.v.b
bf [437]

:[436]
pushloc.v local._glyph_ord
pushi.e 96
cmp.i.v EQ
b [438]

:[437]
push.e 0

:[438]
b [440]

:[439]
push.e 1

:[440]
bf [442]

:[441]
pushi.e 8203
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 0
conv.l.v
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._font_line_height
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushi.e 8203
pop.v.i local._glyph_prev
b [613]

:[442]
pushi.e 0
bf [444]

:[443]
pushloc.v local._glyph_ord
pushi.e 8230
cmp.i.v EQ
b [445]

:[444]
push.e 0

:[445]
bf [449]

:[446]
pushloc.v local._buffer_length
push.v static._string_buffer
call.i buffer_tell(argc=1)
sub.v.v
pop.v.v local._copy_size
pushi.e 3
pushloc.v local._copy_size
add.v.i
pop.v.v local._buffer_length
pushloc.v local._buffer_length
push.v static._other_string_buffer
call.i buffer_get_size(argc=1)
cmp.v.v GT
bf [448]

:[447]
pushloc.v local._buffer_length
push.v static._other_string_buffer
call.i buffer_resize(argc=2)
popz.v

:[448]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._other_string_buffer
call.i buffer_seek(argc=3)
popz.v
push.s "..."@3584
conv.s.v
pushi.e 13
conv.i.v
push.v static._other_string_buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 3
conv.i.v
push.v static._other_string_buffer
pushloc.v local._copy_size
push.v static._string_buffer
call.i buffer_tell(argc=1)
push.v static._string_buffer
call.i buffer_copy(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._other_string_buffer
call.i buffer_seek(argc=3)
popz.v
push.v static._string_buffer
pop.v.v local._temp
push.v static._other_string_buffer
pop.v.v static._string_buffer
pushloc.v local._temp
pop.v.v static._other_string_buffer
b [613]

:[449]
pushloc.v local._glyph_ord
pushi.e 32
cmp.i.v GT
bf [613]

:[450]
pushloc.v local._glyph_ord
pop.v.v local._glyph_write
pushloc.v local._glyph_ord
pop.v.v local._glyph_joiner
pushloc.v local._glyph_write
pushi.e 1536
cmp.i.v GTE
bf [452]

:[451]
pushloc.v local._glyph_write
pushi.e 1791
cmp.i.v LTE
b [453]

:[452]
push.e 0

:[453]
bf [505]

:[454]
pushi.e 1
pop.v.b builtin.__has_arabic
push.v static._string_buffer
call.i buffer_tell(argc=1)
pop.v.v local._buffer_offset
pushloc.v local._buffer_offset
push.v static._string_buffer
call.i gml_Script___scribble_buffer_peek_unicode(argc=2)
pop.v.v local._glyph_next
pushloc.v local._glyph_write
pushi.e 1604
cmp.i.v EQ
bf [466]

:[455]
pushbltn.v builtin.undefined
pop.v.v local._glyph_replacement
pushloc.v local._glyph_next
dup.v 0
pushi.e 1570
cmp.i.v EQ
bt [460]

:[456]
dup.v 0
pushi.e 1571
cmp.i.v EQ
bt [461]

:[457]
dup.v 0
pushi.e 1573
cmp.i.v EQ
bt [462]

:[458]
dup.v 0
pushi.e 1575
cmp.i.v EQ
bt [463]

:[459]
b [464]

:[460]
push.i 65269
pop.v.i local._glyph_replacement
b [464]

:[461]
push.i 65271
pop.v.i local._glyph_replacement
b [464]

:[462]
push.i 65273
pop.v.i local._glyph_replacement
b [464]

:[463]
push.i 65275
pop.v.i local._glyph_replacement
b [464]

:[464]
popz.v
pushloc.v local._glyph_replacement
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [466]

:[465]
pushloc.v local._glyph_replacement
pop.v.v local._glyph_write
pushloc.v local._glyph_replacement
pop.v.v local._glyph_joiner
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._buffer_offset
push.v static._string_buffer
call.i gml_Script___scribble_buffer_peek_unicode(argc=2)
pop.v.v local._glyph_next

:[466]
pushloc.v local._glyph_next
pushi.e 1611
cmp.i.v GTE
bf [468]

:[467]
pushloc.v local._glyph_next
pushi.e 1618
cmp.i.v LTE
b [469]

:[468]
push.e 0

:[469]
bf [471]

:[470]
push.v local._buffer_offset
pushi.e 2
add.i.v
pop.v.v local._buffer_offset
pushloc.v local._buffer_offset
push.v static._string_buffer
call.i gml_Script___scribble_buffer_peek_unicode(argc=2)
pop.v.v local._glyph_next
b [466]

:[471]
pushbltn.v builtin.undefined
pop.v.v local._new_glyph
pushloc.v local._glyph_prev_arabic_join_next
conv.v.b
bf [476]

:[472]
pushloc.v local._glyph_next
push.v static._arabic_join_prev_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [474]

:[473]
pushloc.v local._glyph_write
push.v static._arabic_medial_map
call.i ds_map_find_value(argc=2)
pop.v.v local._new_glyph
b [475]

:[474]
pushloc.v local._glyph_write
push.v static._arabic_final_map
call.i ds_map_find_value(argc=2)
pop.v.v local._new_glyph

:[475]
b [479]

:[476]
pushloc.v local._glyph_next
push.v static._arabic_join_prev_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [478]

:[477]
pushloc.v local._glyph_write
push.v static._arabic_initial_map
call.i ds_map_find_value(argc=2)
pop.v.v local._new_glyph
b [479]

:[478]
pushloc.v local._glyph_write
push.v static._arabic_isolated_map
call.i ds_map_find_value(argc=2)
pop.v.v local._new_glyph

:[479]
pushloc.v local._new_glyph
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [481]

:[480]
pushloc.v local._new_glyph
pop.v.v local._glyph_write

:[481]
pushloc.v local._glyph_ord
pushi.e 1611
cmp.i.v LT
bt [483]

:[482]
pushloc.v local._glyph_ord
pushi.e 1618
cmp.i.v GT
b [484]

:[483]
push.e 1

:[484]
bf [486]

:[485]
pushloc.v local._glyph_joiner
push.v static._arabic_join_next_map
call.i ds_map_find_value(argc=2)
pop.v.v local._glyph_prev_arabic_join_next

:[486]
pushloc.v local._glyph_write
call.i floor(argc=1)
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [488]

:[487]
push.s "Couldn't find glyph data for character code "@3592
pushloc.v local._glyph_write
call.i string(argc=1)
add.v.s
push.s " ("@3593
add.s.v
pushloc.v local._glyph_write
call.i chr(argc=1)
add.v.v
push.s ") in font \""@3594
add.s.v
pushloc.v local._font_name
call.i string(argc=1)
add.v.v
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 63
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index

:[488]
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [490]

:[489]
push.s "Couldn't find \"missing character\" glyph data, character code 63 (?) in font \""@3595
pushloc.v local._font_name
call.i string(argc=1)
add.v.s
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [493]

:[490]
push.l 0
conv.l.v
pushloc.v local._glyph_count
push.l 15
conv.l.v
pushloc.v local._data_index
push.l 1
conv.l.v
pushloc.v local._data_index
pushloc.v local._font_glyph_data_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_write
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pushloc.v local._glyph_prev
conv.v.l
push.i 65535
and.i.l
or.l.l
conv.l.v
pushloc.v local._font_kerning_map
call.i ds_map_find_value(argc=2)
pop.v.v local._kerning
pushloc.v local._kerning
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [492]

:[491]
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._kerning
push.l 9
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.v
add.v.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[492]
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_halign_offset
add.v.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_valign_offset
add.v.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushloc.v local._glyph_write
pop.v.v local._glyph_prev

:[493]
pushloc.v local._glyph_prev
pushi.e 1617
cmp.i.v EQ
bf [501]

:[494]
pushloc.v local._glyph_prev_prev
pushi.e 1604
cmp.i.v EQ
bt [499]

:[495]
pushloc.v local._glyph_prev_prev
push.i 65245
cmp.i.v EQ
bt [499]

:[496]
pushloc.v local._glyph_prev_prev
push.i 65246
cmp.i.v EQ
bt [499]

:[497]
pushloc.v local._glyph_prev_prev
push.i 65248
cmp.i.v EQ
bt [499]

:[498]
pushloc.v local._glyph_prev_prev
push.i 65247
cmp.i.v EQ
b [500]

:[499]
push.e 1

:[500]
b [502]

:[501]
push.e 0

:[502]
bf [504]

:[503]
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.d 0.17
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.d
sub.v.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[504]
b [611]

:[505]
pushi.e 0
pop.v.b local._glyph_prev_arabic_join_next
pushloc.v local._glyph_write
pushi.e 2304
cmp.i.v GTE
bf [507]

:[506]
pushloc.v local._glyph_write
pushi.e 2431
cmp.i.v LTE
b [508]

:[507]
push.e 0

:[508]
bf [510]

:[509]
pushi.e 1
pop.v.b builtin.__has_devanagari
pushloc.v local._glyph_write
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushloc.v local._glyph_write
pop.v.v local._glyph_prev
b [611]

:[510]
pushloc.v local._glyph_write
pushi.e 3584
cmp.i.v GTE
bf [512]

:[511]
pushloc.v local._glyph_write
pushi.e 3711
cmp.i.v LTE
b [513]

:[512]
push.e 0

:[513]
bf [599]

:[514]
pushi.e 1
pop.v.b builtin.__has_thai
pushloc.v local._glyph_write
push.v static._thai_top_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [516]

:[515]
pushloc.v local._glyph_count
pushi.e 1
cmp.i.v GTE
b [517]

:[516]
push.e 0

:[517]
bf [561]

:[518]
pushloc.v local._glyph_prev
pop.v.v local._base
pushloc.v local._base
push.v static._thai_lower_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [520]

:[519]
pushloc.v local._glyph_count
pushi.e 2
cmp.i.v GTE
b [521]

:[520]
push.e 0

:[521]
bf [523]

:[522]
pushloc.v local._glyph_prev_prev
pop.v.v local._base

:[523]
pushloc.v local._base
push.v static._thai_base_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [560]

:[524]
push.v static._string_buffer
call.i buffer_tell(argc=1)
push.v static._string_buffer
call.i gml_Script___scribble_buffer_peek_unicode(argc=2)
pop.v.v local._glyph_next
pushloc.v local._glyph_next
pushi.e 3635
cmp.i.v EQ
bt [526]

:[525]
pushloc.v local._glyph_next
pushi.e 3661
cmp.i.v EQ
b [527]

:[526]
push.e 1

:[527]
pop.v.b local._followingNikhahit
pushloc.v local._base
push.v static._thai_base_ascender_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [553]

:[528]
pushloc.v local._followingNikhahit
conv.v.b
bf [546]

:[529]
push.v local._glyph_write
push.i 59595
add.i.v
pop.v.v local._glyph_write
pushloc.v local._glyph_write
call.i floor(argc=1)
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [531]

:[530]
push.s "Couldn't find glyph data for character code "@3592
pushloc.v local._glyph_write
call.i string(argc=1)
add.v.s
push.s " ("@3593
add.s.v
pushloc.v local._glyph_write
call.i chr(argc=1)
add.v.v
push.s ") in font \""@3594
add.s.v
pushloc.v local._font_name
call.i string(argc=1)
add.v.v
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 63
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index

:[531]
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [533]

:[532]
push.s "Couldn't find \"missing character\" glyph data, character code 63 (?) in font \""@3595
pushloc.v local._font_name
call.i string(argc=1)
add.v.s
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [536]

:[533]
push.l 0
conv.l.v
pushloc.v local._glyph_count
push.l 15
conv.l.v
pushloc.v local._data_index
push.l 1
conv.l.v
pushloc.v local._data_index
pushloc.v local._font_glyph_data_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_write
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pushloc.v local._glyph_prev
conv.v.l
push.i 65535
and.i.l
or.l.l
conv.l.v
pushloc.v local._font_kerning_map
call.i ds_map_find_value(argc=2)
pop.v.v local._kerning
pushloc.v local._kerning
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [535]

:[534]
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._kerning
push.l 9
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.v
add.v.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[535]
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_halign_offset
add.v.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_valign_offset
add.v.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushloc.v local._glyph_write
pop.v.v local._glyph_prev

:[536]
push.i 63249
pop.v.i local._glyph_write
pushloc.v local._glyph_next
pushi.e 3635
cmp.i.v EQ
bf [545]

:[537]
pushloc.v local._glyph_write
call.i floor(argc=1)
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [539]

:[538]
push.s "Couldn't find glyph data for character code "@3592
pushloc.v local._glyph_write
call.i string(argc=1)
add.v.s
push.s " ("@3593
add.s.v
pushloc.v local._glyph_write
call.i chr(argc=1)
add.v.v
push.s ") in font \""@3594
add.s.v
pushloc.v local._font_name
call.i string(argc=1)
add.v.v
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 63
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index

:[539]
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [541]

:[540]
push.s "Couldn't find \"missing character\" glyph data, character code 63 (?) in font \""@3595
pushloc.v local._font_name
call.i string(argc=1)
add.v.s
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [544]

:[541]
push.l 0
conv.l.v
pushloc.v local._glyph_count
push.l 15
conv.l.v
pushloc.v local._data_index
push.l 1
conv.l.v
pushloc.v local._data_index
pushloc.v local._font_glyph_data_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_write
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pushloc.v local._glyph_prev
conv.v.l
push.i 65535
and.i.l
or.l.l
conv.l.v
pushloc.v local._font_kerning_map
call.i ds_map_find_value(argc=2)
pop.v.v local._kerning
pushloc.v local._kerning
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [543]

:[542]
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._kerning
push.l 9
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.v
add.v.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[543]
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_halign_offset
add.v.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_valign_offset
add.v.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushloc.v local._glyph_write
pop.v.v local._glyph_prev

:[544]
pushi.e 3634
pop.v.i local._glyph_write

:[545]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v static._string_buffer
call.i buffer_seek(argc=3)
popz.v
pushi.e 1
pop.v.b local._skip_write
b [552]

:[546]
push.v local._glyph_write
push.i 59581
add.i.v
pop.v.v local._glyph_write
pushloc.v local._glyph_count
pushi.e 2
cmp.i.v GTE
bf [549]

:[547]
pushloc.v local._glyph_prev
push.v static._thai_upper_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [549]

:[548]
pushloc.v local._glyph_prev
push.v static._thai_base_ascender_map
call.i ds_map_find_value(argc=2)
conv.v.b
b [550]

:[549]
push.e 0

:[550]
bf [552]

:[551]
push.v local._glyph_write
push.i 59595
add.i.v
pop.v.v local._glyph_write

:[552]
b [560]

:[553]
pushloc.v local._followingNikhahit
conv.v.b
not.b
bf [560]

:[554]
push.v local._glyph_write
push.i 59586
add.i.v
pop.v.v local._glyph_write
pushloc.v local._glyph_count
pushi.e 2
cmp.i.v GTE
bf [557]

:[555]
pushloc.v local._glyph_prev
push.v static._thai_upper_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [557]

:[556]
pushloc.v local._glyph_prev
push.v static._thai_base_ascender_map
call.i ds_map_find_value(argc=2)
conv.v.b
b [558]

:[557]
push.e 0

:[558]
bf [560]

:[559]
push.v local._glyph_write
push.i 59595
add.i.v
pop.v.v local._glyph_write

:[560]
b [598]

:[561]
pushloc.v local._glyph_write
push.v static._thai_upper_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [564]

:[562]
pushloc.v local._glyph_count
pushi.e 0
cmp.i.v GT
bf [564]

:[563]
pushloc.v local._glyph_prev
push.v static._thai_base_ascender_map
call.i ds_map_find_value(argc=2)
conv.v.b
b [565]

:[564]
push.e 0

:[565]
bf [582]

:[566]
pushloc.v local._glyph_write
dup.v 0
pushi.e 3633
cmp.i.v EQ
bt [574]

:[567]
dup.v 0
pushi.e 3636
cmp.i.v EQ
bt [575]

:[568]
dup.v 0
pushi.e 3637
cmp.i.v EQ
bt [576]

:[569]
dup.v 0
pushi.e 3638
cmp.i.v EQ
bt [577]

:[570]
dup.v 0
pushi.e 3639
cmp.i.v EQ
bt [578]

:[571]
dup.v 0
pushi.e 3661
cmp.i.v EQ
bt [579]

:[572]
dup.v 0
pushi.e 3655
cmp.i.v EQ
bt [580]

:[573]
b [581]

:[574]
push.i 63248
pop.v.i local._glyph_write
b [581]

:[575]
push.i 63233
pop.v.i local._glyph_write
b [581]

:[576]
push.i 63234
pop.v.i local._glyph_write
b [581]

:[577]
push.i 63235
pop.v.i local._glyph_write
b [581]

:[578]
push.i 63236
pop.v.i local._glyph_write
b [581]

:[579]
push.i 63249
pop.v.i local._glyph_write
b [581]

:[580]
push.i 63250
pop.v.i local._glyph_write
b [581]

:[581]
popz.v
b [598]

:[582]
pushloc.v local._glyph_write
push.v static._thai_lower_map
call.i ds_map_find_value(argc=2)
conv.v.b
bf [585]

:[583]
pushloc.v local._glyph_count
pushi.e 0
cmp.i.v GT
bf [585]

:[584]
pushloc.v local._glyph_prev
push.v static._thai_base_descender_map
call.i ds_map_find_value(argc=2)
conv.v.b
b [586]

:[585]
push.e 0

:[586]
bf [588]

:[587]
push.v local._glyph_write
push.i 59616
add.i.v
pop.v.v local._glyph_write
b [598]

:[588]
push.v static._string_buffer
call.i buffer_tell(argc=1)
push.v static._string_buffer
call.i gml_Script___scribble_buffer_peek_unicode(argc=2)
pop.v.v local._glyph_next
pushloc.v local._glyph_write
pushi.e 3597
cmp.i.v EQ
bf [590]

:[589]
pushloc.v local._glyph_next
push.v static._thai_lower_map
call.i ds_map_find_value(argc=2)
conv.v.b
b [591]

:[590]
push.e 0

:[591]
bf [593]

:[592]
push.i 63247
pop.v.i local._glyph_write
b [598]

:[593]
pushloc.v local._glyph_write
pushi.e 3600
cmp.i.v EQ
bf [595]

:[594]
pushloc.v local._glyph_next
push.v static._thai_lower_map
call.i ds_map_find_value(argc=2)
conv.v.b
b [596]

:[595]
push.e 0

:[596]
bf [598]

:[597]
push.i 63232
pop.v.i local._glyph_write

:[598]
b [604]

:[599]
pushloc.v local._glyph_write
pushi.e 1424
cmp.i.v GTE
bf [601]

:[600]
pushloc.v local._glyph_write
pushi.e 1535
cmp.i.v LTE
b [602]

:[601]
push.e 0

:[602]
bf [604]

:[603]
pushi.e 1
pop.v.b builtin.__has_hebrew

:[604]
pushloc.v local._glyph_write
call.i floor(argc=1)
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [606]

:[605]
push.s "Couldn't find glyph data for character code "@3592
pushloc.v local._glyph_write
call.i string(argc=1)
add.v.s
push.s " ("@3593
add.s.v
pushloc.v local._glyph_write
call.i chr(argc=1)
add.v.v
push.s ") in font \""@3594
add.s.v
pushloc.v local._font_name
call.i string(argc=1)
add.v.v
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 63
conv.i.v
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index

:[606]
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [608]

:[607]
push.s "Couldn't find \"missing character\" glyph data, character code 63 (?) in font \""@3595
pushloc.v local._font_name
call.i string(argc=1)
add.v.s
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [611]

:[608]
push.l 0
conv.l.v
pushloc.v local._glyph_count
push.l 15
conv.l.v
pushloc.v local._data_index
push.l 1
conv.l.v
pushloc.v local._data_index
pushloc.v local._font_glyph_data_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_write
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pushloc.v local._glyph_prev
conv.v.l
push.i 65535
and.i.l
or.l.l
conv.l.v
pushloc.v local._font_kerning_map
call.i ds_map_find_value(argc=2)
pop.v.v local._kerning
pushloc.v local._kerning
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [610]

:[609]
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._kerning
push.l 9
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
mul.v.v
add.v.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[610]
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_halign_offset
add.v.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._state_valign_offset
add.v.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushloc.v local._glyph_prev
pop.v.v local._glyph_prev_prev
pushloc.v local._glyph_write
pop.v.v local._glyph_prev

:[611]
pushloc.v local._glyph_ord
pushi.e 91
cmp.i.v EQ
bf [613]

:[612]
pushi.e 1
pop.v.b local._state_command_tag_flipflop

:[613]
b [59]

:[614]
pushloc.v local._state_scale
pushi.e 1
cmp.i.v NEQ
bf [616]

:[615]
pushloc.v local._state_scale
push.l 9
conv.l.v
pushloc.v local._glyph_count
push.l 2
conv.l.v
pushloc.v local._state_scale_start_glyph
pushloc.v local._glyph_grid
call.i ds_grid_multiply_region(argc=6)
popz.v

:[616]
pushloc.v local._glyph_count
pop.v.v local._state_scale_start_glyph
pushloc.v local._glyph_count
pushi.e 0
cmp.i.v GT
bf [619]

:[617]
pushloc.v local._offset_data_array
call.i array_length(argc=1)
pushi.e 3
cmp.i.v GTE
bf [619]

:[618]
pushloc.v local._offset_data_array
call.i array_pop(argc=1)
pop.v.v local._offset_dy
pushloc.v local._offset_data_array
call.i array_pop(argc=1)
pop.v.v local._offset_dx
pushloc.v local._offset_data_array
call.i array_pop(argc=1)
pop.v.v local._offset_start
pushloc.v local._offset_dx
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 2
conv.l.v
pushloc.v local._offset_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._offset_dy
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
push.l 3
conv.l.v
pushloc.v local._offset_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
b [617]

:[619]
push.v builtin.__has_arabic
conv.v.b
bt [621]

:[620]
push.v builtin.__has_hebrew
conv.v.b
b [622]

:[621]
push.e 1

:[622]
bf [624]

:[623]
pushi.e 1
pop.v.b builtin.__has_r2l

:[624]
push.v builtin.__valign
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [626]

:[625]
pushloc.v local._starting_valign
pop.v.v builtin.__valign

:[626]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._overall_bidi
push.l 1
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 5
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 6
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 8
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._control_count
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v static._generator_state
pushi.e -9
pushenv [628]

:[627]
pushloc.v local._glyph_count
pushi.e 1
add.i.v
pop.v.v builtin.__glyph_count
pushloc.v local._control_count
pop.v.v builtin.__control_count

:[628]
popenv [627]
exit.i

:[629]
push.i [function]gml_Script___scribble_gen_2_parser
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_2_parser
popz.v

:[end]