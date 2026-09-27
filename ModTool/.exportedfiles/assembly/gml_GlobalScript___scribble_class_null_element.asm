:[0]
b [172]

> gml_Script___scribble_class_null_element (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [171]

:[2]
setstatic.e
b [4]

> gml_Script___error@anon@102@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[3]
push.s "Cannot call text element methods using the result from .draw()\nThis can occur in two situations:\n  1. scribble().draw().method();\n  2. t = scribble().draw(); t.method()\n\nInstead use:\n  1. scribble().method().draw();\n  2. t = scribble(); t.method(); t.draw();"@2751
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[4]
push.i [function]gml_Script___error@anon@102@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__error
b [6]

> gml_Script_draw@anon@486@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[5]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[6]
push.i [function]gml_Script_draw@anon@486@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.draw
b [8]

> gml_Script_starting_format@anon@567@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[7]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[8]
push.i [function]gml_Script_starting_format@anon@567@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.starting_format
b [10]

> gml_Script_align@anon@638@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[9]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[10]
push.i [function]gml_Script_align@anon@638@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.align
b [12]

> gml_Script_blend@anon@709@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[11]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[12]
push.i [function]gml_Script_blend@anon@709@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.blend
b [14]

> gml_Script_gradient@anon@783@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[13]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[14]
push.i [function]gml_Script_gradient@anon@783@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.gradient
b [16]

> gml_Script_fog@anon@852@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[15]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[16]
push.i [function]gml_Script_fog@anon@852@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.fog
b [18]

> gml_Script_flash@anon@923@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[17]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[18]
push.i [function]gml_Script_flash@anon@923@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.flash
b [20]

> gml_Script_origin@anon@1055@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[19]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[20]
push.i [function]gml_Script_origin@anon@1055@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.origin
b [22]

> gml_Script_transform@anon@1130@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[21]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[22]
push.i [function]gml_Script_transform@anon@1130@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.transform
b [24]

> gml_Script_skew@anon@1200@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[23]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[24]
push.i [function]gml_Script_skew@anon@1200@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.skew
b [26]

> gml_Script_scale_to_box@anon@1278@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[25]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[26]
push.i [function]gml_Script_scale_to_box@anon@1278@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.scale_to_box
b [28]

> gml_Script_wrap@anon@1348@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[27]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[28]
push.i [function]gml_Script_wrap@anon@1348@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.wrap
b [30]

> gml_Script_fit_to_box@anon@1424@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[29]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[30]
push.i [function]gml_Script_fit_to_box@anon@1424@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.fit_to_box
b [32]

> gml_Script_pin_guide_width@anon@1505@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[31]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[32]
push.i [function]gml_Script_pin_guide_width@anon@1505@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.pin_guide_width
b [34]

> gml_Script_line_height@anon@1582@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[33]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[34]
push.i [function]gml_Script_line_height@anon@1582@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.line_height
b [36]

> gml_Script_line_spacing@anon@1660@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[35]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[36]
push.i [function]gml_Script_line_spacing@anon@1660@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.line_spacing
b [38]

> gml_Script_padding@anon@1733@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[37]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[38]
push.i [function]gml_Script_padding@anon@1733@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.padding
b [40]

> gml_Script_bezier@anon@1805@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[39]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[40]
push.i [function]gml_Script_bezier@anon@1805@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.bezier
b [42]

> gml_Script_right_to_left@anon@1884@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[41]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[42]
push.i [function]gml_Script_right_to_left@anon@1884@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.right_to_left
b [44]

> gml_Script_region_detect@anon@2024@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[43]
exit.i

:[44]
push.i [function]gml_Script_region_detect@anon@2024@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_detect
b [46]

> gml_Script_region_set_active@anon@2087@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[45]
exit.i

:[46]
push.i [function]gml_Script_region_set_active@anon@2087@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_set_active
b [48]

> gml_Script_region_get_active@anon@2150@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[47]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[48]
push.i [function]gml_Script_region_get_active@anon@2150@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.region_get_active
b [50]

> gml_Script___update_bbox_matrix@anon@2300@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[49]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[50]
push.i [function]gml_Script___update_bbox_matrix@anon@2300@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__update_bbox_matrix
b [52]

> gml_Script_get_left@anon@2374@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[51]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[52]
push.i [function]gml_Script_get_left@anon@2374@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_left
b [54]

> gml_Script_get_top@anon@2447@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[53]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[54]
push.i [function]gml_Script_get_top@anon@2447@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_top
b [56]

> gml_Script_get_right@anon@2522@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[55]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[56]
push.i [function]gml_Script_get_right@anon@2522@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_right
b [58]

> gml_Script_get_bottom@anon@2598@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[57]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[58]
push.i [function]gml_Script_get_bottom@anon@2598@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_bottom
b [60]

> gml_Script_get_width@anon@2673@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[59]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[60]
push.i [function]gml_Script_get_width@anon@2673@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_width
b [62]

> gml_Script_get_height@anon@2749@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[61]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[62]
push.i [function]gml_Script_get_height@anon@2749@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_height
b [64]

> gml_Script_get_bbox@anon@2823@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[63]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[64]
push.i [function]gml_Script_get_bbox@anon@2823@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_bbox
b [66]

> gml_Script_get_bbox_revealed@anon@2906@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[65]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[66]
push.i [function]gml_Script_get_bbox_revealed@anon@2906@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_bbox_revealed
b [68]

> gml_Script_page@anon@3035@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[67]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[68]
push.i [function]gml_Script_page@anon@3035@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.page
b [70]

> gml_Script_get_page@anon@3109@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[69]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[70]
push.i [function]gml_Script_get_page@anon@3109@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_page
b [72]

> gml_Script_get_pages@anon@3184@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[71]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[72]
push.i [function]gml_Script_get_pages@anon@3184@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_pages
b [74]

> gml_Script_get_page_count@anon@3264@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[73]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[74]
push.i [function]gml_Script_get_page_count@anon@3264@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_page_count
b [76]

> gml_Script_on_last_page@anon@3342@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[75]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[76]
push.i [function]gml_Script_on_last_page@anon@3342@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.on_last_page
b [78]

> gml_Script_get_wrapped@anon@3486@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[77]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[78]
push.i [function]gml_Script_get_wrapped@anon@3486@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_wrapped
b [80]

> gml_Script_get_text@anon@3560@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[79]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[80]
push.i [function]gml_Script_get_text@anon@3560@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_text
b [82]

> gml_Script_get_glyph_data@anon@3640@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[81]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[82]
push.i [function]gml_Script_get_glyph_data@anon@3640@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_glyph_data
b [84]

> gml_Script_get_glyph_count@anon@3721@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[83]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[84]
push.i [function]gml_Script_get_glyph_count@anon@3721@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_glyph_count
b [86]

> gml_Script_get_line_count@anon@3801@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[85]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[86]
push.i [function]gml_Script_get_line_count@anon@3801@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_line_count
b [88]

> gml_Script_reveal@anon@3937@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[87]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[88]
push.i [function]gml_Script_reveal@anon@3937@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.reveal
b [90]

> gml_Script_get_reveal@anon@4013@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[89]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[90]
push.i [function]gml_Script_get_reveal@anon@4013@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_reveal
b [92]

> gml_Script_animation_tick_speed@anon@4162@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[91]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[92]
push.i [function]gml_Script_animation_tick_speed@anon@4162@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_tick_speed
b [94]

> gml_Script_animation_speed@anon@4243@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[93]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[94]
push.i [function]gml_Script_animation_speed@anon@4243@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_speed
b [96]

> gml_Script_get_animation_speed@anon@4328@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[95]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[96]
push.i [function]gml_Script_get_animation_speed@anon@4328@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_animation_speed
b [98]

> gml_Script_is_animated@anon@4405@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[97]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[98]
push.i [function]gml_Script_is_animated@anon@4405@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.is_animated
b [100]

> gml_Script_animation_sync@anon@4485@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[99]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[100]
push.i [function]gml_Script_animation_sync@anon@4485@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_sync
b [102]

> gml_Script_animation_wave@anon@4565@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[101]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[102]
push.i [function]gml_Script_animation_wave@anon@4565@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_wave
b [104]

> gml_Script_animation_shake@anon@4646@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[103]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[104]
push.i [function]gml_Script_animation_shake@anon@4646@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_shake
b [106]

> gml_Script_animation_rainbow@anon@4729@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[105]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[106]
push.i [function]gml_Script_animation_rainbow@anon@4729@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_rainbow
b [108]

> gml_Script_animation_wobble@anon@4811@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[107]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[108]
push.i [function]gml_Script_animation_wobble@anon@4811@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_wobble
b [110]

> gml_Script_animation_pulse@anon@4892@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[109]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[110]
push.i [function]gml_Script_animation_pulse@anon@4892@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_pulse
b [112]

> gml_Script_animation_wheel@anon@4973@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[111]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[112]
push.i [function]gml_Script_animation_wheel@anon@4973@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_wheel
b [114]

> gml_Script_animation_cycle@anon@5054@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[113]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[114]
push.i [function]gml_Script_animation_cycle@anon@5054@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_cycle
b [116]

> gml_Script_animation_jitter@anon@5136@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[115]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[116]
push.i [function]gml_Script_animation_jitter@anon@5136@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_jitter
b [118]

> gml_Script_animation_blink@anon@5217@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[117]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[118]
push.i [function]gml_Script_animation_blink@anon@5217@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.animation_blink
b [120]

> gml_Script_sdf_shadow@anon@5350@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[119]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[120]
push.i [function]gml_Script_sdf_shadow@anon@5350@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sdf_shadow
b [122]

> gml_Script_sdf_outline@anon@5427@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[121]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[122]
push.i [function]gml_Script_sdf_outline@anon@5427@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sdf_outline
b [124]

> gml_Script_sdf_feather@anon@5504@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[123]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[124]
push.i [function]gml_Script_sdf_feather@anon@5504@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.sdf_feather
b [126]

> gml_Script_build@anon@5669@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[125]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[126]
push.i [function]gml_Script_build@anon@5669@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.build
b [128]

> gml_Script_flush@anon@5740@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[127]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[128]
push.i [function]gml_Script_flush@anon@5740@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.flush
b [130]

> gml_Script_get_events@anon@5883@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[129]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[130]
push.i [function]gml_Script_get_events@anon@5883@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_events
b [132]

> gml_Script_template@anon@6039@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[131]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[132]
push.i [function]gml_Script_template@anon@6039@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.template
b [134]

> gml_Script_ignore_command_tags@anon@6146@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[133]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[134]
push.i [function]gml_Script_ignore_command_tags@anon@6146@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.ignore_command_tags
b [136]

> gml_Script_z@anon@6213@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[135]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[136]
push.i [function]gml_Script_z@anon@6213@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.z
b [138]

> gml_Script_get_z@anon@6284@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[137]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[138]
push.i [function]gml_Script_get_z@anon@6284@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_z
b [140]

> gml_Script_overwrite@anon@6409@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[139]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[140]
push.i [function]gml_Script_overwrite@anon@6409@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.overwrite
b [142]

> gml_Script_debug_draw_bbox@anon@6490@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[141]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[142]
push.i [function]gml_Script_debug_draw_bbox@anon@6490@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.debug_draw_bbox
b [144]

> gml_Script_typewriter_off@anon@6641@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[143]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[144]
push.i [function]gml_Script_typewriter_off@anon@6641@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_off
b [146]

> gml_Script_typewriter_reset@anon@6723@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[145]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[146]
push.i [function]gml_Script_typewriter_reset@anon@6723@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_reset
b [148]

> gml_Script_typewriter_in@anon@6802@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[147]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[148]
push.i [function]gml_Script_typewriter_in@anon@6802@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_in
b [150]

> gml_Script_typewriter_out@anon@6882@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[149]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[150]
push.i [function]gml_Script_typewriter_out@anon@6882@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_out
b [152]

> gml_Script_typewriter_skip@anon@6963@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[151]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[152]
push.i [function]gml_Script_typewriter_skip@anon@6963@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_skip
b [154]

> gml_Script_typewriter_sound@anon@7045@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[153]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[154]
push.i [function]gml_Script_typewriter_sound@anon@7045@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_sound
b [156]

> gml_Script_typewriter_sound_per_char@anon@7136@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[155]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[156]
push.i [function]gml_Script_typewriter_sound_per_char@anon@7136@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_sound_per_char
b [158]

> gml_Script_typewriter_function@anon@7221@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[157]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[158]
push.i [function]gml_Script_typewriter_function@anon@7221@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_function
b [160]

> gml_Script_typewriter_pause@anon@7303@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[159]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[160]
push.i [function]gml_Script_typewriter_pause@anon@7303@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_pause
b [162]

> gml_Script_typewriter_unpause@anon@7387@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[161]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[162]
push.i [function]gml_Script_typewriter_unpause@anon@7387@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_unpause
b [164]

> gml_Script_typewriter_ease@anon@7468@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[163]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[164]
push.i [function]gml_Script_typewriter_ease@anon@7468@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.typewriter_ease
b [166]

> gml_Script_get_typewriter_state@anon@7554@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[165]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[166]
push.i [function]gml_Script_get_typewriter_state@anon@7554@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_typewriter_state
b [168]

> gml_Script_get_typewriter_paused@anon@7641@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[167]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[168]
push.i [function]gml_Script_get_typewriter_paused@anon@7641@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_typewriter_paused
b [170]

> gml_Script_get_typewriter_pos@anon@7725@__scribble_class_null_element@__scribble_class_null_element (locals=0, argc=0)
:[169]
call.i @@This@@(argc=0)
push.v builtin.__error
callv.v 0
popz.v
exit.i

:[170]
push.i [function]gml_Script_get_typewriter_pos@anon@7725@__scribble_class_null_element@__scribble_class_null_element
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.get_typewriter_pos

:[171]
exit.i

:[172]
push.i [function]gml_Script___scribble_class_null_element
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_null_element
popz.v

:[end]