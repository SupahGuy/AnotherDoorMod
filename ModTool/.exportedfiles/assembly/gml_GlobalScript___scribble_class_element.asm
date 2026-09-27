:[0]
b [766]

> gml_Script___scribble_class_element (locals=1, argc=2)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [756]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static.__scribble_state
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__ecache_array
pop.v.v static.__ecache_array
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__ecache_dict
pop.v.v static.__ecache_dict
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__ecache_weak_array
pop.v.v static.__ecache_weak_array
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__ecache_name_array
pop.v.v static.__ecache_name_array
b [23]

> gml_Script_draw@anon@5309@__scribble_class_element@__scribble_class_element (locals=4, argc=3)
:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state
push.i [function]gml_Script___scribble_class_null_element
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v static._null

:[7]
call.i @@Other@@(argc=0)
pop.v.v local._function_scope
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushbltn.v builtin.undefined
ret.v

:[9]
push.v builtin.__last_drawn
push.v builtin.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
cmp.v.v LT
bf [11]

:[10]
push.v builtin.__animation_time
push.v builtin.__animation_speed
pushbltn.v builtin.delta_time
pushi.e 16666
conv.i.d
div.d.v
pushi.e 5
conv.i.v
call.i min(argc=2)
mul.v.v
add.v.v
pop.v.v builtin.__animation_time
push.v builtin.__animation_time
pushi.e 16383
mod.i.v
pop.v.v builtin.__animation_time

:[11]
push.v builtin.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
pop.v.v builtin.__last_drawn
push.v static._scribble_state
pushi.e -9
pushenv [18]

:[12]
push.v builtin.__shader_anim_disabled
conv.v.b
not.b
bf [14]

:[13]
push.v builtin.__blink_on_duration
push.v builtin.__blink_off_duration
add.v.v
pushi.e 0
cmp.i.v GT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v other.__animation_time
push.v builtin.__blink_time_offset
add.v.v
push.v builtin.__blink_on_duration
push.v builtin.__blink_off_duration
add.v.v
mod.v.v
push.v builtin.__blink_on_duration
cmp.v.v LT
pop.v.b other.__animation_blink_state
b [18]

:[17]
pushi.e 1
pop.v.b other.__animation_blink_state

:[18]
popenv [12]
pushref.i 134217739
call.i shader_set(argc=1)
popz.v
pushloc.v local._function_scope
push.v arg.argument2
call.i @@This@@(argc=0)
push.v builtin.__set_standard_uniforms
callv.v 2
popz.v
pushi.e 2
conv.i.v
call.i matrix_get(argc=1)
pop.v.v local._old_matrix
pushloc.v local._old_matrix
push.v arg.argument1
push.v arg.argument0
pushloc.v local._model
call.i @@This@@(argc=0)
push.v builtin.__update_matrix
callv.v 3
call.i matrix_multiply(argc=2)
pop.v.v local._matrix
pushloc.v local._matrix
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
pushloc.v local._model
push.v builtin.__sdf_outline_thickness
pushi.e 0
cmp.i.v GT
bt [20]

:[19]
push.v builtin.__sdf_shadow_alpha
pushi.e 0
cmp.i.v GT
b [21]

:[20]
push.e 1

:[21]
conv.b.v
push.v builtin.__page
dup.v 2 8
dup.v 0
push.v stacktop.__submit
callv.v 2
popz.v
pushloc.v local._old_matrix
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
call.i shader_reset(argc=0)
popz.v
push.v static._null
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_draw@anon@5309@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.draw
b [39]

> gml_Script_starting_format@anon@7720@__scribble_class_element@__scribble_class_element (locals=1, argc=2)
:[24]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [28]

:[25]
push.v arg.argument0
push.v builtin.__starting_font
cmp.v.v NEQ
bf [27]

:[26]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
push.v arg.argument0
pop.v.v builtin.__starting_font

:[27]
b [30]

:[28]
push.v arg.argument0
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [30]

:[29]
push.s "Fonts should be specified using their name as a string\nUse <undefined> to not set a new font"@2089
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[30]
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [37]

:[31]
push.v arg.argument1
call.i gml_Script___scribble_process_colour(argc=1)
pop.v.v local._colour
pushloc.v local._colour
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [34]

:[32]
pushloc.v local._colour
pushi.e 0
cmp.i.v GTE
bf [34]

:[33]
pushloc.v local._colour
push.v builtin.__starting_colour
cmp.v.v NEQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushloc.v local._colour
conv.v.l
push.i 16777215
and.i.l
pop.v.l builtin.__starting_colour

:[37]
call.i @@This@@(argc=0)
ret.v

:[38]
exit.i

:[39]
push.i [function]gml_Script_starting_format@anon@7720@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.starting_format
b [66]

> gml_Script_align@anon@8665@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[40]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [42]

:[41]
push.v builtin.__starting_halign
pop.v.v builtin.argument0

:[42]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [44]

:[43]
push.v builtin.__starting_valign
pop.v.v builtin.argument1

:[44]
push.v arg.argument0
push.s "pin_left"@2098
cmp.s.v EQ
bf [46]

:[45]
pushi.e 3
pop.v.i arg.argument0

:[46]
push.v arg.argument0
push.s "pin_centre"@2099
cmp.s.v EQ
bf [48]

:[47]
pushi.e 4
pop.v.i arg.argument0

:[48]
push.v arg.argument0
push.s "pin_center"@2100
cmp.s.v EQ
bf [50]

:[49]
pushi.e 4
pop.v.i arg.argument0

:[50]
push.v arg.argument0
push.s "pin_right"@2101
cmp.s.v EQ
bf [52]

:[51]
pushi.e 5
pop.v.i arg.argument0

:[52]
push.v arg.argument1
push.s "pin_top"@2102
cmp.s.v EQ
bf [54]

:[53]
pushi.e 3
pop.v.i arg.argument1

:[54]
push.v arg.argument1
push.s "pin_middle"@2103
cmp.s.v EQ
bf [56]

:[55]
pushi.e 4
pop.v.i arg.argument1

:[56]
push.v arg.argument1
push.s "pin_bottom"@2104
cmp.s.v EQ
bf [58]

:[57]
pushi.e 5
pop.v.i arg.argument1

:[58]
push.v arg.argument0
push.s "fa_justify"@2105
cmp.s.v EQ
bf [60]

:[59]
pushi.e 6
pop.v.i arg.argument0

:[60]
push.v arg.argument0
push.v builtin.__starting_halign
cmp.v.v NEQ
bf [62]

:[61]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
push.v arg.argument0
pop.v.v builtin.__starting_halign

:[62]
push.v arg.argument1
push.v builtin.__starting_valign
cmp.v.v NEQ
bf [64]

:[63]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
push.v arg.argument1
pop.v.v builtin.__starting_valign

:[64]
call.i @@This@@(argc=0)
ret.v

:[65]
exit.i

:[66]
push.i [function]gml_Script_align@anon@8665@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.align
b [78]

> gml_Script_blend@anon@9857@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[67]
isstaticok.e
bt [69]

:[68]
setstatic.e
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colors_struct

:[69]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [72]

:[70]
push.v arg.argument0
push.v static._colors_struct
call.i variable_struct_get(argc=2)
pop.v.v arg.argument0
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [72]

:[71]
push.s "\" not recognised"@2111
conv.s.v
push.v arg.argument0
push.s "Colour name \""@2112
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[72]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [74]

:[73]
push.v arg.argument0
conv.v.l
push.i 16777215
and.i.l
pop.v.l builtin.__blend_colour

:[74]
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [76]

:[75]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
call.i clamp(argc=3)
pop.v.v builtin.__blend_alpha

:[76]
call.i @@This@@(argc=0)
ret.v

:[77]
exit.i

:[78]
push.i [function]gml_Script_blend@anon@9857@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.blend
b [86]

> gml_Script_gradient@anon@10510@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[79]
isstaticok.e
bt [81]

:[80]
setstatic.e
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colors_struct

:[81]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [84]

:[82]
push.v arg.argument0
push.v static._colors_struct
call.i variable_struct_get(argc=2)
pop.v.v arg.argument0
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [84]

:[83]
push.s "\" not recognised"@2111
conv.s.v
push.v arg.argument0
push.s "Colour name \""@2112
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[84]
push.v arg.argument0
conv.v.l
push.i 16777215
and.i.l
pop.v.l builtin.__gradient_colour
push.v arg.argument1
pop.v.v builtin.__gradient_alpha
call.i @@This@@(argc=0)
ret.v

:[85]
exit.i

:[86]
push.i [function]gml_Script_gradient@anon@10510@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.gradient
b [88]

> gml_Script_fog@anon@11044@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[87]
push.s ".fog() has been replaced by .flash()"@2121
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[88]
push.i [function]gml_Script_fog@anon@11044@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.fog
b [96]

> gml_Script_flash@anon@11207@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[89]
isstaticok.e
bt [91]

:[90]
setstatic.e
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colors_struct

:[91]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [94]

:[92]
push.v arg.argument0
push.v static._colors_struct
call.i variable_struct_get(argc=2)
pop.v.v arg.argument0
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [94]

:[93]
push.s "\" not recognised"@2111
conv.s.v
push.v arg.argument0
push.s "Colour name \""@2112
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[94]
push.v arg.argument0
conv.v.l
push.i 16777215
and.i.l
pop.v.l builtin.__flash_colour
push.v arg.argument1
pop.v.v builtin.__flash_alpha
call.i @@This@@(argc=0)
ret.v

:[95]
exit.i

:[96]
push.i [function]gml_Script_flash@anon@11207@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.flash
b [104]

> gml_Script_origin@anon@11846@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[97]
push.v builtin.__origin_x
push.v arg.argument0
cmp.v.v NEQ
bt [99]

:[98]
push.v builtin.__origin_y
push.v arg.argument1
cmp.v.v NEQ
b [100]

:[99]
push.e 1

:[100]
bf [102]

:[101]
pushi.e 1
pop.v.b builtin.__matrix_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
push.v arg.argument0
pop.v.v builtin.__origin_x
push.v arg.argument1
pop.v.v builtin.__origin_y

:[102]
call.i @@This@@(argc=0)
ret.v

:[103]
exit.i

:[104]
push.i [function]gml_Script_origin@anon@11846@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.origin
b [117]

> gml_Script_transform@anon@12243@__scribble_class_element@__scribble_class_element (locals=0, argc=3)
:[105]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [107]

:[106]
push.v arg.argument0
pop.v.v builtin.argument1

:[107]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [109]

:[108]
pushi.e 0
pop.v.i builtin.argument2

:[109]
push.v builtin.__post_xscale
push.v arg.argument0
cmp.v.v NEQ
bt [112]

:[110]
push.v builtin.__post_yscale
push.v arg.argument1
cmp.v.v NEQ
bt [112]

:[111]
push.v builtin.__post_angle
push.v arg.argument2
cmp.v.v NEQ
b [113]

:[112]
push.e 1

:[113]
bf [115]

:[114]
pushi.e 1
pop.v.b builtin.__matrix_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
push.v arg.argument0
pop.v.v builtin.__post_xscale
push.v arg.argument1
pop.v.v builtin.__post_yscale
push.v arg.argument2
pop.v.v builtin.__post_angle

:[115]
call.i @@This@@(argc=0)
ret.v

:[116]
exit.i

:[117]
push.i [function]gml_Script_transform@anon@12243@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.transform
b [122]

> gml_Script_scale@anon@12706@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[118]
push.v builtin.__pre_scale
push.v arg.argument0
cmp.v.v NEQ
bf [120]

:[119]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
push.v arg.argument0
pop.v.v builtin.__pre_scale

:[120]
call.i @@This@@(argc=0)
ret.v

:[121]
exit.i

:[122]
push.i [function]gml_Script_scale@anon@12706@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.scale
b [125]

> gml_Script_skew@anon@12993@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[123]
push.v arg.argument0
pop.v.v builtin.__skew_x
push.v arg.argument1
pop.v.v builtin.__skew_y
call.i @@This@@(argc=0)
ret.v

:[124]
exit.i

:[125]
push.i [function]gml_Script_skew@anon@12993@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.skew
b [148]

> gml_Script_scale_to_box@anon@13241@__scribble_class_element@__scribble_class_element (locals=0, argc=3)
:[126]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [128]

:[127]
pushi.e 0
pop.v.b builtin.argument2

:[128]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [130]

:[129]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
b [131]

:[130]
push.e 1

:[131]
bf [133]

:[132]
pushi.e 0
conv.i.v
b [134]

:[133]
push.v arg.argument0

:[134]
pop.v.v arg.argument0
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [136]

:[135]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
b [137]

:[136]
push.e 1

:[137]
bf [139]

:[138]
pushi.e 0
conv.i.v
b [140]

:[139]
push.v arg.argument1

:[140]
pop.v.v arg.argument1
push.v arg.argument0
push.v builtin.__scale_to_box_width
cmp.v.v NEQ
bt [143]

:[141]
push.v arg.argument1
push.v builtin.__scale_to_box_height
cmp.v.v NEQ
bt [143]

:[142]
push.v arg.argument2
push.v builtin.__scale_to_box_maximise
cmp.v.v NEQ
b [144]

:[143]
push.e 1

:[144]
bf [146]

:[145]
push.v arg.argument0
pop.v.v builtin.__scale_to_box_width
push.v arg.argument1
pop.v.v builtin.__scale_to_box_height
push.v arg.argument2
pop.v.v builtin.__scale_to_box_maximise
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty

:[146]
call.i @@This@@(argc=0)
ret.v

:[147]
exit.i

:[148]
push.i [function]gml_Script_scale_to_box@anon@13241@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.scale_to_box
b [167]

> gml_Script_wrap@anon@14005@__scribble_class_element@__scribble_class_element (locals=0, argc=3)
:[149]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [151]

:[150]
pushi.e -1
pop.v.i builtin.argument1

:[151]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [153]

:[152]
pushi.e 0
pop.v.b builtin.argument2

:[153]
push.v builtin.__wrap_apply
conv.v.b
not.b
bt [159]

:[154]
push.v arg.argument0
push.v builtin.__wrap_max_width
cmp.v.v NEQ
bt [159]

:[155]
push.v arg.argument1
push.v builtin.__wrap_max_height
cmp.v.v NEQ
bt [159]

:[156]
push.v arg.argument2
push.v builtin.__wrap_per_char
cmp.v.v NEQ
bt [159]

:[157]
push.v builtin.__wrap_no_pages
conv.v.b
bt [159]

:[158]
push.v builtin.__wrap_max_scale
pushi.e 1
cmp.i.v NEQ
b [160]

:[159]
push.e 1

:[160]
bf [165]

:[161]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [163]

:[162]
push.v arg.argument0
call.i is_infinity(argc=1)
conv.v.b
not.b
b [164]

:[163]
push.e 0

:[164]
pop.v.b builtin.__wrap_apply
push.v arg.argument0
pop.v.v builtin.__wrap_max_width
push.v arg.argument1
pop.v.v builtin.__wrap_max_height
push.v arg.argument2
pop.v.v builtin.__wrap_per_char
pushi.e 0
pop.v.b builtin.__wrap_no_pages
pushi.e 1
pop.v.i builtin.__wrap_max_scale

:[165]
call.i @@This@@(argc=0)
ret.v

:[166]
exit.i

:[167]
push.i [function]gml_Script_wrap@anon@14005@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.wrap
b [186]

> gml_Script_fit_to_box@anon@15069@__scribble_class_element@__scribble_class_element (locals=0, argc=4)
:[168]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [170]

:[169]
pushi.e 0
pop.v.b builtin.argument2

:[170]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [172]

:[171]
pushi.e 1
pop.v.i builtin.argument3

:[172]
push.v builtin.__wrap_apply
conv.v.b
not.b
bt [178]

:[173]
push.v arg.argument0
push.v builtin.__wrap_max_width
cmp.v.v NEQ
bt [178]

:[174]
push.v arg.argument1
push.v builtin.__wrap_max_height
cmp.v.v NEQ
bt [178]

:[175]
push.v arg.argument2
push.v builtin.__wrap_per_char
cmp.v.v NEQ
bt [178]

:[176]
push.v builtin.__wrap_no_pages
conv.v.b
not.b
bt [178]

:[177]
push.v arg.argument3
push.v builtin.__wrap_max_scale
cmp.v.v NEQ
b [179]

:[178]
push.e 1

:[179]
bf [184]

:[180]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__matrix_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [182]

:[181]
push.v arg.argument0
call.i is_infinity(argc=1)
conv.v.b
not.b
b [183]

:[182]
push.e 0

:[183]
pop.v.b builtin.__wrap_apply
push.v arg.argument0
pop.v.v builtin.__wrap_max_width
push.v arg.argument1
pop.v.v builtin.__wrap_max_height
push.v arg.argument2
pop.v.v builtin.__wrap_per_char
pushi.e 1
pop.v.b builtin.__wrap_no_pages
push.v arg.argument3
pop.v.v builtin.__wrap_max_scale

:[184]
call.i @@This@@(argc=0)
ret.v

:[185]
exit.i

:[186]
push.i [function]gml_Script_fit_to_box@anon@15069@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.fit_to_box
b [198]

> gml_Script_pin_guide_width@anon@16243@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[187]
push.v builtin.__wrap_apply
conv.v.b
bt [193]

:[188]
push.v builtin.__wrap_max_width
push.v arg.argument0
cmp.v.v NEQ
bt [193]

:[189]
push.v builtin.__wrap_max_height
pushi.e -1
cmp.i.v NEQ
bt [193]

:[190]
push.v builtin.__wrap_per_char
conv.v.b
bt [193]

:[191]
push.v builtin.__wrap_no_pages
conv.v.b
bt [193]

:[192]
push.v builtin.__wrap_max_scale
pushi.e 1
cmp.i.v NEQ
b [194]

:[193]
push.e 1

:[194]
bf [196]

:[195]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
pushi.e 0
pop.v.b builtin.__wrap_apply
push.v arg.argument0
pop.v.v builtin.__wrap_max_width
pushi.e -1
pop.v.i builtin.__wrap_max_height
pushi.e 0
pop.v.b builtin.__wrap_per_char
pushi.e 0
pop.v.b builtin.__wrap_no_pages
pushi.e 1
pop.v.i builtin.__wrap_max_scale

:[196]
call.i @@This@@(argc=0)
ret.v

:[197]
exit.i

:[198]
push.i [function]gml_Script_pin_guide_width@anon@16243@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.pin_guide_width
b [205]

> gml_Script_line_height@anon@17018@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[199]
push.v arg.argument0
push.v builtin.__line_height_min
cmp.v.v NEQ
bf [201]

:[200]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
push.v arg.argument0
pop.v.v builtin.__line_height_min

:[201]
push.v arg.argument1
push.v builtin.__line_height_max
cmp.v.v NEQ
bf [203]

:[202]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
push.v arg.argument1
pop.v.v builtin.__line_height_max

:[203]
call.i @@This@@(argc=0)
ret.v

:[204]
exit.i

:[205]
push.i [function]gml_Script_line_height@anon@17018@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.line_height
b [210]

> gml_Script_line_spacing@anon@17446@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[206]
push.v arg.argument0
push.v builtin.__line_spacing
cmp.v.v NEQ
bf [208]

:[207]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
push.v arg.argument0
pop.v.v builtin.__line_spacing

:[208]
call.i @@This@@(argc=0)
ret.v

:[209]
exit.i

:[210]
push.i [function]gml_Script_line_spacing@anon@17446@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.line_spacing
b [220]

> gml_Script_padding@anon@17774@__scribble_class_element@__scribble_class_element (locals=0, argc=4)
:[211]
push.v arg.argument0
push.v builtin.__padding_l
cmp.v.v NEQ
bt [215]

:[212]
push.v arg.argument1
push.v builtin.__padding_t
cmp.v.v NEQ
bt [215]

:[213]
push.v arg.argument2
push.v builtin.__padding_r
cmp.v.v NEQ
bt [215]

:[214]
push.v arg.argument3
push.v builtin.__padding_b
cmp.v.v NEQ
b [216]

:[215]
push.e 1

:[216]
bf [218]

:[217]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__matrix_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
push.v arg.argument0
pop.v.v builtin.__padding_l
push.v arg.argument1
pop.v.v builtin.__padding_t
push.v arg.argument2
pop.v.v builtin.__padding_r
push.v arg.argument3
pop.v.v builtin.__padding_b

:[218]
call.i @@This@@(argc=0)
ret.v

:[219]
exit.i

:[220]
push.i [function]gml_Script_padding@anon@17774@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.padding
b [225]

> gml_Script_visual_bboxes@anon@18348@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[221]
push.v builtin.__visual_bboxes
push.v arg.argument0
cmp.v.v NEQ
bf [223]

:[222]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__matrix_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
push.v arg.argument0
pop.v.v builtin.__visual_bboxes

:[223]
call.i @@This@@(argc=0)
ret.v

:[224]
exit.i

:[225]
push.i [function]gml_Script_visual_bboxes@anon@18348@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.visual_bboxes
b [246]

> gml_Script_bezier@anon@18921@__scribble_class_element@__scribble_class_element (locals=1, argc=8)
:[226]
pushbltn.v builtin.argument_count
pushi.e 0
cmp.i.v LTE
bf [228]

:[227]
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i array_create(argc=2)
pop.v.v local._bezier_array
b [242]

:[228]
pushbltn.v builtin.argument_count
pushi.e 8
cmp.i.v EQ
bf [241]

:[229]
push.v arg.argument0
call.i is_numeric(argc=1)
conv.v.b
not.b
bt [237]

:[230]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bt [237]

:[231]
push.v arg.argument2
call.i is_numeric(argc=1)
conv.v.b
not.b
bt [237]

:[232]
push.v arg.argument3
call.i is_numeric(argc=1)
conv.v.b
not.b
bt [237]

:[233]
push.v arg.argument4
call.i is_numeric(argc=1)
conv.v.b
not.b
bt [237]

:[234]
push.v arg.argument5
call.i is_numeric(argc=1)
conv.v.b
not.b
bt [237]

:[235]
push.v arg.argument6
call.i is_numeric(argc=1)
conv.v.b
not.b
bt [237]

:[236]
push.v arg.argument7
call.i is_numeric(argc=1)
conv.v.b
not.b
b [238]

:[237]
push.e 1

:[238]
bf [240]

:[239]
push.s ")"@372
conv.s.v
push.v arg.argument7
push.s ", "@2181
conv.s.v
push.v arg.argument6
push.s ", "@2181
conv.s.v
push.v arg.argument5
push.s ", "@2181
conv.s.v
push.v arg.argument4
push.s ", "@2181
conv.s.v
push.v arg.argument3
push.s ", "@2181
conv.s.v
push.v arg.argument2
push.s ", "@2181
conv.s.v
push.v arg.argument1
push.s ", "@2181
conv.s.v
push.v arg.argument0
push.s "Warning! One or more Bezier parameters were not numeric ("@2182
conv.s.v
call.i gml_Script___scribble_trace(argc=17)
popz.v
pushi.e 0
pop.v.i arg.argument0
pushi.e 0
pop.v.i arg.argument1
pushi.e 0
pop.v.i arg.argument2
pushi.e 0
pop.v.i arg.argument3
pushi.e 0
pop.v.i arg.argument4
pushi.e 0
pop.v.i arg.argument5
pushi.e 0
pop.v.i arg.argument6
pushi.e 0
pop.v.i arg.argument7

:[240]
b [242]

:[241]
push.s ") provided\nExpecting 0 or 8"@2184
conv.s.v
pushbltn.v builtin.argument_count
push.s "Wrong number of arguments ("@2185
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[242]
push.v arg.argument7
push.v arg.argument1
sub.v.v
push.v arg.argument6
push.v arg.argument0
sub.v.v
push.v arg.argument5
push.v arg.argument1
sub.v.v
push.v arg.argument4
push.v arg.argument0
sub.v.v
push.v arg.argument3
push.v arg.argument1
sub.v.v
push.v arg.argument2
push.v arg.argument0
sub.v.v
call.i @@NewGMLArray@@(argc=6)
pop.v.v local._bezier_array
pushloc.v local._bezier_array
push.v builtin.__bezier_array
call.i array_equals(argc=2)
conv.v.b
not.b
bf [244]

:[243]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushloc.v local._bezier_array
pop.v.v builtin.__bezier_array
pushi.e 1
pop.v.b builtin.__bezier_using

:[244]
call.i @@This@@(argc=0)
ret.v

:[245]
exit.i

:[246]
push.i [function]gml_Script_bezier@anon@18921@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.bezier
b [257]

> gml_Script_right_to_left@anon@20409@__scribble_class_element@__scribble_class_element (locals=1, argc=1)
:[247]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [249]

:[248]
pushbltn.v builtin.undefined
pop.v.v local._new_bidi_hint
b [253]

:[249]
push.v arg.argument0
conv.v.b
bf [251]

:[250]
push.l 6
conv.l.v
b [252]

:[251]
push.l 4
conv.l.v

:[252]
pop.v.v local._new_bidi_hint

:[253]
push.v builtin.__bidi_hint
pushloc.v local._new_bidi_hint
cmp.v.v NEQ
bf [255]

:[254]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushloc.v local._new_bidi_hint
pop.v.v builtin.__bidi_hint

:[255]
call.i @@This@@(argc=0)
ret.v

:[256]
exit.i

:[257]
push.i [function]gml_Script_right_to_left@anon@20409@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.right_to_left
b [277]

> gml_Script_region_detect@anon@20954@__scribble_class_element@__scribble_class_element (locals=13, argc=4)
:[258]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [260]

:[259]
pushbltn.v builtin.undefined
ret.v

:[260]
pushloc.v local._model
pushi.e -9
push.v builtin.__page
conv.v.i
push.v [array]self.__pages_array
pop.v.v local._page
pushloc.v local._page
pushi.e -9
push.v [stacktop]self.__region_array
pop.v.v local._region_array
push.v arg.argument1
push.v arg.argument0
pushloc.v local._model
call.i @@This@@(argc=0)
push.v builtin.__update_matrix
callv.v 3
pop.v.v local._matrix
push.v builtin.__matrix_inverse
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [262]

:[261]
pushi.e 2
conv.i.v
call.i matrix_get(argc=1)
pushloc.v local._matrix
call.i matrix_multiply(argc=2)
call.i gml_Script___scribble_matrix_inverse(argc=1)
pop.v.v builtin.__matrix_inverse

:[262]
pushi.e 0
conv.i.v
push.v arg.argument3
push.v arg.argument2
push.v builtin.__matrix_inverse
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vector
pushi.e -7
pushi.e 0
push.v [array]self._vector
pop.v.v local._x
pushi.e -7
pushi.e 1
push.v [array]self._vector
pop.v.v local._y
pushbltn.v builtin.undefined
pop.v.v local._found
pushloc.v local._region_array
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._i
pushloc.v local._i
pushi.e 1
add.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [275]

:[263]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._region_array
pop.v.v local._region
pushloc.v local._region
pushi.e -9
push.v [stacktop]self.bbox_array
pop.v.v local._bbox_array
pushi.e 0
pop.v.i local._j
pushloc.v local._bbox_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [272]

:[264]
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._bbox_array
pop.v.v local._bbox
pushloc.v local._x
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.x1
cmp.v.v GTE
bf [268]

:[265]
pushloc.v local._y
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.y1
cmp.v.v GTE
bf [268]

:[266]
pushloc.v local._x
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.x2
cmp.v.v LTE
bf [268]

:[267]
pushloc.v local._y
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.y2
cmp.v.v LTE
b [269]

:[268]
push.e 0

:[269]
bf [271]

:[270]
pushloc.v local._region
pushi.e -9
push.v [stacktop]self.name
pop.v.v local._found
b [272]

:[271]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [264]

:[272]
popz.i
pushloc.v local._found
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [274]

:[273]
b [275]

:[274]
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [263]

:[275]
popz.i
pushloc.v local._found
ret.v

:[276]
exit.i

:[277]
push.i [function]gml_Script_region_detect@anon@20954@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_detect
b [287]

> gml_Script_region_set_active@anon@22464@__scribble_class_element@__scribble_class_element (locals=5, argc=3)
:[278]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
not.b
bf [280]

:[279]
pushbltn.v builtin.undefined
pop.v.v builtin.__region_active
pushi.e 0
pop.v.i builtin.__region_glyph_start
pushi.e 0
pop.v.i builtin.__region_glyph_end
pushi.e 0
pop.v.i builtin.__region_colour
pushi.e 0
pop.v.i builtin.__region_blend
exit.i

:[280]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [282]

:[281]
pushbltn.v builtin.undefined
ret.v

:[282]
pushloc.v local._model
pushi.e -9
push.v builtin.__page
conv.v.i
push.v [array]self.__pages_array
pop.v.v local._page
pushloc.v local._page
pushi.e -9
push.v [stacktop]self.__region_array
pop.v.v local._region_array
pushi.e 0
pop.v.i local._i
pushloc.v local._region_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [286]

:[283]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._region_array
pop.v.v local._region
pushloc.v local._region
pushi.e -9
push.v [stacktop]self.name
push.v arg.argument0
cmp.v.v EQ
bf [285]

:[284]
push.v arg.argument0
pop.v.v builtin.__region_active
pushloc.v local._region
pushi.e -9
push.v [stacktop]self.start_glyph
pop.v.v builtin.__region_glyph_start
pushloc.v local._region
pushi.e -9
push.v [stacktop]self.end_glyph
pop.v.v builtin.__region_glyph_end
push.v arg.argument1
pop.v.v builtin.__region_colour
push.v arg.argument2
pop.v.v builtin.__region_blend
popz.i
exit.i

:[285]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [283]

:[286]
popz.i
push.s "\" not found"@2222
conv.s.v
push.v arg.argument0
push.s "Region \""@2223
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[287]
push.i [function]gml_Script_region_set_active@anon@22464@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_set_active
b [290]

> gml_Script_region_get_active@anon@23680@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[288]
push.v builtin.__region_active
ret.v

:[289]
exit.i

:[290]
push.i [function]gml_Script_region_get_active@anon@23680@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_get_active
b [293]

> gml_Script_region_clear@anon@23771@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[291]
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i @@This@@(argc=0)
push.v builtin.region_set_active
callv.v 3
popz.v
call.i @@This@@(argc=0)
ret.v

:[292]
exit.i

:[293]
push.i [function]gml_Script_region_clear@anon@23771@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_clear
b [300]

> gml_Script_region_get_bboxes@anon@23917@__scribble_class_element@__scribble_class_element (locals=1, argc=0)
:[294]
isstaticok.e
bt [296]

:[295]
setstatic.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._emptyArray

:[296]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [298]

:[297]
push.v static._emptyArray
ret.v

:[298]
pushloc.v local._model
pushi.e -9
push.v builtin.__page
conv.v.i
push.v [array]self.__pages_array
pushi.e -9
push.v [stacktop]self.__region_array
ret.v

:[299]
exit.i

:[300]
push.i [function]gml_Script_region_get_bboxes@anon@23917@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_get_bboxes
b [313]

> gml_Script___update_bbox_matrix@anon@24256@__scribble_class_element@__scribble_class_element (locals=16, argc=0)
:[301]
call.i @@This@@(argc=0)
push.v builtin.__update_scale_to_box_scale
callv.v 0
popz.v
push.v builtin.__bbox_dirty
conv.v.b
bf [312]

:[302]
pushi.e 0
pop.v.b builtin.__bbox_dirty
push.v builtin.__bbox_matrix
pop.v.v local._bbox_matrix
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [304]

:[303]
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 0
pop.v.v [array]self._bbox_matrix
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 1
pop.v.v [array]self._bbox_matrix
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 4
pop.v.v [array]self._bbox_matrix
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 5
pop.v.v [array]self._bbox_matrix
push.v builtin.__origin_x
neg.v
pushi.e -7
pushi.e 12
pop.v.v [array]self._bbox_matrix
push.v builtin.__origin_y
neg.v
pushi.e -7
pushi.e 13
pop.v.v [array]self._bbox_matrix
pushi.e 0
pop.v.i builtin.__bbox_aabb_left
pushi.e 0
pop.v.i builtin.__bbox_aabb_top
pushi.e 0
pop.v.i builtin.__bbox_aabb_right
pushi.e 0
pop.v.i builtin.__bbox_aabb_bottom
pushi.e 0
pop.v.i builtin.__bbox_obb_x0
pushi.e 0
pop.v.i builtin.__bbox_obb_y0
pushi.e 0
pop.v.i builtin.__bbox_obb_x1
pushi.e 0
pop.v.i builtin.__bbox_obb_y1
pushi.e 0
pop.v.i builtin.__bbox_obb_x2
pushi.e 0
pop.v.i builtin.__bbox_obb_y2
pushi.e 0
pop.v.i builtin.__bbox_obb_x3
pushi.e 0
pop.v.i builtin.__bbox_obb_y3
exit.i

:[304]
push.v builtin.__scale_to_box_scale
pushloc.v local._model
pushi.e -9
push.v [stacktop]self.__fit_scale
mul.v.v
push.v builtin.__post_xscale
mul.v.v
pop.v.v local._xscale
push.v builtin.__scale_to_box_scale
pushloc.v local._model
pushi.e -9
push.v [stacktop]self.__fit_scale
mul.v.v
push.v builtin.__post_yscale
mul.v.v
pop.v.v local._yscale
pushloc.v local._model
push.v builtin.__padding_b
push.v builtin.__padding_r
push.v builtin.__padding_t
push.v builtin.__padding_l
push.v builtin.__page
dup.v 5 8
dup.v 0
push.v stacktop.__get_bbox
callv.v 5
pop.v.v local._bbox
pushi.e 1
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.right
add.v.i
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.left
sub.v.v
pop.v.v builtin.__bbox_raw_width
pushi.e 1
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.bottom
add.v.i
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.top
sub.v.v
pop.v.v builtin.__bbox_raw_height
pushloc.v local._xscale
pushi.e 1
cmp.i.v EQ
bf [307]

:[305]
pushloc.v local._yscale
pushi.e 1
cmp.i.v EQ
bf [307]

:[306]
push.v builtin.__post_angle
pushi.e 0
cmp.i.v EQ
b [308]

:[307]
push.e 0

:[308]
bf [310]

:[309]
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 0
pop.v.v [array]self._bbox_matrix
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 1
pop.v.v [array]self._bbox_matrix
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 4
pop.v.v [array]self._bbox_matrix
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 5
pop.v.v [array]self._bbox_matrix
push.v builtin.__origin_x
neg.v
pushi.e -7
pushi.e 12
pop.v.v [array]self._bbox_matrix
push.v builtin.__origin_y
neg.v
pushi.e -7
pushi.e 13
pop.v.v [array]self._bbox_matrix
push.v builtin.__origin_x
neg.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.left
add.v.v
pop.v.v builtin.__bbox_aabb_left
push.v builtin.__origin_y
neg.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.top
add.v.v
pop.v.v builtin.__bbox_aabb_top
push.v builtin.__origin_x
neg.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.right
add.v.v
pop.v.v builtin.__bbox_aabb_right
push.v builtin.__origin_y
neg.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.bottom
add.v.v
pop.v.v builtin.__bbox_aabb_bottom
push.v builtin.__bbox_aabb_left
pop.v.v builtin.__bbox_obb_x0
push.v builtin.__bbox_aabb_top
pop.v.v builtin.__bbox_obb_y0
push.v builtin.__bbox_aabb_right
pop.v.v builtin.__bbox_obb_x1
push.v builtin.__bbox_aabb_top
pop.v.v builtin.__bbox_obb_y1
push.v builtin.__bbox_aabb_left
pop.v.v builtin.__bbox_obb_x2
push.v builtin.__bbox_aabb_bottom
pop.v.v builtin.__bbox_obb_y2
push.v builtin.__bbox_aabb_right
pop.v.v builtin.__bbox_obb_x3
push.v builtin.__bbox_aabb_bottom
pop.v.v builtin.__bbox_obb_y3
b [311]

:[310]
push.v builtin.__post_angle
neg.v
call.i dsin(argc=1)
pop.v.v local._sin
push.v builtin.__post_angle
neg.v
call.i dcos(argc=1)
pop.v.v local._cos
pushloc.v local._xscale
pushloc.v local._sin
mul.v.v
pop.v.v local._xSin
pushloc.v local._xscale
pushloc.v local._cos
mul.v.v
pop.v.v local._xCos
pushloc.v local._yscale
pushloc.v local._sin
mul.v.v
pop.v.v local._ySin
pushloc.v local._yscale
pushloc.v local._cos
mul.v.v
pop.v.v local._yCos
pushloc.v local._xCos
pushi.e -7
pushi.e 0
pop.v.v [array]self._bbox_matrix
pushloc.v local._xSin
pushi.e -7
pushi.e 1
pop.v.v [array]self._bbox_matrix
pushloc.v local._ySin
neg.v
pushi.e -7
pushi.e 4
pop.v.v [array]self._bbox_matrix
pushloc.v local._yCos
pushi.e -7
pushi.e 5
pop.v.v [array]self._bbox_matrix
push.v builtin.__origin_x
pushloc.v local._xCos
mul.v.v
push.v builtin.__origin_y
pushloc.v local._ySin
mul.v.v
sub.v.v
neg.v
pushi.e -7
pushi.e 12
pop.v.v [array]self._bbox_matrix
push.v builtin.__origin_x
pushloc.v local._xSin
mul.v.v
push.v builtin.__origin_y
pushloc.v local._yCos
mul.v.v
add.v.v
neg.v
pushi.e -7
pushi.e 13
pop.v.v [array]self._bbox_matrix
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.left
pop.v.v local._l
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.top
pop.v.v local._t
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.right
pop.v.v local._r
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.bottom
pop.v.v local._b
pushi.e 0
conv.i.v
pushloc.v local._t
pushloc.v local._l
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
pushi.e -7
pushi.e 0
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_x0
pushi.e -7
pushi.e 1
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_y0
pushi.e 0
conv.i.v
pushloc.v local._t
pushloc.v local._r
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
pushi.e -7
pushi.e 0
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_x1
pushi.e -7
pushi.e 1
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_y1
pushi.e 0
conv.i.v
pushloc.v local._b
pushloc.v local._l
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
pushi.e -7
pushi.e 0
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_x2
pushi.e -7
pushi.e 1
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_y2
pushi.e 0
conv.i.v
pushloc.v local._b
pushloc.v local._r
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
pushi.e -7
pushi.e 0
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_x3
pushi.e -7
pushi.e 1
push.v [array]self._vertex
pop.v.v builtin.__bbox_obb_y3
push.v builtin.__bbox_obb_x3
push.v builtin.__bbox_obb_x2
push.v builtin.__bbox_obb_x1
push.v builtin.__bbox_obb_x0
call.i min(argc=4)
pop.v.v builtin.__bbox_aabb_left
push.v builtin.__bbox_obb_y3
push.v builtin.__bbox_obb_y2
push.v builtin.__bbox_obb_y1
push.v builtin.__bbox_obb_y0
call.i min(argc=4)
pop.v.v builtin.__bbox_aabb_top
push.v builtin.__bbox_obb_x3
push.v builtin.__bbox_obb_x2
push.v builtin.__bbox_obb_x1
push.v builtin.__bbox_obb_x0
call.i max(argc=4)
pop.v.v builtin.__bbox_aabb_right
push.v builtin.__bbox_obb_y3
push.v builtin.__bbox_obb_y2
push.v builtin.__bbox_obb_y1
push.v builtin.__bbox_obb_y0
call.i max(argc=4)
pop.v.v builtin.__bbox_aabb_bottom

:[311]
pushi.e 1
push.v builtin.__bbox_aabb_right
add.v.i
push.v builtin.__bbox_aabb_left
sub.v.v
pop.v.v builtin.__bbox_aabb_width
pushi.e 1
push.v builtin.__bbox_aabb_bottom
add.v.i
push.v builtin.__bbox_aabb_top
sub.v.v
pop.v.v builtin.__bbox_aabb_height

:[312]
exit.i

:[313]
push.i [function]gml_Script___update_bbox_matrix@anon@24256@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__update_bbox_matrix
b [318]

> gml_Script_get_left@anon@29049@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[314]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [316]

:[315]
pushi.e 0
pop.v.i builtin.argument0

:[316]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v builtin.__bbox_aabb_left
push.v arg.argument0
add.v.v
ret.v

:[317]
exit.i

:[318]
push.i [function]gml_Script_get_left@anon@29049@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_left
b [323]

> gml_Script_get_top@anon@29180@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[319]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [321]

:[320]
pushi.e 0
pop.v.i builtin.argument0

:[321]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v builtin.__bbox_aabb_top
push.v arg.argument0
add.v.v
ret.v

:[322]
exit.i

:[323]
push.i [function]gml_Script_get_top@anon@29180@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_top
b [328]

> gml_Script_get_right@anon@29312@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[324]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [326]

:[325]
pushi.e 0
pop.v.i builtin.argument0

:[326]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v builtin.__bbox_aabb_right
push.v arg.argument0
add.v.v
ret.v

:[327]
exit.i

:[328]
push.i [function]gml_Script_get_right@anon@29312@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_right
b [333]

> gml_Script_get_bottom@anon@29447@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[329]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [331]

:[330]
pushi.e 0
pop.v.i builtin.argument0

:[331]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v builtin.__bbox_aabb_bottom
push.v arg.argument0
add.v.v
ret.v

:[332]
exit.i

:[333]
push.i [function]gml_Script_get_bottom@anon@29447@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_bottom
b [336]

> gml_Script_get_width@anon@29582@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[334]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v builtin.__bbox_raw_width
ret.v

:[335]
exit.i

:[336]
push.i [function]gml_Script_get_width@anon@29582@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_width
b [339]

> gml_Script_get_height@anon@29705@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[337]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v builtin.__bbox_raw_height
ret.v

:[338]
exit.i

:[339]
push.i [function]gml_Script_get_height@anon@29705@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_height
b [348]

> gml_Script_get_bbox@anon@29863@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[340]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [342]

:[341]
pushi.e 0
pop.v.i builtin.argument0

:[342]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [344]

:[343]
pushi.e 0
pop.v.i builtin.argument1

:[344]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v arg.argument1
push.v builtin.__bbox_obb_y3
add.v.v
push.v arg.argument0
push.v builtin.__bbox_obb_x3
add.v.v
push.v arg.argument1
push.v builtin.__bbox_obb_y2
add.v.v
push.v arg.argument0
push.v builtin.__bbox_obb_x2
add.v.v
push.v arg.argument1
push.v builtin.__bbox_obb_y1
add.v.v
push.v arg.argument0
push.v builtin.__bbox_obb_x1
add.v.v
push.v arg.argument1
push.v builtin.__bbox_obb_y0
add.v.v
push.v arg.argument0
push.v builtin.__bbox_obb_x0
add.v.v
push.v builtin.__bbox_aabb_height
push.v builtin.__bbox_aabb_width
push.v arg.argument1
push.v builtin.__bbox_aabb_bottom
add.v.v
push.v arg.argument0
push.v builtin.__bbox_aabb_right
add.v.v
push.v arg.argument1
push.v builtin.__bbox_aabb_top
add.v.v
push.v arg.argument0
push.v builtin.__bbox_aabb_left
add.v.v
push.v arg.argument1
push.v arg.argument0
b [346]

> gml_Script____struct___33@get_bbox@anon@29863@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[345]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.top
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.bottom
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.width
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.height
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.x0
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.y0
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v self.x1
pushi.e -15
pushi.e 11
push.v [array]self.argument
pop.v.v self.y1
pushi.e -15
pushi.e 12
push.v [array]self.argument
pop.v.v self.x2
pushi.e -15
pushi.e 13
push.v [array]self.argument
pop.v.v self.y2
pushi.e -15
pushi.e 14
push.v [array]self.argument
pop.v.v self.x3
pushi.e -15
pushi.e 15
push.v [array]self.argument
pop.v.v self.y3
exit.i

:[346]
push.i [function]gml_Script____struct___33@get_bbox@anon@29863@__scribble_class_element@__scribble_class_element
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___33
call.i @@NewGMLObject@@(argc=17)
ret.v

:[347]
exit.i

:[348]
push.i [function]gml_Script_get_bbox@anon@29863@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_bbox
b [373]

> gml_Script_get_bbox_revealed@anon@30662@__scribble_class_element@__scribble_class_element (locals=17, argc=3)
:[349]
push.v arg.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [351]

:[350]
push.v builtin.__tw_reveal
pushbltn.v builtin.undefined
cmp.v.v EQ
b [352]

:[351]
push.e 0

:[352]
bf [354]

:[353]
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_bbox
callv.v 2
ret.v

:[354]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [358]

:[355]
push.v arg.argument1
push.v arg.argument0
push.v arg.argument1
push.v arg.argument0
push.v arg.argument1
push.v arg.argument0
push.v arg.argument1
push.v arg.argument0
push.v arg.argument1
push.v arg.argument0
push.v arg.argument1
push.v arg.argument0
b [357]

> gml_Script____struct___34@get_bbox_revealed@anon@30662@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[356]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.top
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.bottom
pushi.e 1
pop.v.i self.width
pushi.e 1
pop.v.i self.height
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.x0
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.y0
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.x1
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.y1
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.x2
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.y2
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v self.x3
pushi.e -15
pushi.e 11
push.v [array]self.argument
pop.v.v self.y3
exit.i

:[357]
push.i [function]gml_Script____struct___34@get_bbox_revealed@anon@30662@__scribble_class_element@__scribble_class_element
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___34
call.i @@NewGMLObject@@(argc=13)
ret.v

:[358]
push.v arg.argument2
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [360]

:[359]
pushloc.v local._model
push.v builtin.__padding_b
push.v builtin.__padding_r
push.v builtin.__padding_t
push.v builtin.__padding_l
push.v arg.argument2
pushi.e -9
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.__window_index
conv.v.i
push.v [array]self.__window_array
pushi.e 0
conv.i.v
push.v builtin.__page
dup.v 7 8
dup.v 0
push.v stacktop.__get_bbox_revealed
callv.v 7
pop.v.v local._bbox
b [362]

:[360]
push.v builtin.__tw_reveal
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [362]

:[361]
pushloc.v local._model
push.v builtin.__padding_b
push.v builtin.__padding_r
push.v builtin.__padding_t
push.v builtin.__padding_l
push.v builtin.__tw_reveal
pushi.e 0
conv.i.v
push.v builtin.__page
dup.v 7 8
dup.v 0
push.v stacktop.__get_bbox_revealed
callv.v 7
pop.v.v local._bbox

:[362]
call.i @@This@@(argc=0)
push.v builtin.__update_bbox_matrix
callv.v 0
popz.v
push.v builtin.__scale_to_box_scale
pushloc.v local._model
pushi.e -9
push.v [stacktop]self.__fit_scale
mul.v.v
push.v builtin.__post_xscale
mul.v.v
pop.v.v local._xscale
push.v builtin.__scale_to_box_scale
pushloc.v local._model
pushi.e -9
push.v [stacktop]self.__fit_scale
mul.v.v
push.v builtin.__post_yscale
mul.v.v
pop.v.v local._yscale
pushloc.v local._xscale
pushi.e 1
cmp.i.v EQ
bf [365]

:[363]
pushloc.v local._yscale
pushi.e 1
cmp.i.v EQ
bf [365]

:[364]
push.v builtin.__post_angle
pushi.e 0
cmp.i.v EQ
b [366]

:[365]
push.e 0

:[366]
bf [368]

:[367]
push.v arg.argument0
push.v builtin.__origin_x
sub.v.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.left
add.v.v
pop.v.v local._l
push.v arg.argument1
push.v builtin.__origin_y
sub.v.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.top
add.v.v
pop.v.v local._t
push.v arg.argument0
push.v builtin.__origin_x
sub.v.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.right
add.v.v
pop.v.v local._r
push.v arg.argument1
push.v builtin.__origin_y
sub.v.v
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.bottom
add.v.v
pop.v.v local._b
pushloc.v local._l
pop.v.v local._x0
pushloc.v local._t
pop.v.v local._y0
pushloc.v local._r
pop.v.v local._x1
pushloc.v local._t
pop.v.v local._y1
pushloc.v local._l
pop.v.v local._x2
pushloc.v local._b
pop.v.v local._y2
pushloc.v local._r
pop.v.v local._x3
pushloc.v local._b
pop.v.v local._y3
b [369]

:[368]
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.left
pop.v.v local._l
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.top
pop.v.v local._t
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.right
pop.v.v local._r
pushloc.v local._bbox
pushi.e -9
push.v [stacktop]self.bottom
pop.v.v local._b
pushi.e 0
conv.i.v
pushloc.v local._t
pushloc.v local._l
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._vertex
add.v.v
pop.v.v local._x0
push.v arg.argument1
pushi.e -7
pushi.e 1
push.v [array]self._vertex
add.v.v
pop.v.v local._y0
pushi.e 0
conv.i.v
pushloc.v local._t
pushloc.v local._r
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._vertex
add.v.v
pop.v.v local._x1
push.v arg.argument1
pushi.e -7
pushi.e 1
push.v [array]self._vertex
add.v.v
pop.v.v local._y1
pushi.e 0
conv.i.v
pushloc.v local._b
pushloc.v local._l
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._vertex
add.v.v
pop.v.v local._x2
push.v arg.argument1
pushi.e -7
pushi.e 1
push.v [array]self._vertex
add.v.v
pop.v.v local._y2
pushi.e 0
conv.i.v
pushloc.v local._b
pushloc.v local._r
push.v builtin.__bbox_matrix
call.i matrix_transform_vertex(argc=4)
pop.v.v local._vertex
push.v arg.argument0
pushi.e -7
pushi.e 0
push.v [array]self._vertex
add.v.v
pop.v.v local._x3
push.v arg.argument1
pushi.e -7
pushi.e 1
push.v [array]self._vertex
add.v.v
pop.v.v local._y3
pushloc.v local._x3
pushloc.v local._x2
pushloc.v local._x1
pushloc.v local._x0
call.i min(argc=4)
pop.v.v local._l
pushloc.v local._y3
pushloc.v local._y2
pushloc.v local._y1
pushloc.v local._y0
call.i min(argc=4)
pop.v.v local._t
pushloc.v local._x3
pushloc.v local._x2
pushloc.v local._x1
pushloc.v local._x0
call.i max(argc=4)
pop.v.v local._r
pushloc.v local._y3
pushloc.v local._y2
pushloc.v local._y1
pushloc.v local._y0
call.i max(argc=4)
pop.v.v local._b

:[369]
pushloc.v local._y3
pushloc.v local._x3
pushloc.v local._y2
pushloc.v local._x2
pushloc.v local._y1
pushloc.v local._x1
pushloc.v local._y0
pushloc.v local._x0
pushi.e 1
pushloc.v local._b
add.v.i
pushloc.v local._t
sub.v.v
pushi.e 1
pushloc.v local._r
add.v.i
pushloc.v local._l
sub.v.v
pushloc.v local._b
pushloc.v local._r
pushloc.v local._t
pushloc.v local._l
b [371]

> gml_Script____struct___35@get_bbox_revealed@anon@30662@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[370]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.top
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.bottom
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.width
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.height
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.x0
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.y0
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.x1
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.y1
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v self.x2
pushi.e -15
pushi.e 11
push.v [array]self.argument
pop.v.v self.y2
pushi.e -15
pushi.e 12
push.v [array]self.argument
pop.v.v self.x3
pushi.e -15
pushi.e 13
push.v [array]self.argument
pop.v.v self.y3
exit.i

:[371]
push.i [function]gml_Script____struct___35@get_bbox_revealed@anon@30662@__scribble_class_element@__scribble_class_element
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___35
call.i @@NewGMLObject@@(argc=15)
ret.v

:[372]
exit.i

:[373]
push.i [function]gml_Script_get_bbox_revealed@anon@30662@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_bbox_revealed
b [386]

> gml_Script_page@anon@34003@__scribble_class_element@__scribble_class_element (locals=2, argc=1)
:[374]
push.v builtin.__page
pop.v.v local._old_page
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
bf [381]

:[375]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [377]

:[376]
push.s "Warning! Cannot set a text element's page to less than 0"@2297
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
pushi.e 0
pop.v.i builtin.__page
b [380]

:[377]
push.v arg.argument0
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_page_count
callv.v 0
pushi.e 1
sub.i.v
cmp.v.v GT
bf [379]

:[378]
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_page_count
callv.v 0
pushi.e 1
sub.i.v
pop.v.v builtin.__page
push.s " (pages are 0-indexed)"@2299
conv.s.v
push.v builtin.__page
push.s " is too big. Valid pages are from 0 to "@2300
conv.s.v
push.v arg.argument0
push.s "Warning! Page "@2301
conv.s.v
call.i gml_Script___scribble_trace(argc=5)
popz.v
b [380]

:[379]
push.v arg.argument0
pop.v.v builtin.__page

:[380]
b [382]

:[381]
pushi.e 0
pop.v.i builtin.__page

:[382]
pushloc.v local._old_page
push.v builtin.__page
cmp.v.v NEQ
bf [384]

:[383]
pushi.e 1
pop.v.b builtin.__bbox_dirty

:[384]
call.i @@This@@(argc=0)
ret.v

:[385]
exit.i

:[386]
push.i [function]gml_Script_page@anon@34003@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.page
b [389]

> gml_Script_get_page@anon@34903@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[387]
push.v builtin.__page
ret.v

:[388]
exit.i

:[389]
push.i [function]gml_Script_get_page@anon@34903@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_page
b [391]

> gml_Script_get_pages@anon@34982@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[390]
push.s ".get_pages() has been replaced by .get_page_count()"@2306
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[391]
push.i [function]gml_Script_get_pages@anon@34982@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_pages
b [396]

> gml_Script_get_page_count@anon@35124@__scribble_class_element@__scribble_class_element (locals=1, argc=0)
:[392]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [394]

:[393]
pushi.e 0
conv.i.v
ret.v

:[394]
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_page_count
callv.v 0
ret.v

:[395]
exit.i

:[396]
push.i [function]gml_Script_get_page_count@anon@35124@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_page_count
b [399]

> gml_Script_on_last_page@anon@35309@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[397]
call.i @@This@@(argc=0)
push.v builtin.get_page
callv.v 0
call.i @@This@@(argc=0)
push.v builtin.get_page_count
callv.v 0
pushi.e 1
sub.i.v
cmp.v.v GTE
conv.b.v
ret.v

:[398]
exit.i

:[399]
push.i [function]gml_Script_on_last_page@anon@35309@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.on_last_page
b [404]

> gml_Script_get_wrapped@anon@35487@__scribble_class_element@__scribble_class_element (locals=1, argc=0)
:[400]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [402]

:[401]
pushi.e 0
conv.b.v
ret.v

:[402]
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_wrapped
callv.v 0
ret.v

:[403]
exit.i

:[404]
push.i [function]gml_Script_get_wrapped@anon@35487@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_wrapped
b [411]

> gml_Script_get_text@anon@35692@__scribble_class_element@__scribble_class_element (locals=1, argc=1)
:[405]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [407]

:[406]
push.v builtin.__page
pop.v.v builtin.argument0

:[407]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [409]

:[408]
push.s ""@61
conv.s.v
ret.v

:[409]
pushloc.v local._model
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.__get_text
callv.v 1
ret.v

:[410]
exit.i

:[411]
push.i [function]gml_Script_get_text@anon@35692@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_text
b [418]

> gml_Script_get_line_data@anon@35915@__scribble_class_element@__scribble_class_element (locals=1, argc=2)
:[412]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [414]

:[413]
push.v builtin.__page
pop.v.v builtin.argument1

:[414]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [416]

:[415]
pushbltn.v builtin.undefined
ret.v

:[416]
pushloc.v local._model
push.v arg.argument1
push.v arg.argument0
dup.v 2 8
dup.v 0
push.v stacktop.__get_line_data
callv.v 2
ret.v

:[417]
exit.i

:[418]
push.i [function]gml_Script_get_line_data@anon@35915@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_line_data
b [425]

> gml_Script_get_glyph_data@anon@36189@__scribble_class_element@__scribble_class_element (locals=1, argc=2)
:[419]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [421]

:[420]
push.v builtin.__page
pop.v.v builtin.argument1

:[421]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
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
push.v arg.argument1
push.v arg.argument0
dup.v 2 8
dup.v 0
push.v stacktop.__get_glyph_data
callv.v 2
ret.v

:[424]
exit.i

:[425]
push.i [function]gml_Script_get_glyph_data@anon@36189@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_glyph_data
b [432]

> gml_Script_get_glyph_count@anon@36443@__scribble_class_element@__scribble_class_element (locals=1, argc=1)
:[426]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [428]

:[427]
push.v builtin.__page
pop.v.v builtin.argument0

:[428]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [430]

:[429]
pushi.e 0
conv.i.v
ret.v

:[430]
pushloc.v local._model
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.__get_glyph_count
callv.v 1
ret.v

:[431]
exit.i

:[432]
push.i [function]gml_Script_get_glyph_count@anon@36443@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_glyph_count
b [439]

> gml_Script_get_line_count@anon@36673@__scribble_class_element@__scribble_class_element (locals=1, argc=1)
:[433]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [435]

:[434]
push.v builtin.__page
pop.v.v builtin.argument0

:[435]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [437]

:[436]
pushi.e 0
conv.i.v
ret.v

:[437]
pushloc.v local._model
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.__get_line_count
callv.v 1
ret.v

:[438]
exit.i

:[439]
push.i [function]gml_Script_get_line_count@anon@36673@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_line_count
b [446]

> gml_Script_pre_update_typist@anon@36946@__scribble_class_element@__scribble_class_element (locals=1, argc=1)
:[440]
call.i @@Other@@(argc=0)
pop.v.v local._function_scope
push.v arg.argument0
call.i is_struct(argc=1)
conv.v.b
bf [444]

:[441]
push.v arg.argument0
pushi.e -9
pushenv [443]

:[442]
pushloc.v local._function_scope
call.i @@Other@@(argc=0)
call.i @@This@@(argc=0)
push.v builtin.__tick
callv.v 2
popz.v

:[443]
popenv [442]

:[444]
call.i @@This@@(argc=0)
ret.v

:[445]
exit.i

:[446]
push.i [function]gml_Script_pre_update_typist@anon@36946@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.pre_update_typist
b [451]

> gml_Script_reveal@anon@37286@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[447]
push.v builtin.__tw_reveal
push.v arg.argument0
cmp.v.v NEQ
bf [449]

:[448]
push.v arg.argument0
pop.v.v builtin.__tw_reveal
push.v arg.argument0
pushi.e -6
pushi.e 0
pop.v.v [array]self.__tw_reveal_window_array

:[449]
call.i @@This@@(argc=0)
ret.v

:[450]
exit.i

:[451]
push.i [function]gml_Script_reveal@anon@37286@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.reveal
b [454]

> gml_Script_get_reveal@anon@37542@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[452]
push.v builtin.__tw_reveal
ret.v

:[453]
exit.i

:[454]
push.i [function]gml_Script_get_reveal@anon@37542@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_reveal
b [456]

> gml_Script_animation_tick_speed@anon@37700@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[455]
push.s ".animation_tick_speed() has been replaced by .animation_speed()"@2339
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[456]
push.i [function]gml_Script_animation_tick_speed@anon@37700@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_tick_speed
b [459]

> gml_Script_set_animation_time@anon@37858@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[457]
push.v arg.argument0
pop.v.v builtin.__animation_time
call.i @@This@@(argc=0)
ret.v

:[458]
exit.i

:[459]
push.i [function]gml_Script_set_animation_time@anon@37858@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.set_animation_time
b [462]

> gml_Script_get_animation_time@anon@37984@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[460]
push.v builtin.__animation_time
ret.v

:[461]
exit.i

:[462]
push.i [function]gml_Script_get_animation_time@anon@37984@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_animation_time
b [465]

> gml_Script_animation_speed@anon@38079@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[463]
push.v arg.argument0
pop.v.v builtin.__animation_speed
call.i @@This@@(argc=0)
ret.v

:[464]
exit.i

:[465]
push.i [function]gml_Script_animation_speed@anon@38079@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_speed
b [468]

> gml_Script_get_animation_speed@anon@38219@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[466]
push.v builtin.__animation_speed
ret.v

:[467]
exit.i

:[468]
push.i [function]gml_Script_get_animation_speed@anon@38219@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_animation_speed
b [473]

> gml_Script_is_animated@anon@38311@__scribble_class_element@__scribble_class_element (locals=1, argc=0)
:[469]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [471]

:[470]
pushi.e 0
conv.b.v
ret.v

:[471]
pushloc.v local._model
pushi.e -9
push.v [stacktop]self.__has_animation
ret.v

:[472]
exit.i

:[473]
push.i [function]gml_Script_is_animated@anon@38311@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.is_animated
b [475]

> gml_Script_animation_sync@anon@38509@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[474]
push.s ".animation_sync() has been removed\nPlease get in touch if this feature is essential for your project"@2353
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[475]
push.i [function]gml_Script_animation_sync@anon@38509@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_sync
b [477]

> gml_Script_animation_wave@anon@38701@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[476]
push.s ".animation_wave() has been replaced by scribble_anim_wave()"@2356
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[477]
push.i [function]gml_Script_animation_wave@anon@38701@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_wave
b [479]

> gml_Script_animation_shake@anon@38852@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[478]
push.s ".animation_wave() has been replaced by scribble_anim_shake()"@2359
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[479]
push.i [function]gml_Script_animation_shake@anon@38852@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_shake
b [481]

> gml_Script_animation_rainbow@anon@39006@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[480]
push.s ".animation_rainbow() has been replaced by scribble_anim_rainbow()"@2362
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[481]
push.i [function]gml_Script_animation_rainbow@anon@39006@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_rainbow
b [483]

> gml_Script_animation_wobble@anon@39164@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[482]
push.s ".animation_wobble() has been replaced by scribble_anim_wobble()"@2365
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[483]
push.i [function]gml_Script_animation_wobble@anon@39164@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_wobble
b [485]

> gml_Script_animation_pulse@anon@39319@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[484]
push.s ".animation_pulse() has been replaced by scribble_anim_pulse()"@2368
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[485]
push.i [function]gml_Script_animation_pulse@anon@39319@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_pulse
b [487]

> gml_Script_animation_wheel@anon@39472@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[486]
push.s ".animation_wheel() has been replaced by scribble_anim_wheel()"@2371
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[487]
push.i [function]gml_Script_animation_wheel@anon@39472@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_wheel
b [489]

> gml_Script_animation_cycle@anon@39625@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[488]
push.s ".animation_cycle() has been replaced by scribble_anim_cycle()"@2374
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[489]
push.i [function]gml_Script_animation_cycle@anon@39625@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_cycle
b [491]

> gml_Script_animation_jitter@anon@39779@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[490]
push.s ".animation_jitter() has been replaced by scribble_anim_jitter()"@2377
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[491]
push.i [function]gml_Script_animation_jitter@anon@39779@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_jitter
b [493]

> gml_Script_animation_blink@anon@39934@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[492]
push.s ".animation_blink() has been replaced by scribble_anim_blink()"@2380
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[493]
push.i [function]gml_Script_animation_blink@anon@39934@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_blink
b [496]

> gml_Script_shadow@anon@40148@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[494]
push.v arg.argument0
pop.v.v builtin.__sdf_shadow_colour
push.v arg.argument1
pop.v.v builtin.__sdf_shadow_alpha
pushi.e 0
pop.v.i builtin.__sdf_shadow_xoffset
pushi.e 0
pop.v.i builtin.__sdf_shadow_yoffset
pushi.e 0
pop.v.i builtin.__sdf_shadow_softness
call.i @@This@@(argc=0)
ret.v

:[495]
exit.i

:[496]
push.i [function]gml_Script_shadow@anon@40148@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.shadow
b [499]

> gml_Script_outline@anon@40439@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[497]
push.v arg.argument0
pop.v.v builtin.__sdf_outline_colour
pushi.e 0
pop.v.i builtin.__sdf_outline_thickness
call.i @@This@@(argc=0)
ret.v

:[498]
exit.i

:[499]
push.i [function]gml_Script_outline@anon@40439@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.outline
b [510]

> gml_Script_sdf_shadow@anon@40673@__scribble_class_element@__scribble_class_element (locals=0, argc=5)
:[500]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [502]

:[501]
push.d 0.25
pop.v.d builtin.argument4

:[502]
push.v arg.argument0
pop.v.v builtin.__sdf_shadow_colour
push.v arg.argument1
pop.v.v builtin.__sdf_shadow_alpha
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [504]

:[503]
pushi.e 0
conv.i.v
b [505]

:[504]
push.v arg.argument2

:[505]
pop.v.v builtin.__sdf_shadow_xoffset
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [507]

:[506]
pushi.e 0
conv.i.v
b [508]

:[507]
push.v arg.argument3

:[508]
pop.v.v builtin.__sdf_shadow_yoffset
push.v arg.argument4
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v builtin.__sdf_shadow_softness
call.i @@This@@(argc=0)
ret.v

:[509]
exit.i

:[510]
push.i [function]gml_Script_sdf_shadow@anon@40673@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sdf_shadow
b [513]

> gml_Script_sdf_border@anon@41117@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[511]
push.v arg.argument0
pop.v.v builtin.__sdf_outline_colour
push.v arg.argument1
pop.v.v builtin.__sdf_outline_thickness
call.i @@This@@(argc=0)
ret.v

:[512]
exit.i

:[513]
push.i [function]gml_Script_sdf_border@anon@41117@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sdf_border
b [516]

> gml_Script_sdf_outline@anon@41316@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[514]
push.v arg.argument0
pop.v.v builtin.__sdf_outline_colour
push.v arg.argument1
pop.v.v builtin.__sdf_outline_thickness
call.i @@This@@(argc=0)
ret.v

:[515]
exit.i

:[516]
push.i [function]gml_Script_sdf_outline@anon@41316@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sdf_outline
b [521]

> gml_Script_msdf_shadow@anon@41515@__scribble_class_element@__scribble_class_element (locals=0, argc=5)
:[517]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [519]

:[518]
push.d 0.25
pop.v.d builtin.argument4

:[519]
push.s ".msdf_shadow(), and MSDF fonts as a whole, have been removed from Scribble\nInstead, please use GameMaker's native SDF fonts"@2398
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
call.i @@This@@(argc=0)
ret.v

:[520]
exit.i

:[521]
push.i [function]gml_Script_msdf_shadow@anon@41515@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.msdf_shadow
b [524]

> gml_Script_msdf_border@anon@41804@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[522]
push.s ".msdf_border(), and MSDF fonts as a whole, have been removed from Scribble\nInstead, please use GameMaker's native SDF fonts"@2401
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
call.i @@This@@(argc=0)
ret.v

:[523]
exit.i

:[524]
push.i [function]gml_Script_msdf_border@anon@41804@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.msdf_border
b [527]

> gml_Script_msdf_feather@anon@42058@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[525]
push.s ".msdf_feather(), and MSDF fonts as a whole, have been removed from Scribble\nInstead, please use GameMaker's native SDF fonts"@2404
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
call.i @@This@@(argc=0)
ret.v

:[526]
exit.i

:[527]
push.i [function]gml_Script_msdf_feather@anon@42058@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.msdf_feather
b [532]

> gml_Script_build@anon@42391@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[528]
isstaticok.e
bt [530]

:[529]
setstatic.e
push.i [function]gml_Script___scribble_class_null_element
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v static._null

:[530]
push.v arg.argument0
pop.v.v builtin.__freeze
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
popz.v
push.v static._null
ret.v

:[531]
exit.i

:[532]
push.i [function]gml_Script_build@anon@42391@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.build
b [537]

> gml_Script_refresh@anon@42746@__scribble_class_element@__scribble_class_element (locals=1, argc=0)
:[533]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [535]

:[534]
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__flush
callv.v 0
popz.v
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__matrix_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
popz.v

:[535]
call.i @@This@@(argc=0)
ret.v

:[536]
exit.i

:[537]
push.i [function]gml_Script_refresh@anon@42746@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.refresh
b [546]

> gml_Script_flush@anon@43202@__scribble_class_element@__scribble_class_element (locals=2, argc=0)
:[538]
push.v builtin.__flushed
conv.v.b
bf [540]

:[539]
pushbltn.v builtin.undefined
ret.v

:[540]
push.v builtin.__cache_name
push.v builtin.__ecache_dict
call.i variable_struct_remove(argc=2)
popz.v
push.v builtin.__ecache_array
pop.v.v local._array
pushi.e 0
pop.v.i local._i
pushloc.v local._array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [545]

:[541]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
call.i @@This@@(argc=0)
cmp.v.v EQ
bf [543]

:[542]
pushi.e 1
conv.i.v
pushloc.v local._i
pushloc.v local._array
call.i array_delete(argc=3)
popz.v
b [544]

:[543]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i

:[544]
pushi.e 1
sub.i.i
dup.i 0
bt [541]

:[545]
popz.i
pushi.e 1
pop.v.b builtin.__flushed
exit.i

:[546]
push.i [function]gml_Script_flush@anon@43202@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.flush
b [556]

> gml_Script_preprocessor@anon@44061@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[547]
push.v arg.argument0
push.v builtin.__preprocessorFunc
cmp.v.v NEQ
bf [554]

:[548]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [550]

:[549]
push.v arg.argument0
call.i script_exists(argc=1)
conv.v.b
not.b
b [551]

:[550]
push.e 0

:[551]
bf [553]

:[552]
push.s "Preprocessor functions must be stored in scripts in global scope"@2420
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[553]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
push.v arg.argument0
pop.v.v builtin.__preprocessorFunc

:[554]
call.i @@This@@(argc=0)
ret.v

:[555]
exit.i

:[556]
push.i [function]gml_Script_preprocessor@anon@44061@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.preprocessor
b [572]

> gml_Script_get_events@anon@44541@__scribble_class_element@__scribble_class_element (locals=4, argc=3)
:[557]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [559]

:[558]
push.v builtin.__page
pop.v.v builtin.argument1

:[559]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [561]

:[560]
pushi.e 0
pop.v.b builtin.argument2

:[561]
isstaticok.e
bt [563]

:[562]
setstatic.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._empty_array

:[563]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [565]

:[564]
push.v static._empty_array
ret.v

:[565]
pushloc.v local._model
pushi.e -9
push.v arg.argument1
conv.v.i
push.v [array]self.__pages_array
pop.v.v local._page
push.v arg.argument2
conv.v.b
bf [567]

:[566]
pushloc.v local._page
pushi.e -9
push.v [stacktop]self.__line_events
b [568]

:[567]
pushloc.v local._page
pushi.e -9
push.v [stacktop]self.__char_events

:[568]
pop.v.v local._event_struct
push.v arg.argument0
pushloc.v local._event_struct
call.i variable_struct_get(argc=2)
pop.v.v local._events
pushloc.v local._events
call.i is_array(argc=1)
conv.v.b
not.b
bf [570]

:[569]
push.v static._empty_array
ret.v

:[570]
pushloc.v local._events
ret.v

:[571]
exit.i

:[572]
push.i [function]gml_Script_get_events@anon@44541@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_events
b [596]

> gml_Script_template@anon@45168@__scribble_class_element@__scribble_class_element (locals=1, argc=2)
:[573]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [575]

:[574]
pushi.e 1
pop.v.b builtin.argument1

:[575]
push.v arg.argument0
call.i is_array(argc=1)
conv.v.b
bf [588]

:[576]
push.v arg.argument1
conv.v.b
not.b
bt [579]

:[577]
push.v builtin.__template
call.i is_array(argc=1)
conv.v.b
not.b
bt [579]

:[578]
push.v arg.argument0
push.v builtin.__template
call.i array_equals(argc=2)
conv.v.b
not.b
b [580]

:[579]
push.e 1

:[580]
bf [587]

:[581]
push.v arg.argument1
conv.v.b
bf [583]

:[582]
push.v arg.argument0
call.i array_length(argc=1)
call.i array_create(argc=1)
pop.v.v builtin.__template
push.v arg.argument0
call.i array_length(argc=1)
pushi.e 0
conv.i.v
push.v arg.argument0
pushi.e 0
conv.i.v
push.v builtin.__template
call.i array_copy(argc=5)
popz.v
b [584]

:[583]
push.v arg.argument0
pop.v.v builtin.__template

:[584]
pushi.e 0
pop.v.i local._i
push.v arg.argument0
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [586]

:[585]
call.i @@This@@(argc=0)
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
call.i @@This@@(argc=0)
call.i method(argc=2)
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [585]

:[586]
popz.i

:[587]
b [594]

:[588]
push.v arg.argument1
conv.v.b
not.b
bt [591]

:[589]
push.v builtin.__template
call.i is_array(argc=1)
conv.v.b
bt [591]

:[590]
push.v builtin.__template
push.v arg.argument0
cmp.v.v NEQ
b [592]

:[591]
push.e 1

:[592]
bf [594]

:[593]
push.v arg.argument0
pop.v.v builtin.__template
call.i @@This@@(argc=0)
push.v arg.argument0
call.i @@This@@(argc=0)
call.i method(argc=2)
callv.v 0
popz.v

:[594]
call.i @@This@@(argc=0)
ret.v

:[595]
exit.i

:[596]
push.i [function]gml_Script_template@anon@45168@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.template
b [601]

> gml_Script_ignore_command_tags@anon@46297@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[597]
push.v builtin.__ignore_command_tags
push.v arg.argument0
cmp.v.v NEQ
bf [599]

:[598]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
push.v arg.argument0
pop.v.v builtin.__ignore_command_tags

:[599]
call.i @@This@@(argc=0)
ret.v

:[600]
exit.i

:[601]
push.i [function]gml_Script_ignore_command_tags@anon@46297@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.ignore_command_tags
b [606]

> gml_Script_randomize_animation@anon@46559@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[602]
push.v builtin.__randomize_animation
push.v arg.argument0
cmp.v.v NEQ
bf [604]

:[603]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
push.v arg.argument0
pop.v.v builtin.__randomize_animation

:[604]
call.i @@This@@(argc=0)
ret.v

:[605]
exit.i

:[606]
push.i [function]gml_Script_randomize_animation@anon@46559@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.randomize_animation
b [611]

> gml_Script_allow_text_getter@anon@46819@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[607]
push.v builtin.__allow_text_getter
conv.v.b
not.b
bf [609]

:[608]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__allow_text_getter

:[609]
call.i @@This@@(argc=0)
ret.v

:[610]
exit.i

:[611]
push.i [function]gml_Script_allow_text_getter@anon@46819@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.allow_text_getter
b [616]

> gml_Script_allow_glyph_data_getter@anon@47067@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[612]
push.v builtin.__allow_glyph_data_getter
conv.v.b
not.b
bf [614]

:[613]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__allow_glyph_data_getter

:[614]
call.i @@This@@(argc=0)
ret.v

:[615]
exit.i

:[616]
push.i [function]gml_Script_allow_glyph_data_getter@anon@47067@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.allow_glyph_data_getter
b [621]

> gml_Script_allow_line_data_getter@anon@47326@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[617]
push.v builtin.__allow_line_data_getter
conv.v.b
not.b
bf [619]

:[618]
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__allow_line_data_getter

:[619]
call.i @@This@@(argc=0)
ret.v

:[620]
exit.i

:[621]
push.i [function]gml_Script_allow_line_data_getter@anon@47326@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.allow_line_data_getter
b [624]

> gml_Script_z@anon@47562@__scribble_class_element@__scribble_class_element (locals=0, argc=1)
:[622]
push.v arg.argument0
pop.v.v builtin.__z
call.i @@This@@(argc=0)
ret.v

:[623]
exit.i

:[624]
push.i [function]gml_Script_z@anon@47562@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.z
b [627]

> gml_Script_get_z@anon@47666@__scribble_class_element@__scribble_class_element (locals=0, argc=0)
:[625]
push.v builtin.__z
ret.v

:[626]
exit.i

:[627]
push.i [function]gml_Script_get_z@anon@47666@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_z
b [643]

> gml_Script_overwrite@anon@47792@__scribble_class_element@__scribble_class_element (locals=2, argc=2)
:[628]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [630]

:[629]
push.v builtin.__unique_id
pop.v.v builtin.argument1

:[630]
push.v arg.argument0
pop.v.v builtin.__text
push.v arg.argument1
pop.v.v builtin.__unique_id
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [632]

:[631]
push.s "default:"@2455
conv.s.v
b [633]

:[632]
push.v arg.argument1
call.i string(argc=1)
push.s ":"@2456
add.s.v

:[633]
push.v builtin.__text
add.v.v
pop.v.v local._new_cache_name
push.v builtin.__cache_name
pushloc.v local._new_cache_name
cmp.v.v NEQ
bf [641]

:[634]
call.i @@This@@(argc=0)
push.v builtin.flush
callv.v 0
popz.v
pushi.e 0
pop.v.b builtin.__flushed
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushloc.v local._new_cache_name
pop.v.v builtin.__cache_name
push.v builtin.__cache_name
push.v builtin.__ecache_dict
call.i variable_struct_get(argc=2)
pop.v.v local._weak
pushloc.v local._weak
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [637]

:[635]
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
bf [637]

:[636]
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
pushi.e -9
push.v [stacktop]self.__flushed
conv.v.b
not.b
b [638]

:[637]
push.e 0

:[638]
bf [640]

:[639]
push.s "\" due to cache name collision (try choosing a different unique ID)"@2461
conv.s.v
push.v builtin.__cache_name
push.s "Warning! Flushing element \""@2462
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[640]
call.i @@This@@(argc=0)
call.i weak_ref_create(argc=1)
push.v builtin.__cache_name
push.v builtin.__ecache_dict
call.i variable_struct_set(argc=3)
popz.v
call.i @@This@@(argc=0)
push.v builtin.__ecache_array
call.i array_push(argc=2)
popz.v
push.v builtin.__cache_name
push.v builtin.__ecache_name_array
call.i array_push(argc=2)
popz.v

:[641]
call.i @@This@@(argc=0)
ret.v

:[642]
exit.i

:[643]
push.i [function]gml_Script_overwrite@anon@47792@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.overwrite
b [660]

> gml_Script_debug_draw_bbox@anon@48966@__scribble_class_element@__scribble_class_element (locals=1, argc=2)
:[644]
call.i draw_get_colour(argc=0)
pop.v.v local._oldColour
pushi.e 255
conv.i.v
call.i draw_set_colour(argc=1)
popz.v
push.v builtin.__starting_halign
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [648]

:[645]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [649]

:[646]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [650]

:[647]
b [651]

:[648]
b [651]

:[649]
push.v arg.argument0
push.v builtin.__wrap_max_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v arg.argument0
b [651]

:[650]
push.v arg.argument0
push.v builtin.__wrap_max_width
sub.v.v
pop.v.v arg.argument0
b [651]

:[651]
popz.v
push.v builtin.__starting_valign
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [655]

:[652]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [656]

:[653]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [657]

:[654]
b [658]

:[655]
b [658]

:[656]
push.v arg.argument1
push.v builtin.__wrap_max_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v arg.argument1
b [658]

:[657]
push.v arg.argument1
push.v builtin.__wrap_max_height
sub.v.v
pop.v.v arg.argument1
b [658]

:[658]
popz.v
pushi.e 1
conv.b.v
push.v arg.argument1
push.v builtin.__wrap_max_height
add.v.v
push.v arg.argument0
push.v builtin.__wrap_max_width
add.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.b.v
push.v arg.argument1
pushi.e 1
sub.i.v
push.v builtin.__wrap_max_height
add.v.v
push.v arg.argument0
pushi.e 1
sub.i.v
push.v builtin.__wrap_max_width
add.v.v
push.v arg.argument1
pushi.e 1
add.i.v
push.v arg.argument0
pushi.e 1
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushloc.v local._oldColour
call.i draw_set_colour(argc=1)
popz.v
call.i @@This@@(argc=0)
ret.v

:[659]
exit.i

:[660]
push.i [function]gml_Script_debug_draw_bbox@anon@48966@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.debug_draw_bbox
b [683]

> gml_Script___get_model@anon@50005@__scribble_class_element@__scribble_class_element (locals=1, argc=1)
:[661]
isstaticok.e
bt [663]

:[662]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__mcache_dict
pop.v.v static._mcache_dict
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__buffer_a
pop.v.v static._buffer

:[663]
push.v builtin.__flushed
conv.v.b
bt [665]

:[664]
push.v builtin.__text
push.s ""@61
cmp.s.v EQ
b [666]

:[665]
push.e 1

:[666]
bf [668]

:[667]
pushbltn.v builtin.undefined
pop.v.v builtin.__model
b [681]

:[668]
push.v builtin.__model_cache_name_dirty
conv.v.b
bf [672]

:[669]
pushi.e 0
pop.v.b builtin.__model_cache_name_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v
push.v builtin.__text
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__starting_font
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__starting_colour
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__starting_halign
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__starting_valign
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__pre_scale
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__line_height_min
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__line_height_max
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__line_spacing
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__wrap_apply
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__wrap_max_width
push.v builtin.__padding_l
push.v builtin.__padding_r
add.v.v
sub.v.v
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__wrap_max_height
push.v builtin.__padding_t
push.v builtin.__padding_b
add.v.v
sub.v.v
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__wrap_per_char
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__wrap_no_pages
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__wrap_max_scale
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e -6
pushi.e 0
push.v [array]self.__bezier_array
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 44
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e -6
pushi.e 1
push.v [array]self.__bezier_array
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 44
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e -6
pushi.e 2
push.v [array]self.__bezier_array
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 44
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e -6
pushi.e 3
push.v [array]self.__bezier_array
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 44
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e -6
pushi.e 4
push.v [array]self.__bezier_array
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 44
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e -6
pushi.e 5
push.v [array]self.__bezier_array
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__bidi_hint
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__ignore_command_tags
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__randomize_animation
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__allow_text_getter
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__allow_glyph_data_getter
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__allow_line_data_getter
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__visual_bboxes
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v builtin.__preprocessorFunc
chknullish.e
bf [671]

:[670]
popz.v
pushbltn.v builtin.pointer_null

:[671]
call.i ptr(argc=1)
call.i string(argc=1)
pushi.e 13
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 58
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v
pushi.e 11
conv.i.v
push.v static._buffer
call.i buffer_read(argc=2)
pop.v.v builtin.__model_cache_name

:[672]
push.v builtin.__model_cache_name
push.v static._mcache_dict
call.i variable_struct_get(argc=2)
pop.v.v local._weak
pushloc.v local._weak
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [675]

:[673]
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
bf [675]

:[674]
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
pushi.e -9
push.v [stacktop]self.__flushed
conv.v.b
not.b
b [676]

:[675]
push.e 0

:[676]
bf [678]

:[677]
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
pop.v.v builtin.__model
b [681]

:[678]
push.v arg.argument0
conv.v.b
bf [680]

:[679]
push.v builtin.__model_cache_name
call.i @@This@@(argc=0)
push.i [function]gml_Script___scribble_class_model
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.__model
b [681]

:[680]
pushbltn.v builtin.undefined
pop.v.v builtin.__model

:[681]
push.v builtin.__model
ret.v

:[682]
exit.i

:[683]
push.i [function]gml_Script___get_model@anon@50005@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_model
b [718]

> gml_Script___set_standard_uniforms@anon@55307@__scribble_class_element@__scribble_class_element (locals=0, argc=2)
:[684]
isstaticok.e
bt [689]

:[685]
setstatic.e
push.s "u_fTime"@2484
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fTime
push.s "u_vColourBlend"@2487
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vColourBlend
push.s "u_fBlinkState"@2489
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fBlinkState
push.s "u_vGradient"@2491
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vGradient
push.s "u_vSkew"@2493
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vSkew
push.s "u_vFlash"@2495
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vFlash
push.s "u_vRegionActive"@2497
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vRegionActive
push.s "u_vRegionColour"@2499
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vRegionColour
push.s "u_aDataFields"@2501
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_aDataFields
push.s "u_aBezier"@2503
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_aBezier
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
push.s "u_vShadowOffsetAndSoftness"@2523
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vShadowOffsetAndSoftness
push.s "u_vShadowColour"@2525
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vShadowColour
push.s "u_vOutlineColour"@2527
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_vOutlineColour
push.s "u_fOutlineThickness"@2529
conv.s.v
pushref.i 134217739
call.i shader_get_uniform(argc=2)
pop.v.v static._u_fOutlineThickness
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__anim_properties
pop.v.v static._anim_properties_array
pushi.e 1
pop.v.b static._shader_uniforms_dirty
pushi.e 0
pop.v.b static._shader_set_to_use_bezier
call.i @@This@@(argc=0)
b [688]

> gml_Script__shader_uniforms_disabled@anon@58037@__set_standard_uniforms@anon@55307@__scribble_class_element@__scribble_class_element (locals=1, argc=0)
:[686]
pushi.e 0
conv.i.v
push.l 21
conv.l.v
call.i array_create(argc=2)
pop.v.v local._array
pushi.e 1
conv.i.v
pushi.e -7
push.l 17
conv.l.i
pop.v.v [array]self._array
pushi.e 1
conv.i.v
pushi.e -7
push.l 18
conv.l.i
pop.v.v [array]self._array
pushi.e 255
conv.i.v
pushi.e -7
push.l 16
conv.l.i
pop.v.v [array]self._array
pushloc.v local._array
ret.v

:[687]
exit.i

:[688]
push.i [function]gml_Script__shader_uniforms_disabled@anon@58037@__set_standard_uniforms@anon@55307@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
callv.v 0
pop.v.v static._shader_uniforms_disabled
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i array_create(argc=2)
pop.v.v static._null_array

:[689]
push.v builtin.__animation_time
push.v static._u_fTime
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.__blend_alpha
push.v builtin.__blend_colour
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__blend_colour
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__blend_colour
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v static._u_vColourBlend
call.i shader_set_uniform_f(argc=5)
popz.v
push.v builtin.__animation_blink_state
push.v static._u_fBlinkState
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.__gradient_alpha
pushi.e 0
cmp.i.v NEQ
bt [694]

:[690]
push.v builtin.__skew_x
pushi.e 0
cmp.i.v NEQ
bt [694]

:[691]
push.v builtin.__skew_y
pushi.e 0
cmp.i.v NEQ
bt [694]

:[692]
push.v builtin.__flash_alpha
pushi.e 0
cmp.i.v NEQ
bt [694]

:[693]
push.v builtin.__region_blend
pushi.e 0
cmp.i.v NEQ
b [695]

:[694]
push.e 1

:[695]
bf [697]

:[696]
pushi.e 1
pop.v.b static._shader_uniforms_dirty
push.v builtin.__gradient_alpha
push.v builtin.__gradient_colour
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__gradient_colour
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__gradient_colour
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v static._u_vGradient
call.i shader_set_uniform_f(argc=5)
popz.v
push.v builtin.__skew_y
push.v builtin.__skew_x
push.v static._u_vSkew
call.i shader_set_uniform_f(argc=3)
popz.v
push.v builtin.__flash_alpha
push.v builtin.__flash_colour
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__flash_colour
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__flash_colour
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v static._u_vFlash
call.i shader_set_uniform_f(argc=5)
popz.v
push.v builtin.__region_glyph_end
push.v builtin.__region_glyph_start
push.v static._u_vRegionActive
call.i shader_set_uniform_f(argc=3)
popz.v
push.v builtin.__region_blend
push.v builtin.__region_colour
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__region_colour
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__region_colour
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v static._u_vRegionColour
call.i shader_set_uniform_f(argc=5)
popz.v
b [699]

:[697]
push.v static._shader_uniforms_dirty
conv.v.b
bf [699]

:[698]
pushi.e 0
pop.v.b static._shader_uniforms_dirty
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._u_vGradient
call.i shader_set_uniform_f(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._u_vSkew
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._u_vFlash
call.i shader_set_uniform_f(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._u_vRegionActive
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._u_vRegionColour
call.i shader_set_uniform_f(argc=5)
popz.v

:[699]
push.v static._scribble_state
pushi.e -9
push.v [stacktop]self.__shader_anim_desync
conv.v.b
bf [706]

:[700]
push.v static._scribble_state
pushi.e -9
pushenv [705]

:[701]
pushi.e 0
pop.v.b builtin.__shader_anim_desync
push.v builtin.__shader_anim_desync_to_default
pop.v.v builtin.__shader_anim_default
push.v builtin.__shader_anim_disabled
conv.v.b
bf [703]

:[702]
push.v static._shader_uniforms_disabled
b [704]

:[703]
push.v static._anim_properties_array

:[704]
push.v static._u_aDataFields
call.i shader_set_uniform_f_array(argc=2)
popz.v

:[705]
popenv [701]

:[706]
push.v builtin.__bezier_using
conv.v.b
bf [708]

:[707]
pushi.e 1
pop.v.b static._shader_set_to_use_bezier
push.v builtin.__bezier_array
push.v static._u_aBezier
call.i shader_set_uniform_f_array(argc=2)
popz.v
b [710]

:[708]
push.v static._shader_set_to_use_bezier
conv.v.b
bf [710]

:[709]
pushi.e 0
pop.v.b static._shader_set_to_use_bezier
push.v static._null_array
push.v static._u_aBezier
call.i shader_set_uniform_f_array(argc=2)
popz.v

:[710]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [714]

:[711]
push.v arg.argument0
pushi.e -9
pushenv [713]

:[712]
push.v arg.argument1
call.i @@Other@@(argc=0)
call.i @@This@@(argc=0)
push.v builtin.__tick
callv.v 2
popz.v
call.i @@This@@(argc=0)
push.v builtin.__set_shader_uniforms
callv.v 0
popz.v

:[713]
popenv [712]
b [717]

:[714]
push.v builtin.__tw_reveal
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [716]

:[715]
pushi.e 0
conv.i.v
push.v static._u_iTypewriterUseLines
call.i shader_set_uniform_i(argc=2)
popz.v
push.l 1
conv.l.v
push.v static._u_iTypewriterMethod
call.i shader_set_uniform_i(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v static._u_iTypewriterCharMax
call.i shader_set_uniform_i(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v static._u_fTypewriterSmoothness
call.i shader_set_uniform_f(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._u_vTypewriterStartPos
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v static._u_vTypewriterStartScale
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v static._u_fTypewriterStartRotation
call.i shader_set_uniform_f(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v static._u_fTypewriterAlphaDuration
call.i shader_set_uniform_f(argc=2)
popz.v
push.v builtin.__tw_reveal_window_array
push.v static._u_fTypewriterWindowArray
call.i shader_set_uniform_f_array(argc=2)
popz.v
b [717]

:[716]
push.l 0
conv.l.v
push.v static._u_iTypewriterMethod
call.i shader_set_uniform_i(argc=2)
popz.v

:[717]
push.v builtin.__sdf_shadow_softness
push.v builtin.__sdf_shadow_yoffset
push.v builtin.__sdf_shadow_xoffset
push.v static._u_vShadowOffsetAndSoftness
call.i shader_set_uniform_f(argc=4)
popz.v
push.v builtin.__sdf_shadow_alpha
push.v builtin.__sdf_shadow_colour
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__sdf_shadow_colour
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__sdf_shadow_colour
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v static._u_vShadowColour
call.i shader_set_uniform_f(argc=5)
popz.v
push.v builtin.__sdf_outline_colour
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__sdf_outline_colour
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v builtin.__sdf_outline_colour
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v static._u_vOutlineColour
call.i shader_set_uniform_f(argc=4)
popz.v
push.v builtin.__sdf_outline_thickness
push.v static._u_fOutlineThickness
call.i shader_set_uniform_f(argc=2)
popz.v
exit.i

:[718]
push.i [function]gml_Script___set_standard_uniforms@anon@55307@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__set_standard_uniforms
b [732]

> gml_Script___update_scale_to_box_scale@anon@63980@__scribble_class_element@__scribble_class_element (locals=4, argc=0)
:[719]
push.v builtin.__scale_to_box_dirty
conv.v.b
not.b
bf [721]

:[720]
exit.i

:[721]
pushi.e 0
pop.v.b builtin.__scale_to_box_dirty
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.__get_model
callv.v 1
pop.v.v local._model
pushloc.v local._model
call.i is_struct(argc=1)
conv.v.b
not.b
bf [723]

:[722]
pushbltn.v builtin.undefined
ret.v

:[723]
pushi.e 1
pop.v.i local._xscale
pushi.e 1
pop.v.i local._yscale
push.v builtin.__scale_to_box_width
pushi.e 0
cmp.i.v GT
bf [725]

:[724]
push.v builtin.__scale_to_box_width
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_width
callv.v 0
push.v builtin.__padding_l
add.v.v
push.v builtin.__padding_r
add.v.v
div.v.v
pop.v.v local._xscale

:[725]
push.v builtin.__scale_to_box_height
pushi.e 0
cmp.i.v GT
bf [727]

:[726]
push.v builtin.__scale_to_box_height
pushloc.v local._model
dup.v 0 8
dup.v 0
push.v stacktop.__get_height
callv.v 0
push.v builtin.__padding_t
add.v.v
push.v builtin.__padding_b
add.v.v
div.v.v
pop.v.v local._yscale

:[727]
push.v builtin.__scale_to_box_scale
pop.v.v local._previous_scale_to_box_scale
pushloc.v local._yscale
pushloc.v local._xscale
call.i min(argc=2)
pop.v.v builtin.__scale_to_box_scale
push.v builtin.__scale_to_box_maximise
conv.v.b
not.b
bf [729]

:[728]
push.v builtin.__scale_to_box_scale
pushi.e 1
conv.i.v
call.i min(argc=2)
pop.v.v builtin.__scale_to_box_scale

:[729]
push.v builtin.__scale_to_box_scale
pushloc.v local._previous_scale_to_box_scale
cmp.v.v NEQ
bf [731]

:[730]
pushi.e 1
pop.v.b builtin.__matrix_dirty
pushi.e 1
pop.v.b builtin.__bbox_dirty

:[731]
exit.i

:[732]
push.i [function]gml_Script___update_scale_to_box_scale@anon@63980@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__update_scale_to_box_scale
b [755]

> gml_Script___update_matrix@anon@64940@__scribble_class_element@__scribble_class_element (locals=12, argc=3)
:[733]
call.i @@This@@(argc=0)
push.v builtin.__update_scale_to_box_scale
callv.v 0
popz.v
push.v builtin.__matrix_dirty
conv.v.b
bt [736]

:[734]
push.v builtin.__matrix_x
push.v arg.argument1
cmp.v.v NEQ
bt [736]

:[735]
push.v builtin.__matrix_y
push.v arg.argument2
cmp.v.v NEQ
b [737]

:[736]
push.e 1

:[737]
bf [753]

:[738]
pushi.e 0
pop.v.b builtin.__matrix_dirty
pushbltn.v builtin.undefined
pop.v.v builtin.__matrix_inverse
push.v arg.argument1
pop.v.v builtin.__matrix_x
push.v arg.argument2
pop.v.v builtin.__matrix_y
push.v builtin.__origin_x
neg.v
pop.v.v local._x_offset
push.v builtin.__origin_y
neg.v
pop.v.v local._y_offset
push.v builtin.__scale_to_box_scale
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__fit_scale
mul.v.v
push.v builtin.__post_xscale
mul.v.v
pop.v.v local._xscale
push.v builtin.__scale_to_box_scale
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__fit_scale
mul.v.v
push.v builtin.__post_yscale
mul.v.v
pop.v.v local._yscale
push.v builtin.__post_angle
pop.v.v local._angle
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__pad_bbox_l
conv.v.b
not.b
bf [740]

:[739]
push.v local._x_offset
push.v builtin.__padding_l
add.v.v
pop.v.v local._x_offset

:[740]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__pad_bbox_t
conv.v.b
not.b
bf [742]

:[741]
push.v local._y_offset
push.v builtin.__padding_t
add.v.v
pop.v.v local._y_offset

:[742]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__pad_bbox_r
conv.v.b
not.b
bf [744]

:[743]
push.v local._x_offset
push.v builtin.__padding_r
sub.v.v
pop.v.v local._x_offset

:[744]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__pad_bbox_b
conv.v.b
not.b
bf [746]

:[745]
push.v local._y_offset
push.v builtin.__padding_b
sub.v.v
pop.v.v local._y_offset

:[746]
push.v builtin.__matrix
pop.v.v local._matrix
pushloc.v local._xscale
pushi.e 1
cmp.i.v EQ
bf [749]

:[747]
pushloc.v local._yscale
pushi.e 1
cmp.i.v EQ
bf [749]

:[748]
pushloc.v local._angle
pushi.e 0
cmp.i.v EQ
b [750]

:[749]
push.e 0

:[750]
bf [752]

:[751]
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 0
pop.v.v [array]self._matrix
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 1
pop.v.v [array]self._matrix
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 4
pop.v.v [array]self._matrix
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 5
pop.v.v [array]self._matrix
pushloc.v local._x_offset
push.v arg.argument1
add.v.v
pushi.e -7
pushi.e 12
pop.v.v [array]self._matrix
pushloc.v local._y_offset
push.v arg.argument2
add.v.v
pushi.e -7
pushi.e 13
pop.v.v [array]self._matrix
push.v builtin.__z
pushi.e -7
pushi.e 14
pop.v.v [array]self._matrix
b [753]

:[752]
push.v builtin.__post_angle
neg.v
call.i dsin(argc=1)
pop.v.v local._sin
push.v builtin.__post_angle
neg.v
call.i dcos(argc=1)
pop.v.v local._cos
pushloc.v local._xscale
pushloc.v local._sin
mul.v.v
pop.v.v local._xSin
pushloc.v local._xscale
pushloc.v local._cos
mul.v.v
pop.v.v local._xCos
pushloc.v local._yscale
pushloc.v local._sin
mul.v.v
pop.v.v local._ySin
pushloc.v local._yscale
pushloc.v local._cos
mul.v.v
pop.v.v local._yCos
pushloc.v local._xCos
pushi.e -7
pushi.e 0
pop.v.v [array]self._matrix
pushloc.v local._xSin
pushi.e -7
pushi.e 1
pop.v.v [array]self._matrix
pushloc.v local._ySin
neg.v
pushi.e -7
pushi.e 4
pop.v.v [array]self._matrix
pushloc.v local._yCos
pushi.e -7
pushi.e 5
pop.v.v [array]self._matrix
push.v arg.argument1
pushloc.v local._x_offset
pushloc.v local._xCos
mul.v.v
pushloc.v local._y_offset
pushloc.v local._ySin
mul.v.v
sub.v.v
add.v.v
pushi.e -7
pushi.e 12
pop.v.v [array]self._matrix
push.v arg.argument2
pushloc.v local._x_offset
pushloc.v local._xSin
mul.v.v
pushloc.v local._y_offset
pushloc.v local._yCos
mul.v.v
add.v.v
add.v.v
pushi.e -7
pushi.e 13
pop.v.v [array]self._matrix
push.v builtin.__z
pushi.e -7
pushi.e 14
pop.v.v [array]self._matrix

:[753]
push.v builtin.__matrix
ret.v

:[754]
exit.i

:[755]
push.i [function]gml_Script___update_matrix@anon@64940@__scribble_class_element@__scribble_class_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__update_matrix

:[756]
push.v arg.argument0
pop.v.v builtin.__text
push.v arg.argument1
pop.v.v builtin.__unique_id
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [758]

:[757]
push.s "default:"@2455
conv.s.v
b [759]

:[758]
push.v arg.argument1
call.i string(argc=1)
push.s ":"@2456
add.s.v

:[759]
push.v arg.argument0
add.v.v
pop.v.v builtin.__cache_name
push.v builtin.__cache_name
push.v static.__ecache_dict
call.i variable_struct_get(argc=2)
pop.v.v local._weak
pushloc.v local._weak
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [762]

:[760]
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
bf [762]

:[761]
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
pushi.e -9
push.v [stacktop]self.__flushed
conv.v.b
not.b
b [763]

:[762]
push.e 0

:[763]
bf [765]

:[764]
push.s "\" due to cache name collision"@2564
conv.s.v
push.v builtin.__cache_name
push.s "Warning! Flushing element \""@2462
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[765]
call.i @@This@@(argc=0)
call.i weak_ref_create(argc=1)
push.v builtin.__cache_name
push.v static.__ecache_dict
call.i variable_struct_set(argc=3)
popz.v
call.i @@This@@(argc=0)
push.v static.__ecache_array
call.i array_push(argc=2)
popz.v
call.i @@This@@(argc=0)
call.i weak_ref_create(argc=1)
push.v static.__ecache_weak_array
call.i array_push(argc=2)
popz.v
push.v builtin.__cache_name
push.v static.__ecache_name_array
call.i array_push(argc=2)
popz.v
pushi.e 0
pop.v.b builtin.__flushed
pushi.e 1
pop.v.b builtin.__model_cache_name_dirty
pushbltn.v builtin.undefined
pop.v.v builtin.__model_cache_name
pushbltn.v builtin.undefined
pop.v.v builtin.__model
push.v static.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
pop.v.v builtin.__last_drawn
pushi.e 0
pop.v.b builtin.__freeze
pushbltn.v builtin.undefined
pop.v.v builtin.__preprocessorFunc
push.v static.__scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
pop.v.v builtin.__starting_font
push.i 13757692
conv.i.v
call.i gml_Script___scribble_process_colour(argc=1)
pop.v.v builtin.__starting_colour
pushi.e 0
pop.v.i builtin.__starting_halign
pushi.e 0
pop.v.i builtin.__starting_valign
push.i 16777215
pop.v.i builtin.__blend_colour
pushi.e 1
pop.v.i builtin.__blend_alpha
pushi.e 0
pop.v.i builtin.__skew_x
pushi.e 0
pop.v.i builtin.__skew_y
pushi.e 0
pop.v.i builtin.__gradient_colour
pushi.e 0
pop.v.i builtin.__gradient_alpha
push.i 16777215
pop.v.i builtin.__flash_colour
pushi.e 0
pop.v.i builtin.__flash_alpha
pushi.e 0
pop.v.b builtin.__randomize_animation
pushi.e 0
pop.v.b builtin.__allow_text_getter
pushi.e 1
pop.v.b builtin.__allow_glyph_data_getter
pushi.e 0
pop.v.b builtin.__allow_line_data_getter
pushi.e 0
pop.v.i builtin.__origin_x
pushi.e 0
pop.v.i builtin.__origin_y
pushi.e 1
pop.v.i builtin.__pre_scale
pushi.e 1
pop.v.i builtin.__post_xscale
pushi.e 1
pop.v.i builtin.__post_yscale
pushi.e 0
pop.v.i builtin.__post_angle
pushi.e 1
pop.v.b builtin.__matrix_dirty
call.i matrix_build_identity(argc=0)
pop.v.v builtin.__matrix
pushbltn.v builtin.undefined
pop.v.v builtin.__matrix_inverse
pushbltn.v builtin.undefined
pop.v.v builtin.__matrix_x
pushbltn.v builtin.undefined
pop.v.v builtin.__matrix_y
pushi.e 0
pop.v.b builtin.__wrap_apply
pushi.e -1
pop.v.i builtin.__wrap_max_width
pushi.e -1
pop.v.i builtin.__wrap_max_height
pushi.e 0
pop.v.b builtin.__wrap_per_char
pushi.e 0
pop.v.b builtin.__wrap_no_pages
pushi.e 1
pop.v.i builtin.__wrap_max_scale
pushi.e 1
pop.v.b builtin.__scale_to_box_dirty
pushi.e 0
pop.v.i builtin.__scale_to_box_width
pushi.e 0
pop.v.i builtin.__scale_to_box_height
pushi.e 0
pop.v.b builtin.__scale_to_box_maximise
pushbltn.v builtin.undefined
pop.v.v builtin.__scale_to_box_scale
pushi.e -1
pop.v.i builtin.__line_height_min
pushi.e -1
pop.v.i builtin.__line_height_max
push.s "100%"@2567
pop.v.s builtin.__line_spacing
pushi.e 0
pop.v.b builtin.__visual_bboxes
pushi.e 0
pop.v.i builtin.__page
pushi.e 0
pop.v.b builtin.__ignore_command_tags
pushbltn.v builtin.undefined
pop.v.v builtin.__template
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.__bezier_array
pushi.e 0
pop.v.b builtin.__bezier_using
pushbltn.v builtin.undefined
pop.v.v builtin.__tw_reveal
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.__tw_reveal_window_array
pushbltn.v builtin.current_time
pop.v.v builtin.__animation_time
pushi.e 1
pop.v.i builtin.__animation_speed
pushi.e 1
pop.v.b builtin.__animation_blink_state
pushi.e 0
pop.v.i builtin.__padding_l
pushi.e 0
pop.v.i builtin.__padding_t
pushi.e 0
pop.v.i builtin.__padding_r
pushi.e 0
pop.v.i builtin.__padding_b
push.i 3087917
pop.v.i builtin.__sdf_shadow_colour
pushi.e 1
pop.v.i builtin.__sdf_shadow_alpha
pushi.e 1
pop.v.i builtin.__sdf_shadow_xoffset
pushi.e 2
pop.v.i builtin.__sdf_shadow_yoffset
push.d 0.25
pop.v.d builtin.__sdf_shadow_softness
push.i 3087917
pop.v.i builtin.__sdf_outline_colour
pushi.e 1
pop.v.i builtin.__sdf_outline_thickness
pushbltn.v builtin.undefined
pop.v.v builtin.__bidi_hint
pushi.e 0
pop.v.i builtin.__z
pushbltn.v builtin.undefined
pop.v.v builtin.__region_active
pushi.e 0
pop.v.i builtin.__region_glyph_start
pushi.e 0
pop.v.i builtin.__region_glyph_end
pushi.e 0
pop.v.i builtin.__region_colour
pushi.e 0
pop.v.i builtin.__region_blend
pushi.e 1
pop.v.b builtin.__bbox_dirty
call.i matrix_build_identity(argc=0)
pop.v.v builtin.__bbox_matrix
pushi.e 1
pop.v.i builtin.__bbox_raw_width
pushi.e 1
pop.v.i builtin.__bbox_raw_height
pushi.e 0
pop.v.i builtin.__bbox_aabb_left
pushi.e 0
pop.v.i builtin.__bbox_aabb_top
pushi.e 0
pop.v.i builtin.__bbox_aabb_right
pushi.e 0
pop.v.i builtin.__bbox_aabb_bottom
pushi.e 1
pop.v.i builtin.__bbox_aabb_width
pushi.e 1
pop.v.i builtin.__bbox_aabb_height
pushi.e 0
pop.v.i builtin.__bbox_obb_x0
pushi.e 0
pop.v.i builtin.__bbox_obb_y0
pushi.e 0
pop.v.i builtin.__bbox_obb_x1
pushi.e 0
pop.v.i builtin.__bbox_obb_y1
pushi.e 0
pop.v.i builtin.__bbox_obb_x2
pushi.e 0
pop.v.i builtin.__bbox_obb_y2
pushi.e 0
pop.v.i builtin.__bbox_obb_x3
pushi.e 0
pop.v.i builtin.__bbox_obb_y3
exit.i

:[766]
push.i [function]gml_Script___scribble_class_element
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_element
popz.v

:[end]