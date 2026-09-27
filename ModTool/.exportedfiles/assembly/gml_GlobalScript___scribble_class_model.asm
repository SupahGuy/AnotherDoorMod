:[0]
b [155]

> gml_Script___scribble_class_model (locals=1, argc=2)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [146]

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
push.v [stacktop]self.__mcache_dict
pop.v.v static.__mcache_dict
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__mcache_name_array
pop.v.v static.__mcache_name_array
b [13]

> gml_Script___submit@anon@2254@__scribble_class_model@__scribble_class_model (locals=0, argc=2)
:[3]
push.v builtin.__flushed
conv.v.b
bf [5]

:[4]
pushbltn.v builtin.undefined
ret.v

:[5]
push.v builtin.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
pop.v.v builtin.__last_drawn
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.__pages_array
pushi.e 0
bt [8]

:[6]
push.v builtin.__has_arabic
conv.v.b
bt [8]

:[7]
push.v builtin.__has_thai
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v arg.argument1
conv.v.b
b [12]

:[11]
push.e 0

:[12]
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.__submit
callv.v 1
popz.v
exit.i

:[13]
push.i [function]gml_Script___submit@anon@2254@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__submit
b [19]

> gml_Script___freeze@anon@2557@__scribble_class_model@__scribble_class_model (locals=1, argc=0)
:[14]
push.v builtin.__frozen
conv.v.b
not.b
bf [18]

:[15]
pushi.e 0
pop.v.i local._i
push.v builtin.__pages
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__pages_array
dup.v 0 8
dup.v 0
push.v stacktop.__freeze
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [16]

:[17]
popz.i
pushi.e 1
pop.v.b builtin.__frozen

:[18]
exit.i

:[19]
push.i [function]gml_Script___freeze@anon@2557@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__freeze
b [23]

> gml_Script___flush@anon@2854@__scribble_class_model@__scribble_class_model (locals=0, argc=0)
:[20]
push.v builtin.__flushed
conv.v.b
bf [22]

:[21]
pushbltn.v builtin.undefined
ret.v

:[22]
call.i @@This@@(argc=0)
push.v builtin.__reset
callv.v 0
popz.v
push.v builtin.__cache_name
push.v builtin.__mcache_dict
call.i variable_struct_remove(argc=2)
popz.v
pushi.e 1
pop.v.b builtin.__flushed
exit.i

:[23]
push.i [function]gml_Script___flush@anon@2854@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__flush
b [27]

> gml_Script___reset@anon@3356@__scribble_class_model@__scribble_class_model (locals=1, argc=0)
:[24]
pushi.e 0
pop.v.i local._i
push.v builtin.__pages
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [26]

:[25]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__pages_array
dup.v 0 8
dup.v 0
push.v stacktop.__flush
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [25]

:[26]
popz.i
pushi.e 0
pop.v.i builtin.__pages
pushi.e 0
pop.v.i builtin.__width
pushi.e 0
pop.v.i builtin.__height
pushi.e 0
pop.v.i builtin.__min_x
pushi.e 0
pop.v.i builtin.__min_y
pushi.e 0
pop.v.i builtin.__max_x
pushi.e 0
pop.v.i builtin.__max_y
pushbltn.v builtin.undefined
pop.v.v builtin.__valign
pushi.e 1
pop.v.i builtin.__fit_scale
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__pages_array
exit.i

:[27]
push.i [function]gml_Script___reset@anon@3356@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__reset
b [51]

> gml_Script___get_bbox@anon@4123@__scribble_class_model@__scribble_class_model (locals=5, argc=5)
:[28]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [34]

:[29]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [31]

:[30]
push.s " doesn't exist. Minimum page index is 0"@2695
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[31]
push.v arg.argument0
push.v builtin.__pages
cmp.v.v GTE
bf [33]

:[32]
push.v builtin.__pages
pushi.e 1
sub.i.v
push.s " doesn't exist. Maximum page index is "@2697
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=4)
popz.v

:[33]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__pages_array
pop.v.v local._page_data
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__min_x
pop.v.v local._left
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__min_y
pop.v.v local._top
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__max_x
pop.v.v local._right
pushloc.v local._page_data
pushi.e -9
push.v [stacktop]self.__max_y
pop.v.v local._bottom
b [35]

:[34]
push.v builtin.__min_x
pop.v.v local._left
push.v builtin.__min_y
pop.v.v local._top
push.v builtin.__max_x
pop.v.v local._right
push.v builtin.__max_y
pop.v.v local._bottom

:[35]
push.v builtin.__pad_bbox_l
conv.v.b
bf [37]

:[36]
push.v local._left
push.v arg.argument1
sub.v.v
pop.v.v local._left
b [38]

:[37]
push.v local._right
push.v arg.argument1
add.v.v
pop.v.v local._right

:[38]
push.v builtin.__pad_bbox_t
conv.v.b
bf [40]

:[39]
push.v local._top
push.v arg.argument2
sub.v.v
pop.v.v local._top
b [41]

:[40]
push.v local._bottom
push.v arg.argument2
add.v.v
pop.v.v local._bottom

:[41]
push.v builtin.__pad_bbox_r
conv.v.b
bf [43]

:[42]
push.v local._right
push.v arg.argument3
add.v.v
pop.v.v local._right
b [44]

:[43]
push.v local._left
push.v arg.argument3
sub.v.v
pop.v.v local._left

:[44]
push.v builtin.__pad_bbox_b
conv.v.b
bf [46]

:[45]
push.v local._bottom
push.v arg.argument4
add.v.v
pop.v.v local._bottom
b [47]

:[46]
push.v local._top
push.v arg.argument4
sub.v.v
pop.v.v local._top

:[47]
pushloc.v local._bottom
pushloc.v local._right
pushloc.v local._top
pushloc.v local._left
b [49]

> gml_Script____struct___36@__get_bbox@anon@4123@__scribble_class_model@__scribble_class_model (locals=0, argc=0)
:[48]
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
exit.i

:[49]
push.i [function]gml_Script____struct___36@__get_bbox@anon@4123@__scribble_class_model@__scribble_class_model
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___36
call.i @@NewGMLObject@@(argc=5)
ret.v

:[50]
exit.i

:[51]
push.i [function]gml_Script___get_bbox@anon@4123@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_bbox
b [73]

> gml_Script___get_bbox_revealed@anon@5540@__scribble_class_model@__scribble_class_model (locals=7, argc=7)
:[52]
push.v builtin.__allow_glyph_data_getter
conv.v.b
not.b
bf [54]

:[53]
push.s "Getting the revealed glyph bounding box requires either:\n- Call `.allow_glyph_data_getter()` on the element\n- Set `SCRIBBLE_FORCE_GLYPH_DATA_GETTER` to `true`"@2702
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[54]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.__get_glyph_data_grid
callv.v 1
pop.v.v local._glyph_grid
push.v arg.argument1
pushi.e 1
sub.i.v
pop.v.v local._start
push.v arg.argument2
pushi.e 1
sub.i.v
pop.v.v local._end
pushloc.v local._end
pushi.e 0
cmp.i.v LT
bf [56]

:[55]
push.l 1
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._left
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._top
push.l 1
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._right
push.l 4
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._bottom
b [57]

:[56]
push.l 1
conv.l.v
pushloc.v local._end
push.l 1
conv.l.v
pushloc.v local._start
pushloc.v local._glyph_grid
call.i ds_grid_get_min(argc=5)
pop.v.v local._left
push.l 2
conv.l.v
pushloc.v local._end
push.l 2
conv.l.v
pushloc.v local._start
pushloc.v local._glyph_grid
call.i ds_grid_get_min(argc=5)
pop.v.v local._top
push.l 3
conv.l.v
pushloc.v local._end
push.l 3
conv.l.v
pushloc.v local._start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._right
push.l 4
conv.l.v
pushloc.v local._end
push.l 4
conv.l.v
pushloc.v local._start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
pop.v.v local._bottom

:[57]
push.v builtin.__pad_bbox_l
conv.v.b
bf [59]

:[58]
push.v local._left
push.v arg.argument3
sub.v.v
pop.v.v local._left
b [60]

:[59]
push.v local._right
push.v arg.argument3
add.v.v
pop.v.v local._right

:[60]
push.v builtin.__pad_bbox_t
conv.v.b
bf [62]

:[61]
push.v local._top
push.v arg.argument4
sub.v.v
pop.v.v local._top
b [63]

:[62]
push.v local._bottom
push.v arg.argument4
add.v.v
pop.v.v local._bottom

:[63]
push.v builtin.__pad_bbox_r
conv.v.b
bf [65]

:[64]
push.v local._right
push.v arg.argument5
add.v.v
pop.v.v local._right
b [66]

:[65]
push.v local._left
push.v arg.argument5
sub.v.v
pop.v.v local._left

:[66]
push.v builtin.__pad_bbox_b
conv.v.b
bf [68]

:[67]
push.v local._bottom
push.v arg.argument6
add.v.v
pop.v.v local._bottom
b [69]

:[68]
push.v local._bottom
push.v arg.argument6
sub.v.v
pop.v.v local._bottom

:[69]
pushloc.v local._bottom
pushloc.v local._right
pushloc.v local._top
pushloc.v local._left
b [71]

> gml_Script____struct___37@__get_bbox_revealed@anon@5540@__scribble_class_model@__scribble_class_model (locals=0, argc=0)
:[70]
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
exit.i

:[71]
push.i [function]gml_Script____struct___37@__get_bbox_revealed@anon@5540@__scribble_class_model@__scribble_class_model
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___37
call.i @@NewGMLObject@@(argc=5)
ret.v

:[72]
exit.i

:[73]
push.i [function]gml_Script___get_bbox_revealed@anon@5540@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_bbox_revealed
b [76]

> gml_Script___get_width@anon@7630@__scribble_class_model@__scribble_class_model (locals=0, argc=1)
:[74]
push.v builtin.__fit_scale
push.v builtin.__width
mul.v.v
ret.v

:[75]
exit.i

:[76]
push.i [function]gml_Script___get_width@anon@7630@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_width
b [79]

> gml_Script___get_height@anon@7745@__scribble_class_model@__scribble_class_model (locals=0, argc=1)
:[77]
push.v builtin.__fit_scale
push.v builtin.__height
mul.v.v
ret.v

:[78]
exit.i

:[79]
push.i [function]gml_Script___get_height@anon@7745@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_height
b [82]

> gml_Script___get_page_array@anon@7850@__scribble_class_model@__scribble_class_model (locals=0, argc=0)
:[80]
push.v builtin.__pages_array
ret.v

:[81]
exit.i

:[82]
push.i [function]gml_Script___get_page_array@anon@7850@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_page_array
b [85]

> gml_Script___get_page_count@anon@7943@__scribble_class_model@__scribble_class_model (locals=0, argc=0)
:[83]
push.v builtin.__pages
ret.v

:[84]
exit.i

:[85]
push.i [function]gml_Script___get_page_count@anon@7943@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_page_count
b [94]

> gml_Script___get_text@anon@8045@__scribble_class_model@__scribble_class_model (locals=0, argc=1)
:[86]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [88]

:[87]
push.s " doesn't exist. Minimum page index is 0"@2695
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[88]
push.v arg.argument0
push.v builtin.__pages
cmp.v.v GTE
bf [90]

:[89]
push.v builtin.__pages
pushi.e 1
sub.i.v
push.s " doesn't exist. Maximum page index is "@2697
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=4)
popz.v

:[90]
push.v builtin.__allow_text_getter
conv.v.b
not.b
bf [92]

:[91]
push.s "Getting element text requires either:\n- Call `.allow_text_getter()` on the element\n- Set `SCRIBBLE_FORCE_TEXT_GETTER` to `true`"@2717
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[92]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.__pages_array
pushi.e -9
push.v [stacktop]self.__text
ret.v

:[93]
exit.i

:[94]
push.i [function]gml_Script___get_text@anon@8045@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_text
b [103]

> gml_Script___get_line_data@anon@8652@__scribble_class_model@__scribble_class_model (locals=0, argc=2)
:[95]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [97]

:[96]
push.s " doesn't exist. Minimum page index is 0"@2695
conv.s.v
push.v arg.argument1
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[97]
push.v arg.argument1
push.v builtin.__pages
cmp.v.v GTE
bf [99]

:[98]
push.v builtin.__pages
pushi.e 1
sub.i.v
push.s " doesn't exist. Maximum page index is "@2697
conv.s.v
push.v arg.argument1
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=4)
popz.v

:[99]
push.v builtin.__allow_line_data_getter
conv.v.b
not.b
bf [101]

:[100]
push.s "Getting line data requires either:\n- Call `.allow_line_data_getter()` on the element\n- Set `SCRIBBLE_FORCE_LINE_DATA_GETTER` to `true`"@2719
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[101]
pushi.e -1
push.v arg.argument1
conv.v.i
push.v [array]self.__pages_array
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.__get_line_data
callv.v 1
ret.v

:[102]
exit.i

:[103]
push.i [function]gml_Script___get_line_data@anon@8652@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_line_data
b [112]

> gml_Script___get_glyph_data@anon@9319@__scribble_class_model@__scribble_class_model (locals=0, argc=2)
:[104]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [106]

:[105]
push.s " doesn't exist. Minimum page index is 0"@2695
conv.s.v
push.v arg.argument1
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[106]
push.v arg.argument1
push.v builtin.__pages
cmp.v.v GTE
bf [108]

:[107]
push.v builtin.__pages
pushi.e 1
sub.i.v
push.s " doesn't exist. Maximum page index is "@2697
conv.s.v
push.v arg.argument1
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=4)
popz.v

:[108]
push.v builtin.__allow_glyph_data_getter
conv.v.b
not.b
bf [110]

:[109]
push.s "Getting glyph data requires either:\n- Call `.allow_glyph_data_getter()` on the element\n- Set `SCRIBBLE_FORCE_GLYPH_DATA_GETTER` to `true`"@2721
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[110]
pushi.e -1
push.v arg.argument1
conv.v.i
push.v [array]self.__pages_array
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.__get_glyph_data
callv.v 1
ret.v

:[111]
exit.i

:[112]
push.i [function]gml_Script___get_glyph_data@anon@9319@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_glyph_data
b [115]

> gml_Script___get_wrapped@anon@9945@__scribble_class_model@__scribble_class_model (locals=0, argc=0)
:[113]
push.v builtin.__wrapped
ret.v

:[114]
exit.i

:[115]
push.i [function]gml_Script___get_wrapped@anon@9945@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_wrapped
b [122]

> gml_Script___get_line_count@anon@10055@__scribble_class_model@__scribble_class_model (locals=0, argc=1)
:[116]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [118]

:[117]
push.s " doesn't exist. Minimum page index is 0"@2695
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[118]
push.v arg.argument0
push.v builtin.__pages
cmp.v.v GTE
bf [120]

:[119]
push.v builtin.__pages
pushi.e 1
sub.i.v
push.s " doesn't exist. Maximum page index is "@2697
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=4)
popz.v

:[120]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.__pages_array
pushi.e -9
push.v [stacktop]self.__line_count
ret.v

:[121]
exit.i

:[122]
push.i [function]gml_Script___get_line_count@anon@10055@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_line_count
b [129]

> gml_Script___get_glyph_count@anon@10436@__scribble_class_model@__scribble_class_model (locals=0, argc=1)
:[123]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [125]

:[124]
push.s " doesn't exist. Minimum page index is 0"@2695
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[125]
push.v arg.argument0
push.v builtin.__pages
cmp.v.v GTE
bf [127]

:[126]
push.v builtin.__pages
pushi.e 1
sub.i.v
push.s " doesn't exist. Maximum page index is "@2697
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=4)
popz.v

:[127]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.__pages_array
pushi.e -9
push.v [stacktop]self.__glyph_count
pushi.e 1
sub.i.v
ret.v

:[128]
exit.i

:[129]
push.i [function]gml_Script___get_glyph_count@anon@10436@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_glyph_count
b [138]

> gml_Script___get_glyph_data_grid@anon@10908@__scribble_class_model@__scribble_class_model (locals=0, argc=1)
:[130]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [132]

:[131]
push.s " doesn't exist. Minimum page index is 0"@2695
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[132]
push.v arg.argument0
push.v builtin.__pages
cmp.v.v GTE
bf [134]

:[133]
push.v builtin.__pages
pushi.e 1
sub.i.v
push.s " doesn't exist. Maximum page index is "@2697
conv.s.v
push.v arg.argument0
push.s "Page index "@2696
conv.s.v
call.i gml_Script___scribble_error(argc=4)
popz.v

:[134]
push.v builtin.__allow_glyph_data_getter
conv.v.b
not.b
bf [136]

:[135]
push.s "Getting glyph data requires either:\n- Call `.allow_glyph_data_getter()` on the element\n- Set `SCRIBBLE_FORCE_GLYPH_DATA_GETTER` to `true`"@2721
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[136]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.__pages_array
pushi.e -9
push.v [stacktop]self.__glyph_grid
ret.v

:[137]
exit.i

:[138]
push.i [function]gml_Script___get_glyph_data_grid@anon@10908@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__get_glyph_data_grid
b [141]

> gml_Script___new_page@anon@11476@__scribble_class_model@__scribble_class_model (locals=1, argc=0)
:[139]
push.i [function]gml_Script___scribble_class_page
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v local._page_data
pushloc.v local._page_data
push.v builtin.__pages_array
call.i array_push(argc=2)
popz.v
push.v builtin.__pages
push.e 1
add.i.v
pop.v.v builtin.__pages
pushloc.v local._page_data
ret.v

:[140]
exit.i

:[141]
push.i [function]gml_Script___new_page@anon@11476@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__new_page
b [145]

> gml_Script___finalize_vertex_buffers@anon@11708@__scribble_class_model@__scribble_class_model (locals=1, argc=1)
:[142]
pushi.e 0
pop.v.i local._i
push.v builtin.__pages_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [144]

:[143]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__pages_array
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.__finalize_vertex_buffers
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [143]

:[144]
popz.i
exit.i

:[145]
push.i [function]gml_Script___finalize_vertex_buffers@anon@11708@__scribble_class_model@__scribble_class_model
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__finalize_vertex_buffers
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state

:[146]
push.v arg.argument1
pop.v.v builtin.__cache_name
push.v builtin.__cache_name
push.v static.__mcache_dict
call.i variable_struct_get(argc=2)
pop.v.v local._weak
pushloc.v local._weak
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [149]

:[147]
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
bf [149]

:[148]
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
pushi.e -9
push.v [stacktop]self.__flushed
conv.v.b
not.b
b [150]

:[149]
push.e 0

:[150]
bf [152]

:[151]
push.s "\""@1193
conv.s.v
push.v builtin.__cache_name
push.s "Warning! Rebuilding model \""@2735
conv.s.v
call.i gml_Script___scribble_trace(argc=3)
popz.v
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
dup.v 0 8
dup.v 0
push.v stacktop.__flush
callv.v 0
popz.v

:[152]
call.i @@This@@(argc=0)
call.i weak_ref_create(argc=1)
push.v builtin.__cache_name
push.v static.__mcache_dict
call.i variable_struct_set(argc=3)
popz.v
push.v builtin.__cache_name
push.v static.__mcache_name_array
call.i array_push(argc=2)
popz.v
push.v static.__scribble_state
pushi.e -9
push.v [stacktop]self.__frames
pop.v.v builtin.__last_drawn
pushbltn.v builtin.undefined
pop.v.v builtin.__frozen
pushi.e 0
pop.v.b builtin.__flushed
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__allow_text_getter
pop.v.v builtin.__allow_text_getter
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__allow_glyph_data_getter
pop.v.v builtin.__allow_glyph_data_getter
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__allow_line_data_getter
pop.v.v builtin.__allow_line_data_getter
pushi.e 0
pop.v.i builtin.__pages
pushi.e 0
pop.v.i builtin.__width
pushi.e 0
pop.v.i builtin.__height
pushi.e 0
pop.v.i builtin.__min_x
pushi.e 0
pop.v.i builtin.__min_y
pushi.e 0
pop.v.i builtin.__max_x
pushi.e 0
pop.v.i builtin.__max_y
pushbltn.v builtin.undefined
pop.v.v builtin.__valign
pushi.e 1
pop.v.i builtin.__fit_scale
pushi.e 0
pop.v.b builtin.__wrapped
pushi.e 0
pop.v.b builtin.__pad_bbox_l
pushi.e 0
pop.v.b builtin.__pad_bbox_t
pushi.e 0
pop.v.b builtin.__pad_bbox_r
pushi.e 0
pop.v.b builtin.__pad_bbox_b
pushi.e 0
pop.v.b builtin.__has_r2l
pushi.e 0
pop.v.b builtin.__has_arabic
pushi.e 0
pop.v.b builtin.__has_thai
pushi.e 0
pop.v.b builtin.__has_hebrew
pushi.e 0
pop.v.b builtin.__has_devanagari
pushi.e 0
pop.v.b builtin.__has_animation
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__pages_array
push.v static._generator_state
pushi.e -9
pushenv [154]

:[153]
call.i @@This@@(argc=0)
push.v builtin.__Reset
callv.v 0
popz.v
push.v arg.argument0
pop.v.v builtin.__element
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__bidi_hint
pop.v.v builtin.__overall_bidi

:[154]
popenv [153]
call.i gml_Script___scribble_gen_1_model_limits_and_bezier_curves(argc=0)
popz.v
call.i gml_Script___scribble_gen_2_parser(argc=0)
popz.v
call.i gml_Script___scribble_gen_3_devanagari(argc=0)
popz.v
call.i gml_Script___scribble_gen_4_build_words(argc=0)
popz.v
call.i gml_Script___scribble_gen_5_finalize_bidi(argc=0)
popz.v
call.i gml_Script___scribble_gen_6_build_lines(argc=0)
popz.v
call.i gml_Script___scribble_gen_7_build_pages(argc=0)
popz.v
call.i gml_Script___scribble_gen_8_position_glyphs(argc=0)
popz.v
call.i gml_Script___scribble_gen_9_build_vbuff_grids(argc=0)
popz.v
call.i gml_Script___scribble_gen_10_write_vbuffs(argc=0)
popz.v
call.i gml_Script___scribble_gen_11_set_padding_flags(argc=0)
popz.v
exit.i

:[155]
push.i [function]gml_Script___scribble_class_model
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_model
popz.v

:[end]