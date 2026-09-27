:[0]
b [10]

> gml_Script___scribble_trace (locals=2, argc=0)
:[1]
push.s "ScribbleDX: "@4018
pop.v.s local._string
pushi.e 0
pop.v.i local._i
pushbltn.v builtin.argument_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[2]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i is_real(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i floor(argc=1)
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
cmp.v.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v local._string
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i string_format(argc=3)
add.v.v
pop.v.v local._string
b [8]

:[7]
push.v local._string
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i string(argc=1)
add.v.v
pop.v.v local._string

:[8]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[9]
popz.i
pushloc.v local._string
call.i show_debug_message(argc=1)
popz.v
exit.i

:[10]
push.i [function]gml_Script___scribble_trace
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_trace
popz.v
b [17]

> gml_Script___scribble_loud (locals=2, argc=0)
:[11]
push.s "Scribble Deluxe:\n"@4022
pop.v.s local._string
pushi.e 0
pop.v.i local._i
pushbltn.v builtin.argument_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[12]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i is_real(argc=1)
conv.v.b
bf [14]

:[13]
push.v local._string
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i string_format(argc=3)
add.v.v
pop.v.v local._string
b [15]

:[14]
push.v local._string
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i string(argc=1)
add.v.v
pop.v.v local._string

:[15]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[16]
popz.i
pushloc.v local._string
call.i show_debug_message(argc=1)
popz.v
pushloc.v local._string
call.i show_message(argc=1)
popz.v
exit.i

:[17]
push.i [function]gml_Script___scribble_loud
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_loud
popz.v
b [21]

> gml_Script___scribble_error (locals=2, argc=0)
:[18]
push.s ""@61
pop.v.s local._string
pushi.e 0
pop.v.i local._i
pushbltn.v builtin.argument_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [20]

:[19]
push.v local._string
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i string(argc=1)
add.v.v
pop.v.v local._string
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [19]

:[20]
popz.i
push.s "Scribble Deluxe 9.7.3.3: "@4026
push.s "\n          "@4027
conv.s.v
push.s "\n"@4028
conv.s.v
pushloc.v local._string
call.i string_replace_all(argc=3)
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s " \nScribble Deluxe 9.7.3.3:\n"@4030
pushloc.v local._string
add.v.s
push.s "\n "@1174
add.s.v
call.i show_error(argc=2)
popz.v
exit.i

:[21]
push.i [function]gml_Script___scribble_error
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_error
popz.v
b [30]

> gml_Script___scribble_get_font_data (locals=2, argc=1)
:[22]
isstaticok.e
bt [24]

:[23]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__font_data_map
pop.v.v static._font_data_map

:[24]
push.v arg.argument0
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data
pushloc.v local._data
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [28]

:[25]
push.s "Font \""@3182
push.v arg.argument0
call.i string(argc=1)
add.v.s
push.s "\" not recognised"@2111
add.s.v
pop.v.v local._string
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__gmMightRemoveUnusedAssets
conv.v.b
bf [27]

:[26]
push.v local._string
push.s "\nThis may indicate that unused assets have been stripped from the project\nPlease untick \"Automatically remove unused assets when compiling\" in Game Options"@4033
add.s.v
pop.v.v local._string

:[27]
pushloc.v local._string
call.i gml_Script___scribble_error(argc=1)
popz.v

:[28]
pushloc.v local._data
ret.v

:[29]
exit.i

:[30]
push.i [function]gml_Script___scribble_get_font_data
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_get_font_data
popz.v
b [40]

> gml_Script___scribble_process_colour (locals=0, argc=1)
:[31]
isstaticok.e
bt [33]

:[32]
setstatic.e
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colors_struct

:[33]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [38]

:[34]
push.v arg.argument0
push.v static._colors_struct
call.i variable_struct_exists(argc=2)
conv.v.b
not.b
bf [36]

:[35]
push.s "\" not recognised. Please add it to __scribble_config_colours()"@4035
conv.s.v
push.v arg.argument0
push.s "Colour \""@4036
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[36]
push.v arg.argument0
push.v static._colors_struct
call.i variable_struct_get(argc=2)
conv.v.l
push.i 16777215
and.i.l
conv.l.v
ret.v

:[37]
b [39]

:[38]
push.v arg.argument0
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script___scribble_process_colour
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_process_colour
popz.v
b [45]

> gml_Script___scribble_random (locals=0, argc=0)
:[41]
isstaticok.e
bt [43]

:[42]
setstatic.e
call.i date_current_datetime(argc=0)
pushi.e 100
mul.i.v
pop.v.v static._lcg

:[43]
push.i 48271
push.v static._lcg
mul.v.i
push.i 2147483647
mod.i.v
pop.v.v static._lcg
push.v static._lcg
push.l 2147483648
conv.l.d
div.d.v
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script___scribble_random
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_random
popz.v
b [52]

> gml_Script___scribble_array_find_index (locals=2, argc=2)
:[46]
pushi.e 0
pop.v.i local._i
push.v arg.argument0
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [50]

:[47]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
push.v arg.argument1
cmp.v.v EQ
bf [49]

:[48]
pushloc.v local._i
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[49]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [47]

:[50]
popz.i
pushi.e -1
conv.i.v
ret.v

:[51]
exit.i

:[52]
push.i [function]gml_Script___scribble_array_find_index
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_array_find_index
popz.v
b [63]

> gml_Script___scribble_asset_is_krutidev (locals=4, argc=2)
:[53]
push.v arg.argument1
push.v arg.argument0
call.i asset_get_tags(argc=2)
pop.v.v local._tags_array
pushi.e 0
pop.v.i local._i
pushloc.v local._tags_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [61]

:[54]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._tags_array
pop.v.v local._tag
pushloc.v local._tag
push.s "scribble krutidev"@4044
cmp.s.v EQ
bt [57]

:[55]
pushloc.v local._tag
push.s "Scribble krutidev"@4045
cmp.s.v EQ
bt [57]

:[56]
pushloc.v local._tag
push.s "Scribble Krutidev"@4046
cmp.s.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [60]

:[59]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[60]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [54]

:[61]
popz.i
pushi.e 0
conv.b.v
ret.v

:[62]
exit.i

:[63]
push.i [function]gml_Script___scribble_asset_is_krutidev
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_asset_is_krutidev
popz.v
b [72]

> gml_Script___scribble_buffer_read_unicode (locals=1, argc=1)
:[64]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
pop.v.v local._value
pushloc.v local._value
conv.v.l
pushi.e 224
and.i.l
pushi.e 192
cmp.i.l EQ
bf [66]

:[65]
pushloc.v local._value
conv.v.l
pushi.e 31
and.i.l
pushi.e 6
conv.i.l
shl.l.l
pop.v.l local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
conv.v.l
pushi.e 63
and.i.l
add.l.v
pop.v.v local._value
b [70]

:[66]
pushloc.v local._value
conv.v.l
pushi.e 240
and.i.l
pushi.e 224
cmp.i.l EQ
bf [68]

:[67]
pushloc.v local._value
conv.v.l
pushi.e 15
and.i.l
pushi.e 12
conv.i.l
shl.l.l
pop.v.l local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
conv.v.l
pushi.e 63
and.i.l
pushi.e 6
conv.i.l
shl.l.l
add.l.v
pop.v.v local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
conv.v.l
pushi.e 63
and.i.l
add.l.v
pop.v.v local._value
b [70]

:[68]
pushloc.v local._value
conv.v.l
pushi.e 248
and.i.l
pushi.e 240
cmp.i.l EQ
bf [70]

:[69]
pushloc.v local._value
conv.v.l
pushi.e 7
and.i.l
pushi.e 18
conv.i.l
shl.l.l
pop.v.l local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
conv.v.l
pushi.e 63
and.i.l
pushi.e 12
conv.i.l
shl.l.l
add.l.v
pop.v.v local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
conv.v.l
pushi.e 63
and.i.l
pushi.e 6
conv.i.l
shl.l.l
add.l.v
pop.v.v local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_read(argc=2)
conv.v.l
pushi.e 63
and.i.l
add.l.v
pop.v.v local._value

:[70]
pushloc.v local._value
ret.v

:[71]
exit.i

:[72]
push.i [function]gml_Script___scribble_buffer_read_unicode
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_buffer_read_unicode
popz.v
b [81]

> gml_Script___scribble_buffer_peek_unicode (locals=1, argc=2)
:[73]
pushi.e 1
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i buffer_peek(argc=3)
pop.v.v local._value
pushloc.v local._value
conv.v.l
pushi.e 224
and.i.l
pushi.e 192
cmp.i.l EQ
bf [75]

:[74]
pushloc.v local._value
conv.v.l
pushi.e 31
and.i.l
pushi.e 6
conv.i.l
shl.l.l
pop.v.l local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument1
pushi.e 1
add.i.v
push.v arg.argument0
call.i buffer_peek(argc=3)
conv.v.l
pushi.e 63
and.i.l
add.l.v
pop.v.v local._value
b [79]

:[75]
pushloc.v local._value
conv.v.l
pushi.e 240
and.i.l
pushi.e 224
cmp.i.l EQ
bf [77]

:[76]
pushloc.v local._value
conv.v.l
pushi.e 15
and.i.l
pushi.e 12
conv.i.l
shl.l.l
pop.v.l local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument1
pushi.e 1
add.i.v
push.v arg.argument0
call.i buffer_peek(argc=3)
conv.v.l
pushi.e 63
and.i.l
pushi.e 6
conv.i.l
shl.l.l
add.l.v
pop.v.v local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument1
pushi.e 2
add.i.v
push.v arg.argument0
call.i buffer_peek(argc=3)
conv.v.l
pushi.e 63
and.i.l
add.l.v
pop.v.v local._value
b [79]

:[77]
pushloc.v local._value
conv.v.l
pushi.e 248
and.i.l
pushi.e 240
cmp.i.l EQ
bf [79]

:[78]
pushloc.v local._value
conv.v.l
pushi.e 7
and.i.l
pushi.e 18
conv.i.l
shl.l.l
pop.v.l local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument1
pushi.e 1
add.i.v
push.v arg.argument0
call.i buffer_peek(argc=3)
conv.v.l
pushi.e 63
and.i.l
pushi.e 12
conv.i.l
shl.l.l
add.l.v
pop.v.v local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument1
pushi.e 2
add.i.v
push.v arg.argument0
call.i buffer_peek(argc=3)
conv.v.l
pushi.e 63
and.i.l
pushi.e 6
conv.i.l
shl.l.l
add.l.v
pop.v.v local._value
push.v local._value
pushi.e 1
conv.i.v
push.v arg.argument1
pushi.e 3
add.i.v
push.v arg.argument0
call.i buffer_peek(argc=3)
conv.v.l
pushi.e 63
and.i.l
add.l.v
pop.v.v local._value

:[79]
pushloc.v local._value
ret.v

:[80]
exit.i

:[81]
push.i [function]gml_Script___scribble_buffer_peek_unicode
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_buffer_peek_unicode
popz.v
b [91]

> gml_Script___scribble_buffer_write_unicode (locals=0, argc=2)
:[82]
push.v arg.argument1
pushi.e 127
cmp.i.v LTE
bf [84]

:[83]
push.v arg.argument1
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
b [90]

:[84]
push.v arg.argument1
pushi.e 2047
cmp.i.v LTE
bf [86]

:[85]
pushi.e 192
push.v arg.argument1
conv.v.l
pushi.e 31
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushi.e 128
push.v arg.argument1
conv.v.l
pushi.e 5
conv.i.l
shr.l.l
pushi.e 63
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
b [90]

:[86]
push.v arg.argument1
push.i 65535
cmp.i.v LTE
bf [88]

:[87]
pushi.e 192
push.v arg.argument1
conv.v.l
pushi.e 15
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushi.e 128
push.v arg.argument1
conv.v.l
pushi.e 4
conv.i.l
shr.l.l
pushi.e 63
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushi.e 128
push.v arg.argument1
conv.v.l
pushi.e 10
conv.i.l
shr.l.l
pushi.e 63
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
b [90]

:[88]
push.v arg.argument1
push.i 65536
cmp.i.v LTE
bf [90]

:[89]
pushi.e 192
push.v arg.argument1
conv.v.l
pushi.e 7
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushi.e 128
push.v arg.argument1
conv.v.l
pushi.e 3
conv.i.l
shr.l.l
pushi.e 63
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushi.e 128
push.v arg.argument1
conv.v.l
pushi.e 9
conv.i.l
shr.l.l
pushi.e 63
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v
pushi.e 128
push.v arg.argument1
conv.v.l
pushi.e 15
conv.i.l
shr.l.l
pushi.e 63
and.i.l
or.l.i
conv.l.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_write(argc=3)
popz.v

:[90]
exit.i

:[91]
push.i [function]gml_Script___scribble_buffer_write_unicode
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_buffer_write_unicode
popz.v
b [97]

> gml_Script___scribble_image_speed_get (locals=0, argc=1)
:[92]
push.v arg.argument0
call.i sprite_get_speed_type(argc=1)
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
push.v arg.argument0
call.i sprite_get_speed(argc=1)
b [95]

:[94]
push.v arg.argument0
call.i sprite_get_speed(argc=1)
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v

:[95]
ret.v

:[96]
exit.i

:[97]
push.i [function]gml_Script___scribble_image_speed_get
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_image_speed_get
popz.v
b [102]

> gml_Script___scribble_matrix_inverse (locals=2, argc=1)
:[98]
pushbltn.v builtin.undefined
pushi.e 16
conv.i.v
call.i array_create(argc=2)
pop.v.v local._inv
pushi.e -15
pushi.e 5
push.v [array]self.argument0
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 0
pop.v.v [array]self._inv
pushi.e -15
pushi.e 4
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 4
pop.v.v [array]self._inv
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 8
pop.v.v [array]self._inv
pushi.e -15
pushi.e 4
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 12
pop.v.v [array]self._inv
pushi.e -15
pushi.e 1
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 1
push.v [array]self.argument0
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 1
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 5
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 9
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 13
pop.v.v [array]self._inv
pushi.e -15
pushi.e 1
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 1
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 2
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 6
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 15
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 10
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 14
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 13
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 12
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 14
pop.v.v [array]self._inv
pushi.e -15
pushi.e 1
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 1
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 3
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 7
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
neg.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 11
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 7
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 3
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -7
pushi.e 11
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 10
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -15
pushi.e 4
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 9
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 1
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 6
push.v [array]self.argument0
mul.v.v
add.v.v
pushi.e -15
pushi.e 8
push.v [array]self.argument0
pushi.e -15
pushi.e 2
push.v [array]self.argument0
mul.v.v
pushi.e -15
pushi.e 5
push.v [array]self.argument0
mul.v.v
sub.v.v
pushi.e -7
pushi.e 15
pop.v.v [array]self._inv
pushi.e -15
pushi.e 0
push.v [array]self.argument0
pushi.e -7
pushi.e 0
push.v [array]self._inv
mul.v.v
pushi.e -15
pushi.e 1
push.v [array]self.argument0
pushi.e -7
pushi.e 4
push.v [array]self._inv
mul.v.v
add.v.v
pushi.e -15
pushi.e 2
push.v [array]self.argument0
pushi.e -7
pushi.e 8
push.v [array]self._inv
mul.v.v
add.v.v
pushi.e -15
pushi.e 3
push.v [array]self.argument0
pushi.e -7
pushi.e 12
push.v [array]self._inv
mul.v.v
add.v.v
pop.v.v local._det
pushloc.v local._det
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
push.s "Warning! Determinant of the matrix is zero"@4058
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.v arg.argument0
ret.v

:[100]
pushi.e 1
conv.i.d
pushloc.v local._det
div.v.d
pop.v.v local._det
pushi.e -7
pushi.e 0
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 1
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 2
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 3
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 4
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 5
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 6
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 7
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 8
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 9
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 10
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 11
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 12
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 13
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 14
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushi.e -7
pushi.e 15
dup.i 1
push.v [array]self._inv
pushloc.v local._det
mul.v.v
pop.i.v [array]self._inv
pushloc.v local._inv
ret.v

:[101]
exit.i

:[102]
push.i [function]gml_Script___scribble_matrix_inverse
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_matrix_inverse
popz.v

:[end]