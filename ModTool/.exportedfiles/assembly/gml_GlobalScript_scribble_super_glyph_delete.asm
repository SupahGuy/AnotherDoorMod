:[0]
b [12]

> gml_Script_scribble_super_glyph_delete (locals=7, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map

:[3]
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
pop.v.v local._font_data
pushloc.v local._font_data
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
push.s "\" not found"@2222
conv.s.v
pushloc.v local._font_data
push.s "Font \""@3182
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[5]
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._glyphs_map
pushbltn.v builtin.argument_count
pushi.e 1
sub.i.v
call.i array_create(argc=1)
pop.v.v local._glyphs_array
pushi.e 0
pop.v.i local._i
pushbltn.v builtin.argument_count
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[6]
pushi.e -15
pushloc.v local._i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.argument
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._glyphs_array
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [6]

:[7]
popz.i
pushloc.v local._glyphs_array
call.i gml_Script___scribble_prepare_super_work_array(argc=1)
pop.v.v local._work_array
pushi.e 0
pop.v.i local._i
pushloc.v local._work_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[8]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._work_array
pop.v.v local._glyph_range_array
pushi.e -7
pushi.e 0
push.v [array]self._glyph_range_array
pop.v.v local._unicode
pushi.e 1
pushi.e -7
pushi.e 1
push.v [array]self._glyph_range_array
add.v.i
pushloc.v local._unicode
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [10]

:[9]
pushloc.v local._unicode
pushloc.v local._glyphs_map
call.i ds_map_delete(argc=2)
popz.v
push.v local._unicode
push.e 1
add.i.v
pop.v.v local._unicode
pushi.e 1
sub.i.i
dup.i 0
bt [9]

:[10]
popz.i
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [8]

:[11]
popz.i
exit.i

:[12]
push.i [function]gml_Script_scribble_super_glyph_delete
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_super_glyph_delete
popz.v

:[end]