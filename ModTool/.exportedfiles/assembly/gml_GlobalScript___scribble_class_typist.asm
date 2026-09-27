:[0]
b [432]

> gml_Script___scribble_class_typist (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [431]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static.__scribble_state
b [5]

> gml_Script_reset@anon@1614@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[3]
pushi.e 0
pop.v.i builtin.__last_page
pushi.e 0
pop.v.i builtin.__last_character
pushi.e 0
pop.v.i builtin.__last_audio_character
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__last_tick_frame
pushi.e 0
pop.v.i builtin.__window_index
push.v builtin.__smoothness
neg.v
pushi.e 6
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.__window_array
pushi.e 0
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.__window_array
pushi.e 0
pop.v.b builtin.__paused
pushi.e 0
pop.v.b builtin.__delay_paused
pushi.e -1
pop.v.i builtin.__delay_end
pushi.e 1
pop.v.i builtin.__inline_speed
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__event_stack
pushi.e 0
pop.v.b builtin.__skip
pushi.e 0
pop.v.b builtin.__drawn_since_skip
call.i @@This@@(argc=0)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_reset@anon@1614@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.reset
b [13]

> gml_Script_in@anon@2307@__scribble_class_typist@__scribble_class_typist (locals=1, argc=2)
:[6]
push.v builtin.__in
pop.v.v local._old_in
pushi.e 1
pop.v.b builtin.__in
pushi.e 0
pop.v.b builtin.__backwards
push.v arg.argument0
pop.v.v builtin.__speed
push.v arg.argument1
pop.v.v builtin.__smoothness
pushi.e 0
pop.v.b builtin.__skip
pushloc.v local._old_in
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [8]

:[7]
pushloc.v local._old_in
conv.v.b
not.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
call.i @@This@@(argc=0)
push.v builtin.reset
callv.v 0
popz.v

:[11]
call.i @@This@@(argc=0)
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_in@anon@2307@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.in
b [23]

> gml_Script_out@anon@2758@__scribble_class_typist@__scribble_class_typist (locals=1, argc=3)
:[14]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.b builtin.argument2

:[16]
push.v builtin.__in
pop.v.v local._old_in
pushi.e 0
pop.v.b builtin.__in
push.v arg.argument2
pop.v.v builtin.__backwards
push.v arg.argument0
pop.v.v builtin.__speed
push.v arg.argument1
pop.v.v builtin.__smoothness
pushi.e 0
pop.v.b builtin.__skip
pushloc.v local._old_in
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [18]

:[17]
pushloc.v local._old_in
conv.v.b
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
call.i @@This@@(argc=0)
push.v builtin.reset
callv.v 0
popz.v

:[21]
call.i @@This@@(argc=0)
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_out@anon@2758@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.out
b [28]

> gml_Script_skip@anon@3152@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[24]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.b builtin.argument0

:[26]
push.v arg.argument0
pop.v.v builtin.__skip
pushi.e 1
pop.v.b builtin.__skip_paused
pushi.e 0
pop.v.b builtin.__drawn_since_skip
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__delay_end
call.i @@This@@(argc=0)
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_skip@anon@3152@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.skip
b [33]

> gml_Script_skip_to_pause@anon@3384@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[29]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.b builtin.argument0

:[31]
push.v arg.argument0
pop.v.v builtin.__skip
pushi.e 0
pop.v.b builtin.__skip_paused
pushi.e 0
pop.v.b builtin.__drawn_since_skip
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__delay_end
call.i @@This@@(argc=0)
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_skip_to_pause@anon@3384@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.skip_to_pause
b [38]

> gml_Script_ignore_delay@anon@3616@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[34]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.b builtin.argument0

:[36]
push.v arg.argument0
pop.v.v builtin.__ignore_delay
call.i @@This@@(argc=0)
ret.v

:[37]
exit.i

:[38]
push.i [function]gml_Script_ignore_delay@anon@3616@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.ignore_delay
b [45]

> gml_Script_sound@anon@3872@__scribble_class_typist@__scribble_class_typist (locals=1, argc=5)
:[39]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.i builtin.argument4

:[41]
push.v arg.argument0
pop.v.v local._sound_array
pushloc.v local._sound_array
call.i is_array(argc=1)
conv.v.b
not.b
bf [43]

:[42]
pushloc.v local._sound_array
call.i @@NewGMLArray@@(argc=1)
pop.v.v local._sound_array

:[43]
pushloc.v local._sound_array
pop.v.v builtin.__sound_array
push.v arg.argument1
pop.v.v builtin.__sound_overlap
push.v arg.argument2
pop.v.v builtin.__sound_pitch_min
push.v arg.argument3
pop.v.v builtin.__sound_pitch_max
push.v arg.argument4
pop.v.v builtin.__sound_gain
pushi.e 0
pop.v.b builtin.__sound_per_char
call.i @@This@@(argc=0)
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_sound@anon@3872@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sound
b [59]

> gml_Script_sound_per_char@anon@4554@__scribble_class_typist@__scribble_class_typist (locals=2, argc=6)
:[46]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [48]

:[47]
pushi.e 1
pop.v.i builtin.argument4

:[48]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [50]

:[49]
pushi.e 0
pop.v.b builtin.argument5

:[50]
push.v arg.argument0
pop.v.v local._sound_array
pushloc.v local._sound_array
call.i is_array(argc=1)
conv.v.b
not.b
bf [52]

:[51]
pushloc.v local._sound_array
call.i @@NewGMLArray@@(argc=1)
pop.v.v local._sound_array

:[52]
pushi.e 1
pop.v.b builtin.__sound_per_char
pushloc.v local._sound_array
pop.v.v builtin.__sound_array
push.v arg.argument1
pop.v.v builtin.__sound_pitch_min
push.v arg.argument2
pop.v.v builtin.__sound_pitch_max
push.v arg.argument4
pop.v.v builtin.__sound_gain
push.v arg.argument5
pop.v.v builtin.__sound_per_char_interrupt
push.v arg.argument3
call.i is_string(argc=1)
conv.v.b
bf [56]

:[53]
pushi.e 1
pop.v.b builtin.__sound_per_char_exception
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__sound_per_char_exception_dict
pushi.e 1
pop.v.i local._i
push.v arg.argument3
call.i string_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [55]

:[54]
pushi.e 1
conv.b.v
pushloc.v local._i
push.v arg.argument3
call.i string_char_at(argc=2)
call.i ord(argc=1)
push.v builtin.__sound_per_char_exception_dict
call.i variable_struct_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [54]

:[55]
popz.i
b [57]

:[56]
pushi.e 0
pop.v.b builtin.__sound_per_char_exception

:[57]
call.i @@This@@(argc=0)
ret.v

:[58]
exit.i

:[59]
push.i [function]gml_Script_sound_per_char@anon@4554@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sound_per_char
b [62]

> gml_Script_function_per_char@anon@5661@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[60]
push.v arg.argument0
pop.v.v builtin.__function_per_char
call.i @@This@@(argc=0)
ret.v

:[61]
exit.i

:[62]
push.i [function]gml_Script_function_per_char@anon@5661@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.function_per_char
b [65]

> gml_Script_function_on_complete@anon@5810@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[63]
push.v arg.argument0
pop.v.v builtin.__function_on_complete
call.i @@This@@(argc=0)
ret.v

:[64]
exit.i

:[65]
push.i [function]gml_Script_function_on_complete@anon@5810@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.function_on_complete
b [68]

> gml_Script_execution_scope@anon@5957@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[66]
push.v arg.argument0
pop.v.v builtin.__function_scope
call.i @@This@@(argc=0)
ret.v

:[67]
exit.i

:[68]
push.i [function]gml_Script_execution_scope@anon@5957@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.execution_scope
b [71]

> gml_Script_pause@anon@6082@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[69]
pushi.e 1
pop.v.b builtin.__paused
call.i @@This@@(argc=0)
ret.v

:[70]
exit.i

:[71]
push.i [function]gml_Script_pause@anon@6082@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.pause
b [76]

> gml_Script_unpause@anon@6193@__scribble_class_typist@__scribble_class_typist (locals=1, argc=0)
:[72]
push.v builtin.__paused
conv.v.b
bf [74]

:[73]
pushi.e -6
push.v builtin.__window_index
conv.v.i
push.v [array]self.__window_array
pop.v.v local._head_pos
push.v builtin.__window_index
pushi.e 2
add.i.v
pushi.e 6
mod.i.v
pop.v.v builtin.__window_index
pushloc.v local._head_pos
pushi.e -6
push.v builtin.__window_index
conv.v.i
pop.v.v [array]self.__window_array
pushloc.v local._head_pos
push.v builtin.__smoothness
sub.v.v
pushi.e -6
push.v builtin.__window_index
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.__window_array

:[74]
pushi.e 0
pop.v.b builtin.__skip
pushi.e 0
pop.v.b builtin.__paused
call.i @@This@@(argc=0)
ret.v

:[75]
exit.i

:[76]
push.i [function]gml_Script_unpause@anon@6193@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.unpause
b [79]

> gml_Script_ease@anon@6876@__scribble_class_typist@__scribble_class_typist (locals=0, argc=7)
:[77]
push.v arg.argument0
pop.v.v builtin.__ease_method
push.v arg.argument1
pop.v.v builtin.__ease_dx
push.v arg.argument2
pop.v.v builtin.__ease_dy
push.v arg.argument3
pop.v.v builtin.__ease_xscale
push.v arg.argument4
pop.v.v builtin.__ease_yscale
push.v arg.argument5
pop.v.v builtin.__ease_rotation
push.v arg.argument6
pop.v.v builtin.__ease_alpha_duration
call.i @@This@@(argc=0)
ret.v

:[78]
exit.i

:[79]
push.i [function]gml_Script_ease@anon@6876@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.ease
b [85]

> gml_Script_character_delay_add@anon@7342@__scribble_class_typist@__scribble_class_typist (locals=3, argc=2)
:[80]
push.v arg.argument0
pop.v.v local._char_1
pushi.e 0
pop.v.i local._char_2
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [83]

:[81]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local._char_1
push.v arg.argument0
call.i string_length(argc=1)
pushi.e 2
cmp.i.v GTE
bf [83]

:[82]
pushi.e 2
conv.i.v
push.v arg.argument0
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local._char_2

:[83]
pushloc.v local._char_1
conv.v.l
pushloc.v local._char_2
conv.v.l
pushi.e 32
conv.i.l
shl.l.l
or.l.l
pop.v.l local._code
pushi.e 1
pop.v.b builtin.__character_delay
push.v arg.argument1
pushloc.v local._code
push.v builtin.__character_delay_dict
call.i variable_struct_set(argc=3)
popz.v
call.i @@This@@(argc=0)
ret.v

:[84]
exit.i

:[85]
push.i [function]gml_Script_character_delay_add@anon@7342@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.character_delay_add
b [91]

> gml_Script_character_delay_remove@anon@7887@__scribble_class_typist@__scribble_class_typist (locals=3, argc=1)
:[86]
push.v arg.argument0
pop.v.v local._char_1
pushi.e 0
pop.v.i local._char_2
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [89]

:[87]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local._char_1
push.v arg.argument0
call.i string_length(argc=1)
pushi.e 2
cmp.i.v GTE
bf [89]

:[88]
pushi.e 2
conv.i.v
push.v arg.argument0
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local._char_2

:[89]
pushloc.v local._char_1
conv.v.l
pushloc.v local._char_2
conv.v.l
pushi.e 32
conv.i.l
shl.l.l
or.l.l
pop.v.l local._code
pushloc.v local._code
push.v builtin.__character_delay_dict
call.i variable_struct_remove(argc=2)
popz.v
call.i @@This@@(argc=0)
ret.v

:[90]
exit.i

:[91]
push.i [function]gml_Script_character_delay_remove@anon@7887@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.character_delay_remove
b [94]

> gml_Script_character_delay_clear@anon@8401@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[92]
pushi.e 0
pop.v.b builtin.__character_delay
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__character_delay_dict
call.i @@This@@(argc=0)
ret.v

:[93]
exit.i

:[94]
push.i [function]gml_Script_character_delay_clear@anon@8401@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.character_delay_clear
b [97]

> gml_Script_get_skip@anon@8622@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[95]
push.v builtin.__skip
ret.v

:[96]
exit.i

:[97]
push.i [function]gml_Script_get_skip@anon@8622@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_skip
b [100]

> gml_Script_get_ignore_delay@anon@8708@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[98]
push.v builtin.__ignore_delay
ret.v

:[99]
exit.i

:[100]
push.i [function]gml_Script_get_ignore_delay@anon@8708@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_ignore_delay
b [131]

> gml_Script_get_state@anon@8795@__scribble_class_typist@__scribble_class_typist (locals=5, argc=0)
:[101]
push.v builtin.__last_element
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [104]

:[102]
push.v builtin.__last_page
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [104]

:[103]
push.v builtin.__last_character
pushbltn.v builtin.undefined
cmp.v.v EQ
b [105]

:[104]
push.e 1

:[105]
bf [107]

:[106]
pushi.e 0
conv.i.v
ret.v

:[107]
push.v builtin.__in
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [109]

:[108]
pushi.e 1
conv.i.v
ret.v

:[109]
push.v builtin.__last_element
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
bf [111]

:[110]
pushi.e 2
conv.i.v
ret.v

:[111]
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [113]

:[112]
pushi.e 2
conv.i.v
ret.v

:[113]
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_page_array
callv.v 0
pop.v.v local._pages_array
pushloc.v local._pages_array
call.i array_length(argc=1)
push.v builtin.__last_page
cmp.v.v LTE
bf [115]

:[114]
pushi.e 1
conv.i.v
ret.v

:[115]
pushi.e -7
push.v builtin.__last_page
conv.v.i
push.v [array]self._pages_array
pop.v.v local._page_data
push.v builtin.__per_line
conv.v.b
bf [117]

:[116]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_count
b [118]

:[117]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count

:[118]
pop.v.v local._max
pushloc.v local._max
pushi.e 0
cmp.i.v LTE
bf [120]

:[119]
pushi.e 1
conv.i.v
ret.v

:[120]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -6
push.v builtin.__window_index
conv.v.i
push.v [array]self.__window_array
pushi.e -6
push.v builtin.__window_index
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.__window_array
push.v builtin.__smoothness
add.v.v
pushloc.v local._max
sub.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
add.v.v
pushloc.v local._max
push.v builtin.__smoothness
add.v.v
div.v.v
call.i clamp(argc=3)
pop.v.v local._t
push.v builtin.__in
conv.v.b
bf [129]

:[121]
push.v builtin.__delay_paused
conv.v.b
bt [123]

:[122]
push.v builtin.__event_stack
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
b [124]

:[123]
push.e 1

:[124]
bf [127]

:[125]
pushloc.v local._t
pushi.e 1
pushi.e 2
call.i math_get_epsilon(argc=0)
mul.v.i
sub.v.i
call.i min(argc=2)
ret.v

:[126]
b [128]

:[127]
pushloc.v local._t
ret.v

:[128]
b [130]

:[129]
pushloc.v local._t
pushi.e 1
add.i.v
ret.v

:[130]
exit.i

:[131]
push.i [function]gml_Script_get_state@anon@8795@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_state
b [134]

> gml_Script_get_delay_paused@anon@10338@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[132]
push.v builtin.__delay_paused
ret.v

:[133]
exit.i

:[134]
push.i [function]gml_Script_get_delay_paused@anon@10338@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_delay_paused
b [137]

> gml_Script_get_paused@anon@10426@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[135]
push.v builtin.__paused
ret.v

:[136]
exit.i

:[137]
push.i [function]gml_Script_get_paused@anon@10426@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_paused
b [142]

> gml_Script_get_position@anon@10510@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[138]
push.v builtin.__in
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [140]

:[139]
pushi.e 0
conv.i.v
ret.v

:[140]
pushi.e -6
push.v builtin.__window_index
conv.v.i
push.v [array]self.__window_array
ret.v

:[141]
exit.i

:[142]
push.i [function]gml_Script_get_position@anon@10510@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_position
b [148]

> gml_Script_get_text_element@anon@10662@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[143]
push.v builtin.__last_element
call.i weak_ref_alive(argc=1)
conv.v.b
bf [145]

:[144]
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
b [146]

:[145]
pushbltn.v builtin.undefined

:[146]
ret.v

:[147]
exit.i

:[148]
push.i [function]gml_Script_get_text_element@anon@10662@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_text_element
b [151]

> gml_Script_get_execution_scope@anon@10807@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[149]
push.v builtin.__function_scope
ret.v

:[150]
exit.i

:[151]
push.i [function]gml_Script_get_execution_scope@anon@10807@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_execution_scope
b [158]

> gml_Script_sync_to_sound@anon@10958@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[152]
push.v arg.argument0
push.i 400000
cmp.i.v LT
bf [154]

:[153]
push.s "Cannot synchronise to a sound asset. Please provide a sound instance (as returned by audio_play_sound())"@3018
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[154]
push.v arg.argument0
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [156]

:[155]
push.s " is not playing\nCannot sync to a stopped sound instance"@3020
conv.s.v
push.v arg.argument0
push.s "Sound instance "@3021
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[156]
pushi.e 0
pop.v.b builtin.__paused
pushi.e 0
pop.v.b builtin.__delay_paused
call.i @@This@@(argc=0)
push.v builtin.__sync_reset
callv.v 0
popz.v
pushi.e 1
pop.v.b builtin.__sync_started
push.v arg.argument0
pop.v.v builtin.__sync_instance
call.i @@This@@(argc=0)
ret.v

:[157]
exit.i

:[158]
push.i [function]gml_Script_sync_to_sound@anon@10958@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sync_to_sound
b [160]

> gml_Script___sync_reset@anon@11629@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[159]
pushi.e 0
pop.v.b builtin.__sync_started
pushbltn.v builtin.undefined
pop.v.v builtin.__sync_instance
pushi.e 0
pop.v.b builtin.__sync_paused
pushbltn.v builtin.infinity
pop.v.v builtin.__sync_pause_end
exit.i

:[160]
push.i [function]gml_Script___sync_reset@anon@11629@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__sync_reset
b [163]

> gml_Script_set_sound_tag_gain@anon@11898@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[161]
push.v arg.argument0
pop.v.v builtin.__sound_tag_gain
call.i @@This@@(argc=0)
ret.v

:[162]
exit.i

:[163]
push.i [function]gml_Script_set_sound_tag_gain@anon@11898@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set_sound_tag_gain
b [166]

> gml_Script_get_sound_tag_gain@anon@12024@__scribble_class_typist@__scribble_class_typist (locals=0, argc=0)
:[164]
push.v builtin.__sound_tag_gain
ret.v

:[165]
exit.i

:[166]
push.i [function]gml_Script_get_sound_tag_gain@anon@12024@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_sound_tag_gain
b [187]

> gml_Script___associate@anon@12184@__scribble_class_typist@__scribble_class_typist (locals=1, argc=1)
:[167]
push.v builtin.__skip
conv.v.b
bf [172]

:[168]
push.v builtin.__last_element
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [170]

:[169]
push.v builtin.__drawn_since_skip
conv.v.b
not.b
b [171]

:[170]
push.e 1

:[171]
b [173]

:[172]
push.e 0

:[173]
pop.v.b local._carry_skip
push.v builtin.__last_element
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [176]

:[174]
push.v builtin.__last_element
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
bt [176]

:[175]
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
push.v arg.argument0
cmp.v.v NEQ
b [177]

:[176]
push.e 1

:[177]
bf [179]

:[178]
call.i @@This@@(argc=0)
push.v builtin.reset
callv.v 0
popz.v
push.v arg.argument0
call.i weak_ref_create(argc=1)
pop.v.v builtin.__last_element
b [183]

:[179]
push.v builtin.__last_element
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
bf [181]

:[180]
push.s "Warning! Typist's target text element has been garbage collected"@3036
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
call.i @@This@@(argc=0)
push.v builtin.reset
callv.v 0
popz.v
push.v arg.argument0
call.i weak_ref_create(argc=1)
pop.v.v builtin.__last_element
b [183]

:[181]
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
pushi.e -9
push.v [stacktop]self.__page
push.v builtin.__last_page
cmp.v.v NEQ
bf [183]

:[182]
call.i @@This@@(argc=0)
push.v builtin.reset
callv.v 0
popz.v

:[183]
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
pushi.e -9
push.v [stacktop]self.__page
pop.v.v builtin.__last_page
pushloc.v local._carry_skip
conv.v.b
bf [185]

:[184]
pushi.e 1
pop.v.b builtin.__skip
pushi.e 0
pop.v.b builtin.__drawn_since_skip

:[185]
call.i @@This@@(argc=0)
ret.v

:[186]
exit.i

:[187]
push.i [function]gml_Script___associate@anon@12184@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__associate
b [267]

> gml_Script___process_event_stack@anon@13324@__scribble_class_typist@__scribble_class_typist (locals=7, argc=3)
:[188]
isstaticok.e
bt [190]

:[189]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__typewriter_events_map
pop.v.v static._typewriter_events_map

:[190]
push.v builtin.__event_stack
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [265]

:[191]
pushi.e -6
pushi.e 0
push.v [array]self.__event_stack
pop.v.v local._event_struct
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.__event_stack
call.i array_delete(argc=3)
popz.v
push.v builtin.__per_line
conv.v.b
bf [193]

:[192]
pushloc.v local._event_struct
pushi.e -9
push.v [stacktop]self.line_index
b [194]

:[193]
pushloc.v local._event_struct
pushi.e -9
push.v [stacktop]self.character_index

:[194]
pop.v.v local._event_position
pushloc.v local._event_struct
pushi.e -9
push.v [stacktop]self.name
pop.v.v local._event_name
pushloc.v local._event_struct
pushi.e -9
push.v [stacktop]self.data
pop.v.v local._event_data
pushloc.v local._event_name
dup.v 0
push.s "pause"@511
cmp.s.v EQ
bt [204]

:[195]
dup.v 0
push.s "delay"@3044
cmp.s.v EQ
bt [219]

:[196]
dup.v 0
push.s "sync"@3045
cmp.s.v EQ
bt [229]

:[197]
dup.v 0
push.s "speed"@3046
cmp.s.v EQ
bt [235]

:[198]
dup.v 0
push.s "/speed"@3047
cmp.s.v EQ
bt [238]

:[199]
dup.v 0
push.s "__scribble_audio_playback__"@3048
cmp.s.v EQ
bt [239]

:[200]
dup.v 0
push.s "__scribble_typist_sound__"@3049
cmp.s.v EQ
bt [242]

:[201]
dup.v 0
push.s "__scribble_typist_sound_per_char__"@3050
cmp.s.v EQ
bt [243]

:[202]
b [249]

:[203]
b [264]

:[204]
push.v builtin.__skip
conv.v.b
not.b
bf [206]

:[205]
push.v builtin.__sync_started
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bt [209]

:[208]
push.v builtin.__skip_paused
conv.v.b
not.b
b [210]

:[209]
push.e 1

:[210]
bf [218]

:[211]
pushi.e 1
bf [214]

:[212]
push.v builtin.__last_character
push.v arg.argument0
cmp.v.v GTE
bf [214]

:[213]
push.v builtin.__event_stack
call.i array_length(argc=1)
pushi.e 0
cmp.i.v LTE
b [215]

:[214]
push.e 0

:[215]
bf [217]

:[216]
push.s "Warning! Ignoring [pause] command before the end of a page"@3051
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [218]

:[217]
pushi.e 1
pop.v.b builtin.__paused
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
popz.i
push.v local.$$$$temp$$$$
ret.v

:[218]
b [264]

:[219]
push.v builtin.__skip
conv.v.b
not.b
bf [222]

:[220]
push.v builtin.__ignore_delay
conv.v.b
not.b
bf [222]

:[221]
push.v builtin.__sync_started
conv.v.b
not.b
b [223]

:[222]
push.e 0

:[223]
bf [228]

:[224]
pushloc.v local._event_data
call.i array_length(argc=1)
pushi.e 1
cmp.i.v GTE
bf [226]

:[225]
pushi.e -7
pushi.e 0
push.v [array]self._event_data
call.i real(argc=1)
b [227]

:[226]
pushi.e 450
conv.i.v

:[227]
pop.v.v local._duration
pushi.e 1
pop.v.b builtin.__delay_paused
pushbltn.v builtin.current_time
pushloc.v local._duration
add.v.v
pop.v.v builtin.__delay_end
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
popz.i
push.v local.$$$$temp$$$$
ret.v

:[228]
b [264]

:[229]
push.v builtin.__skip
conv.v.b
not.b
bf [231]

:[230]
push.v builtin.__sync_started
conv.v.b
b [232]

:[231]
push.e 0

:[232]
bf [234]

:[233]
pushi.e 1
pop.v.b builtin.__sync_paused
pushi.e -7
pushi.e 0
push.v [array]self._event_data
call.i real(argc=1)
pop.v.v builtin.__sync_pause_end
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.v
popz.i
push.v local.$$$$temp$$$$
ret.v

:[234]
b [264]

:[235]
pushloc.v local._event_data
call.i array_length(argc=1)
pushi.e 1
cmp.i.v GTE
bf [237]

:[236]
pushi.e -7
pushi.e 0
push.v [array]self._event_data
call.i real(argc=1)
pop.v.v builtin.__inline_speed

:[237]
b [264]

:[238]
pushi.e 1
pop.v.i builtin.__inline_speed
b [264]

:[239]
pushloc.v local._event_data
call.i array_length(argc=1)
pushi.e 1
cmp.i.v GTE
bf [241]

:[240]
pushi.e 1
conv.i.v
push.v builtin.__sound_tag_gain
pushi.e -7
pushi.e 0
push.v [array]self._event_data
call.i gml_Script___scribble_play_sound(argc=3)
popz.v

:[241]
b [264]

:[242]
pushi.e -7
pushi.e 4
push.v [array]self._event_data
call.i real(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self._event_data
call.i real(argc=1)
pushi.e -7
pushi.e 2
push.v [array]self._event_data
call.i real(argc=1)
pushi.e -7
pushi.e 1
push.v [array]self._event_data
call.i gml_Script___scribble_parse_sound_array_string(argc=1)
call.i @@This@@(argc=0)
push.v builtin.sound
callv.v 4
popz.v
b [264]

:[243]
pushloc.v local._event_data
call.i array_length(argc=1)
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [246]

:[244]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [247]

:[245]
b [248]

:[246]
pushi.e -7
pushi.e 3
push.v [array]self._event_data
call.i real(argc=1)
pushi.e -7
pushi.e 2
push.v [array]self._event_data
call.i real(argc=1)
pushi.e -7
pushi.e 1
push.v [array]self._event_data
call.i gml_Script___scribble_parse_sound_array_string(argc=1)
call.i @@This@@(argc=0)
push.v builtin.sound_per_char
callv.v 3
popz.v
b [248]

:[247]
pushi.e -7
pushi.e 4
push.v [array]self._event_data
pushi.e -7
pushi.e 3
push.v [array]self._event_data
call.i real(argc=1)
pushi.e -7
pushi.e 2
push.v [array]self._event_data
call.i real(argc=1)
pushi.e -7
pushi.e 1
push.v [array]self._event_data
call.i gml_Script___scribble_parse_sound_array_string(argc=1)
call.i @@This@@(argc=0)
push.v builtin.sound_per_char
callv.v 4
popz.v
b [248]

:[248]
popz.v
b [264]

:[249]
pushloc.v local._event_name
push.v static._typewriter_events_map
call.i ds_map_find_value(argc=2)
pop.v.v local._function
pushloc.v local._function
call.i is_method(argc=1)
conv.v.b
bf [253]

:[250]
push.v arg.argument2
pushi.e -9
pushenv [252]

:[251]
pushloc.v local._event_position
pushloc.v local._event_data
push.v arg.argument1
call.i @@This@@(argc=0)
pushloc.v local._function
callv.v 3
popz.v

:[252]
popenv [251]
b [261]

:[253]
pushloc.v local._function
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [255]

:[254]
pushloc.v local._function
call.i script_exists(argc=1)
conv.v.b
b [256]

:[255]
push.e 0

:[256]
bf [260]

:[257]
push.v arg.argument2
pushi.e -9
pushenv [259]

:[258]
pushloc.v local._event_position
pushloc.v local._event_data
push.v arg.argument1
pushloc.v local._function
call.i script_execute(argc=4)
popz.v

:[259]
popenv [258]
b [261]

:[260]
push.s "] not recognised"@3058
conv.s.v
pushloc.v local._event_name
push.s "Warning! Event ["@3059
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v

:[261]
push.v builtin.__paused
conv.v.b
bf [263]

:[262]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[263]
b [264]

:[264]
popz.v
pushi.e 1
sub.i.i
dup.i 0
bt [191]

:[265]
popz.i
pushi.e 1
conv.b.v
ret.v

:[266]
exit.i

:[267]
push.i [function]gml_Script___process_event_stack@anon@13324@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__process_event_stack
b [292]

> gml_Script___play_sound@anon@18756@__scribble_class_typist@__scribble_class_typist (locals=2, argc=2)
:[268]
isstaticok.e
bt [270]

:[269]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pop.v.v static._system

:[270]
push.v builtin.__sound_array
pop.v.v local._sound_array
pushloc.v local._sound_array
call.i is_array(argc=1)
conv.v.b
bf [272]

:[271]
pushloc.v local._sound_array
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
b [273]

:[272]
push.e 0

:[273]
bf [291]

:[274]
pushi.e 0
pop.v.b local._play_sound
push.v builtin.__sound_per_char
conv.v.b
bf [286]

:[275]
push.v arg.argument0
push.d 0.0001
add.d.v
call.i floor(argc=1)
push.v builtin.__last_audio_character
call.i floor(argc=1)
cmp.v.v GT
bf [285]

:[276]
push.v builtin.__sound_per_char_exception
conv.v.b
not.b
bf [278]

:[277]
pushi.e 1
pop.v.b local._play_sound
b [280]

:[278]
push.v arg.argument1
push.v builtin.__sound_per_char_exception_dict
call.i variable_struct_exists(argc=2)
conv.v.b
not.b
bf [280]

:[279]
pushi.e 1
pop.v.b local._play_sound

:[280]
pushloc.v local._play_sound
conv.v.b
bf [282]

:[281]
push.v builtin.__sound_per_char_interrupt
conv.v.b
b [283]

:[282]
push.e 0

:[283]
bf [285]

:[284]
push.v builtin.__sound_voice
call.i audio_stop_sound(argc=1)
popz.v

:[285]
b [288]

:[286]
pushbltn.v builtin.current_time
push.v builtin.__sound_finish_time
cmp.v.v GTE
bf [288]

:[287]
pushi.e 1
pop.v.b local._play_sound

:[288]
pushloc.v local._play_sound
conv.v.b
bf [291]

:[289]
push.v arg.argument0
pop.v.v builtin.__last_audio_character
call.i gml_Script___scribble_random(argc=0)
push.v builtin.__sound_pitch_max
push.v builtin.__sound_pitch_min
call.i lerp(argc=3)
push.v builtin.__sound_gain
pushi.e -7
call.i gml_Script___scribble_random(argc=0)
pushloc.v local._sound_array
call.i array_length(argc=1)
mul.v.v
call.i floor(argc=1)
conv.v.i
push.v [array]self._sound_array
call.i gml_Script___scribble_play_sound(argc=3)
pop.v.v builtin.__sound_voice
push.v builtin.__sound_voice
pushi.e 0
cmp.i.v GTE
bf [291]

:[290]
pushbltn.v builtin.current_time
pushi.e 1000
push.v builtin.__sound_voice
call.i audio_sound_length(argc=1)
mul.v.i
add.v.v
push.v builtin.__sound_overlap
sub.v.v
pop.v.v builtin.__sound_finish_time

:[291]
exit.i

:[292]
push.i [function]gml_Script___play_sound@anon@18756@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__play_sound
b [301]

> gml_Script___execute_function_per_character@anon@20548@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[293]
push.v builtin.__function_per_char
call.i is_method(argc=1)
conv.v.b
bf [295]

:[294]
call.i @@This@@(argc=0)
push.v builtin.__last_character
pushi.e 1
sub.i.v
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.__function_per_char
callv.v 3
popz.v
b [300]

:[295]
push.v builtin.__function_per_char
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [297]

:[296]
push.v builtin.__function_per_char
call.i script_exists(argc=1)
conv.v.b
b [298]

:[297]
push.e 0

:[298]
bf [300]

:[299]
call.i @@This@@(argc=0)
push.v builtin.__last_character
pushi.e 1
sub.i.v
push.v arg.argument0
push.v builtin.__function_per_char
call.i script_execute(argc=4)
popz.v

:[300]
exit.i

:[301]
push.i [function]gml_Script___execute_function_per_character@anon@20548@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__execute_function_per_character
b [310]

> gml_Script___execute_function_on_complete@anon@21036@__scribble_class_typist@__scribble_class_typist (locals=0, argc=1)
:[302]
push.v builtin.__function_on_complete
call.i is_method(argc=1)
conv.v.b
bf [304]

:[303]
call.i @@This@@(argc=0)
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.__function_on_complete
callv.v 2
popz.v
b [309]

:[304]
push.v builtin.__function_on_complete
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [306]

:[305]
push.v builtin.__function_on_complete
call.i script_exists(argc=1)
conv.v.b
b [307]

:[306]
push.e 0

:[307]
bf [309]

:[308]
call.i @@This@@(argc=0)
push.v arg.argument0
push.v builtin.__function_on_complete
call.i script_execute(argc=3)
popz.v

:[309]
exit.i

:[310]
push.i [function]gml_Script___execute_function_on_complete@anon@21036@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__execute_function_on_complete
b [413]

> gml_Script___tick@anon@21471@__scribble_class_typist@__scribble_class_typist (locals=18, argc=2)
:[311]
push.v builtin.__function_scope
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [313]

:[312]
push.v builtin.__function_scope
b [314]

:[313]
push.v arg.argument1

:[314]
pop.v.v local._function_scope
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.__associate
callv.v 1
popz.v
push.v builtin.__skip
conv.v.b
bf [316]

:[315]
pushi.e 1
pop.v.b builtin.__drawn_since_skip

:[316]
push.v builtin.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
push.v builtin.__last_tick_frame
cmp.v.v LTE
bf [318]

:[317]
pushbltn.v builtin.undefined
ret.v

:[318]
push.v builtin.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
pop.v.v builtin.__last_tick_frame
push.v builtin.__in
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [320]

:[319]
pushbltn.v builtin.undefined
ret.v

:[320]
push.v builtin.__sync_started
conv.v.b
bf [326]

:[321]
push.v builtin.__sync_instance
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [323]

:[322]
push.v builtin.__sync_instance
call.i audio_is_playing(argc=1)
conv.v.b
not.b
b [324]

:[323]
push.e 1

:[324]
bf [326]

:[325]
call.i @@This@@(argc=0)
push.v builtin.__sync_reset
callv.v 0
popz.v

:[326]
push.v builtin.__speed
push.v builtin.__inline_speed
mul.v.v
pushbltn.v builtin.delta_time
pushi.e 16666
conv.i.d
div.d.v
pushi.e 5
conv.i.v
call.i min(argc=2)
mul.v.v
pop.v.v local._speed
pushi.e -6
push.v builtin.__window_index
conv.v.i
push.v [array]self.__window_array
pop.v.v local._head_pos
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [328]

:[327]
pushbltn.v builtin.undefined
ret.v

:[328]
pushloc.v local._model
pushi.e -9
push.v [stacktop]self.__allow_glyph_data_getter
pop.v.v local._glyph_data_getter
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_page_array
callv.v 0
pop.v.v local._pages_array
pushloc.v local._pages_array
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [330]

:[329]
pushbltn.v builtin.undefined
ret.v

:[330]
pushi.e -7
push.v builtin.__last_page
conv.v.i
push.v [array]self._pages_array
pop.v.v local._page_data
push.v builtin.__per_line
conv.v.b
bf [332]

:[331]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_count
b [333]

:[332]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count

:[333]
pop.v.v local._page_character_count
push.v builtin.__in
conv.v.b
not.b
bf [338]

:[334]
push.v builtin.__skip
conv.v.b
bf [336]

:[335]
pushloc.v local._page_character_count
pushi.e -6
push.v builtin.__window_index
conv.v.i
pop.v.v [array]self.__window_array
b [337]

:[336]
pushloc.v local._head_pos
pushloc.v local._speed
add.v.v
pushloc.v local._page_character_count
call.i min(argc=2)
pushi.e -6
push.v builtin.__window_index
conv.v.i
pop.v.v [array]self.__window_array

:[337]
b [405]

:[338]
pushi.e 0
pop.v.b local._paused
push.v builtin.__paused
conv.v.b
bf [340]

:[339]
pushi.e 1
pop.v.b local._paused
b [355]

:[340]
push.v builtin.__delay_paused
conv.v.b
bf [348]

:[341]
pushbltn.v builtin.current_time
push.v builtin.__delay_end
cmp.v.v GT
bt [343]

:[342]
push.v builtin.__ignore_delay
conv.v.b
b [344]

:[343]
push.e 1

:[344]
bf [346]

:[345]
pushi.e 0
pop.v.b builtin.__delay_paused
push.v builtin.__window_index
pushi.e 2
add.i.v
pushi.e 6
mod.i.v
pop.v.v builtin.__window_index
pushloc.v local._head_pos
pushi.e -6
push.v builtin.__window_index
conv.v.i
pop.v.v [array]self.__window_array
pushloc.v local._head_pos
push.v builtin.__smoothness
sub.v.v
pushi.e -6
push.v builtin.__window_index
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.__window_array
b [347]

:[346]
pushi.e 1
pop.v.b local._paused

:[347]
b [355]

:[348]
push.v builtin.__sync_started
conv.v.b
bf [355]

:[349]
push.v builtin.__sync_instance
call.i audio_is_paused(argc=1)
conv.v.b
bf [351]

:[350]
pushi.e 1
pop.v.b local._paused
b [355]

:[351]
push.v builtin.__sync_paused
conv.v.b
bf [355]

:[352]
push.v builtin.__sync_instance
call.i audio_sound_get_track_position(argc=1)
push.v builtin.__sync_pause_end
cmp.v.v GT
bf [354]

:[353]
pushi.e 0
pop.v.b builtin.__sync_paused
push.v builtin.__window_index
pushi.e 2
add.i.v
pushi.e 6
mod.i.v
pop.v.v builtin.__window_index
pushloc.v local._head_pos
pushi.e -6
push.v builtin.__window_index
conv.v.i
pop.v.v [array]self.__window_array
pushloc.v local._head_pos
push.v builtin.__smoothness
sub.v.v
pushi.e -6
push.v builtin.__window_index
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.__window_array
b [355]

:[354]
pushi.e 1
pop.v.b local._paused

:[355]
pushloc.v local._paused
conv.v.b
not.b
bf [357]

:[356]
push.v builtin.__event_stack
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
b [358]

:[357]
push.e 0

:[358]
bf [361]

:[359]
pushloc.v local._function_scope
push.v arg.argument0
pushloc.v local._page_character_count
call.i @@This@@(argc=0)
push.v builtin.__process_event_stack
callv.v 3
conv.v.b
not.b
bf [361]

:[360]
pushi.e 1
pop.v.b local._paused

:[361]
pushloc.v local._paused
conv.v.b
not.b
bf [405]

:[362]
pushi.e 0
pop.v.b local._play_sound
push.v builtin.__skip
conv.v.b
bf [364]

:[363]
pushloc.v local._page_character_count
pushloc.v local._head_pos
sub.v.v
pop.v.v local._remaining
b [365]

:[364]
pushloc.v local._speed
pushloc.v local._page_character_count
pushloc.v local._head_pos
sub.v.v
call.i min(argc=2)
pop.v.v local._remaining

:[365]
pushloc.v local._remaining
pushi.e 0
cmp.i.v GT
bf [397]

:[366]
push.v local._head_pos
pushloc.v local._remaining
pushi.e 1
conv.i.v
call.i min(argc=2)
add.v.v
pop.v.v local._head_pos
push.v local._remaining
pushi.e 1
sub.i.v
pop.v.v local._remaining
pushloc.v local._head_pos
push.v builtin.__last_character
cmp.v.v GTE
bf [396]

:[367]
pushi.e 1
pop.v.b local._play_sound
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
push.v builtin.__per_line
pushbltn.v builtin.undefined
push.v builtin.__last_character
dup.v 3 8
dup.v 0
push.v stacktop.get_events
callv.v 3
pop.v.v local._found_events
pushloc.v local._found_events
call.i array_length(argc=1)
pop.v.v local._found_size
push.v builtin.__ignore_delay
conv.v.b
not.b
bf [369]

:[368]
push.v builtin.__character_delay
conv.v.b
b [370]

:[369]
push.e 0

:[370]
bf [390]

:[371]
pushloc.v local._glyph_data_getter
conv.v.b
not.b
bf [373]

:[372]
push.s "Per-character delay requires either:\n- Call `.allow_glyph_data_getter()` on the element\n- Set `SCRIBBLE_FORCE_GLYPH_DATA_GETTER` to `true`"@3083
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[373]
push.v builtin.__last_character
pushi.e 1
cmp.i.v GTE
bf [378]

:[374]
push.v builtin.__last_character
pushloc.v local._page_character_count
pushi.e 1
sub.i.v
cmp.v.v LT
bt [376]

:[375]
pushloc.v local._found_size
pushi.e 0
cmp.i.v GT
b [377]

:[376]
push.e 1

:[377]
b [379]

:[378]
push.e 0

:[379]
bf [390]

:[380]
push.l 0
conv.l.v
push.v builtin.__last_character
pushi.e 1
sub.i.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_ord
pushloc.v local._glyph_ord
push.v builtin.__character_delay_dict
call.i variable_struct_get(argc=2)
pop.v.v local._delay
pushloc.v local._delay
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [382]

:[381]
pushi.e 0
conv.i.v
b [383]

:[382]
pushloc.v local._delay

:[383]
pop.v.v local._delay
push.v builtin.__last_character
pushi.e 1
cmp.i.v GT
bf [388]

:[384]
pushloc.v local._glyph_ord
conv.v.l
pushi.e 32
conv.i.l
shl.l.l
push.l 0
conv.l.v
push.v builtin.__last_character
pushi.e 2
sub.i.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
or.l.l
pop.v.l local._glyph_ord
pushloc.v local._glyph_ord
push.v builtin.__character_delay_dict
call.i variable_struct_get(argc=2)
pop.v.v local._double_char_delay
pushloc.v local._double_char_delay
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [386]

:[385]
pushi.e 0
conv.i.v
b [387]

:[386]
pushloc.v local._double_char_delay

:[387]
pop.v.v local._double_char_delay
pushloc.v local._double_char_delay
pushloc.v local._delay
call.i max(argc=2)
pop.v.v local._delay

:[388]
pushloc.v local._delay
pushi.e 0
cmp.i.v GT
bf [390]

:[389]
pushloc.v local._delay
call.i @@NewGMLArray@@(argc=1)
push.s "delay"@3044
conv.s.v
push.i [function]gml_Script___scribble_class_event
conv.i.v
call.i @@NewGMLObject@@(argc=3)
push.v builtin.__event_stack
call.i array_push(argc=2)
popz.v

:[390]
push.v builtin.__last_character
push.e 1
add.i.v
pop.v.v builtin.__last_character
push.v builtin.__last_character
pushi.e 1
cmp.i.v GT
bf [392]

:[391]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.__execute_function_per_character
callv.v 1
popz.v

:[392]
pushloc.v local._found_size
pushi.e 0
cmp.i.v GT
bf [394]

:[393]
push.v builtin.__event_stack
call.i array_length(argc=1)
pop.v.v local._old_stack_size
pushloc.v local._old_stack_size
pushloc.v local._found_size
add.v.v
push.v builtin.__event_stack
call.i array_resize(argc=2)
popz.v
pushloc.v local._found_size
pushi.e 0
conv.i.v
pushloc.v local._found_events
pushloc.v local._old_stack_size
push.v builtin.__event_stack
call.i array_copy(argc=5)
popz.v

:[394]
pushloc.v local._function_scope
push.v arg.argument0
pushloc.v local._page_character_count
call.i @@This@@(argc=0)
push.v builtin.__process_event_stack
callv.v 3
conv.v.b
not.b
bf [396]

:[395]
push.v builtin.__last_character
pushi.e 1
sub.i.v
pop.v.v local._head_pos
b [397]

:[396]
b [365]

:[397]
pushloc.v local._play_sound
conv.v.b
bf [404]

:[398]
push.v builtin.__last_character
pushloc.v local._page_character_count
cmp.v.v LTE
bf [403]

:[399]
pushloc.v local._glyph_data_getter
conv.v.b
bf [401]

:[400]
push.l 0
conv.l.v
pushloc.v local._head_pos
call.i round(argc=1)
pushi.e 1
sub.i.v
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__glyph_grid
call.i ds_grid_get(argc=3)
b [402]

:[401]
pushi.e 0
conv.i.v

:[402]
pushloc.v local._head_pos
call.i @@This@@(argc=0)
push.v builtin.__play_sound
callv.v 2
popz.v
b [404]

:[403]
pushloc.v local._function_scope
call.i @@This@@(argc=0)
push.v builtin.__execute_function_on_complete
callv.v 1
popz.v

:[404]
pushloc.v local._head_pos
pushi.e -6
push.v builtin.__window_index
conv.v.i
pop.v.v [array]self.__window_array

:[405]
push.v builtin.__skip
conv.v.b
bf [409]

:[406]
pushi.e 0
pop.v.i local._i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [408]

:[407]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__window_array
pushi.e -6
pushloc.v local._i
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.__window_array
push.v local._i
pushi.e 2
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [407]

:[408]
popz.i
b [412]

:[409]
pushi.e 0
pop.v.i local._i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [411]

:[410]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__window_array
pushi.e -6
pushloc.v local._i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.__window_array
pushloc.v local._speed
add.v.v
call.i min(argc=2)
pushi.e -6
pushloc.v local._i
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.__window_array
push.v local._i
pushi.e 2
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [410]

:[411]
popz.i

:[412]
exit.i

:[413]
push.i [function]gml_Script___tick@anon@21471@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__tick
b [430]

> gml_Script___set_shader_uniforms@anon@31903@__scribble_class_typist@__scribble_class_typist (locals=5, argc=0)
:[414]
isstaticok.e
bt [416]

:[415]
setstatic.e
push.s "u_iTypewriterUseLines"@2505
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_iTypewriterUseLines
push.s "u_iTypewriterMethod"@2507
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_iTypewriterMethod
push.s "u_iTypewriterCharMax"@2509
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_iTypewriterCharMax
push.s "u_fTypewriterWindowArray"@2511
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fTypewriterWindowArray
push.s "u_fTypewriterSmoothness"@2513
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fTypewriterSmoothness
push.s "u_vTypewriterStartPos"@2515
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vTypewriterStartPos
push.s "u_vTypewriterStartScale"@2517
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vTypewriterStartScale
push.s "u_fTypewriterStartRotation"@2519
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fTypewriterStartRotation
push.s "u_fTypewriterAlphaDuration"@2521
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fTypewriterAlphaDuration

:[416]
push.v builtin.__in
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [418]

:[417]
push.l 0
conv.l.v
push.v static._u_iTypewriterMethod
call.i shader_set_uniform_i(argc=2)
popz.v
pushbltn.v builtin.undefined
ret.v

:[418]
push.v builtin.__ease_method
pop.v.v local._method
push.v builtin.__in
conv.v.b
not.b
bf [420]

:[419]
push.v local._method
push.l 15
add.l.v
pop.v.v local._method

:[420]
pushi.e 0
pop.v.i local._char_max
push.v builtin.__backwards
conv.v.b
bf [429]

:[421]
push.v builtin.__last_element
pushi.e -9
push.v [stacktop]self.ref
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [423]

:[422]
pushbltn.v builtin.undefined
ret.v

:[423]
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_page_array
callv.v 0
pop.v.v local._pages_array
pushloc.v local._pages_array
call.i array_length(argc=1)
push.v builtin.__last_page
cmp.v.v GT
bf [428]

:[424]
pushi.e -7
push.v builtin.__last_page
conv.v.i
push.v [array]self._pages_array
pop.v.v local._page_data
push.v builtin.__per_line
conv.v.b
bf [426]

:[425]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__line_count
b [427]

:[426]
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__character_count

:[427]
pop.v.v local._char_max
b [429]

:[428]
push.s ")"@372
conv.s.v
pushloc.v local._pages_array
call.i array_length(argc=1)
push.s ") exceeds text element page count ("@3091
conv.s.v
push.v builtin.__last_page
push.s "Warning! Typist page ("@3092
conv.s.v
call.i gml_Script___scribble_trace(argc=5)
popz.v

:[429]
push.v builtin.__per_line
push.v static._u_iTypewriterUseLines
call.i shader_set_uniform_i(argc=2)
popz.v
pushloc.v local._method
push.v static._u_iTypewriterMethod
call.i shader_set_uniform_i(argc=2)
popz.v
pushloc.v local._char_max
push.v static._u_iTypewriterCharMax
call.i shader_set_uniform_i(argc=2)
popz.v
push.v builtin.__smoothness
push.v static._u_fTypewriterSmoothness
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.__ease_dy
push.v builtin.__ease_dx
push.v static._u_vTypewriterStartPos
call.i shader_set_uniform_f(argc=3)
popz.v
push.v builtin.__ease_yscale
push.v builtin.__ease_xscale
push.v static._u_vTypewriterStartScale
call.i shader_set_uniform_f(argc=3)
popz.v
push.v builtin.__ease_rotation
push.v static._u_fTypewriterStartRotation
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.__ease_alpha_duration
push.v static._u_fTypewriterAlphaDuration
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.__window_array
push.v static._u_fTypewriterWindowArray
call.i shader_set_uniform_f_array(argc=2)
popz.v
exit.i

:[430]
push.i [function]gml_Script___set_shader_uniforms@anon@31903@__scribble_class_typist@__scribble_class_typist
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__set_shader_uniforms

:[431]
pushbltn.v builtin.undefined
pop.v.v builtin.__last_element
pushi.e 1
pop.v.i builtin.__speed
pushi.e 0
pop.v.i builtin.__smoothness
pushbltn.v builtin.undefined
pop.v.v builtin.__in
pushi.e 0
pop.v.b builtin.__backwards
pushi.e 0
pop.v.b builtin.__skip
pushi.e 0
pop.v.b builtin.__skip_paused
pushi.e 0
pop.v.b builtin.__drawn_since_skip
pushi.e 1
pop.v.i builtin.__sound_tag_gain
pushbltn.v builtin.undefined
pop.v.v builtin.__sound_array
pushi.e 0
pop.v.i builtin.__sound_overlap
pushi.e 1
pop.v.i builtin.__sound_pitch_min
pushi.e 1
pop.v.i builtin.__sound_pitch_max
pushi.e 1
pop.v.i builtin.__sound_gain
pushi.e -1
pop.v.i builtin.__sound_voice
pushbltn.v builtin.current_time
pop.v.v builtin.__sound_finish_time
pushi.e 0
pop.v.b builtin.__sound_per_char
pushi.e 0
pop.v.b builtin.__sound_per_char_exception
pushbltn.v builtin.undefined
pop.v.v builtin.__sound_per_char_exception_dict
pushi.e 0
pop.v.b builtin.__sound_per_char_interrupt
pushi.e 0
pop.v.b builtin.__ignore_delay
pushbltn.v builtin.undefined
pop.v.v builtin.__function_scope
pushbltn.v builtin.undefined
pop.v.v builtin.__function_per_char
pushbltn.v builtin.undefined
pop.v.v builtin.__function_on_complete
push.l 1
pop.v.l builtin.__ease_method
pushi.e 0
pop.v.i builtin.__ease_dx
pushi.e 0
pop.v.i builtin.__ease_dy
pushi.e 1
pop.v.i builtin.__ease_xscale
pushi.e 1
pop.v.i builtin.__ease_yscale
pushi.e 0
pop.v.i builtin.__ease_rotation
pushi.e 1
pop.v.i builtin.__ease_alpha_duration
pushi.e 0
pop.v.b builtin.__character_delay
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__character_delay_dict
push.v arg.argument0
pop.v.v builtin.__per_line
pushi.e 0
pop.v.b builtin.__sync_started
pushbltn.v builtin.undefined
pop.v.v builtin.__sync_instance
pushi.e 0
pop.v.b builtin.__sync_paused
pushbltn.v builtin.infinity
pop.v.v builtin.__sync_pause_end
call.i @@This@@(argc=0)
push.v static.reset
callv.v 0
popz.v
exit.i

:[432]
push.i [function]gml_Script___scribble_class_typist
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_typist
popz.v

:[end]