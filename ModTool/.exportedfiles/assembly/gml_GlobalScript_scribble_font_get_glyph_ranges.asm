:[0]
b [13]

> gml_Script_scribble_font_get_glyph_ranges (locals=7, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument1

:[3]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
call.i ds_map_keys_to_array(argc=1)
pop.v.v local._keys_array
pushi.e 1
conv.b.v
pushloc.v local._keys_array
call.i array_sort(argc=2)
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._out_array
pushi.e -7
pushi.e 0
push.v [array]self._keys_array
pop.v.v local._min
pushi.e -7
pushi.e 0
push.v [array]self._keys_array
pop.v.v local._max
pushi.e 1
pop.v.i local._i
pushloc.v local._keys_array
call.i array_length(argc=1)
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[4]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._keys_array
pop.v.v local._key
pushloc.v local._key
pushloc.v local._max
pushi.e 1
add.i.v
cmp.v.v GT
bf [9]

:[5]
push.v arg.argument1
conv.v.b
bf [7]

:[6]
pushloc.v local._max
call.i ptr(argc=1)
call.i string(argc=1)
pushloc.v local._min
call.i ptr(argc=1)
call.i string(argc=1)
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._out_array
call.i array_push(argc=2)
popz.v
b [8]

:[7]
pushloc.v local._max
pushloc.v local._min
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._out_array
call.i array_push(argc=2)
popz.v

:[8]
pushloc.v local._key
pop.v.v local._min
pushloc.v local._key
pop.v.v local._max
b [10]

:[9]
pushloc.v local._key
pop.v.v local._max

:[10]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[11]
popz.i
pushloc.v local._max
call.i ptr(argc=1)
call.i string(argc=1)
pushloc.v local._min
call.i ptr(argc=1)
call.i string(argc=1)
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._out_array
call.i array_push(argc=2)
popz.v
pushloc.v local._out_array
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_scribble_font_get_glyph_ranges
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_get_glyph_ranges
popz.v

:[end]