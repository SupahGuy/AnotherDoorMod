:[0]
b [462]

> gml_Script_scribble_markdown_format (locals=34, argc=1)
:[1]
isstaticok.e
bt [28]

:[2]
setstatic.e
b [9]

> gml_Script__func_delete_buffer@anon@7249@scribble_markdown_format@scribble_markdown_format (locals=2, argc=4)
:[3]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
push.v arg.argument0
call.i buffer_tell(argc=1)
pushi.e 2
sub.i.v
pop.v.v builtin.argument3

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__buffer_b
pop.v.v static._buffer_b

:[7]
push.v arg.argument3
push.v arg.argument2
add.v.v
pop.v.v local._copy_pos
push.v arg.argument1
pushloc.v local._copy_pos
sub.v.v
pop.v.v local._copy_size
pushi.e 0
conv.i.v
push.v static._buffer_b
pushloc.v local._copy_size
pushloc.v local._copy_pos
push.v arg.argument0
call.i buffer_copy(argc=5)
popz.v
push.v arg.argument3
push.v arg.argument0
pushloc.v local._copy_size
pushi.e 0
conv.i.v
push.v static._buffer_b
call.i buffer_copy(argc=5)
popz.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_seek(argc=3)
popz.v
push.v arg.argument2
neg.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script__func_delete_buffer@anon@7249@scribble_markdown_format@scribble_markdown_format
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._func_delete_buffer
b [18]

> gml_Script__func_insert_buffer@anon@7808@scribble_markdown_format@scribble_markdown_format (locals=3, argc=4)
:[10]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [12]

:[11]
push.v arg.argument0
call.i buffer_tell(argc=1)
pushi.e 2
sub.i.v
pop.v.v builtin.argument3

:[12]
isstaticok.e
bt [14]

:[13]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__buffer_b
pop.v.v static._buffer_b

:[14]
push.v arg.argument2
call.i string_byte_length(argc=1)
pop.v.v local._insert_size
pushloc.v local._insert_size
pushi.e 0
cmp.i.v LTE
bf [16]

:[15]
pushi.e 0
conv.i.v
ret.v

:[16]
push.v arg.argument1
push.v arg.argument3
sub.v.v
pop.v.v local._copy_size
pushloc.v local._insert_size
pushloc.v local._copy_size
add.v.v
pop.v.v local._recopy_size
push.v arg.argument2
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
push.v static._buffer_b
call.i buffer_poke(argc=4)
popz.v
pushloc.v local._insert_size
push.v static._buffer_b
pushloc.v local._copy_size
push.v arg.argument3
push.v arg.argument0
call.i buffer_copy(argc=5)
popz.v
push.v arg.argument3
push.v arg.argument0
pushloc.v local._recopy_size
pushi.e 0
conv.i.v
push.v static._buffer_b
call.i buffer_copy(argc=5)
popz.v
pushloc.v local._insert_size
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._insert_size
ret.v

:[17]
exit.i

:[18]
push.i [function]gml_Script__func_insert_buffer@anon@7808@scribble_markdown_format@scribble_markdown_format
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._func_insert_buffer
b [27]

> gml_Script__func_delete_and_insert_buffer@anon@8609@scribble_markdown_format@scribble_markdown_format (locals=4, argc=5)
:[19]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [21]

:[20]
push.s ""@61
pop.v.s builtin.argument3

:[21]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [23]

:[22]
push.v arg.argument0
call.i buffer_tell(argc=1)
pushi.e 2
sub.i.v
pop.v.v builtin.argument4

:[23]
isstaticok.e
bt [25]

:[24]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__buffer_b
pop.v.v static._buffer_b

:[25]
push.v arg.argument4
push.v arg.argument2
add.v.v
pop.v.v local._copy_pos
push.v arg.argument1
pushloc.v local._copy_pos
sub.v.v
pop.v.v local._copy_size
push.v arg.argument3
call.i string_byte_length(argc=1)
pop.v.v local._insert_size
pushloc.v local._insert_size
pushloc.v local._copy_size
add.v.v
pop.v.v local._recopy_size
push.v arg.argument3
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
push.v static._buffer_b
call.i buffer_poke(argc=4)
popz.v
pushloc.v local._insert_size
push.v static._buffer_b
pushloc.v local._copy_size
pushloc.v local._copy_pos
push.v arg.argument0
call.i buffer_copy(argc=5)
popz.v
push.v arg.argument4
push.v arg.argument0
pushloc.v local._recopy_size
pushi.e 0
conv.i.v
push.v static._buffer_b
call.i buffer_copy(argc=5)
popz.v
pushloc.v local._insert_size
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._insert_size
push.v arg.argument2
sub.v.v
ret.v

:[26]
exit.i

:[27]
push.i [function]gml_Script__func_delete_and_insert_buffer@anon@8609@scribble_markdown_format@scribble_markdown_format
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._func_delete_and_insert_buffer
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._empty_struct
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__buffer_a
pop.v.v static._buffer

:[28]
b [46]

> gml_Script____struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[29]
call.i @@SetStatic@@(argc=0)
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.body
b [31]

> gml_Script____struct___312@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[30]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.bold
pushi.e 1
pop.v.b self.italic
push.d 1.6
pop.v.d self.scale
exit.i

:[31]
push.i [function]gml_Script____struct___312@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___312
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.header1
b [33]

> gml_Script____struct___313@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[32]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.bold
push.d 1.4
pop.v.d self.scale
exit.i

:[33]
push.i [function]gml_Script____struct___313@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___313
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.header2
b [35]

> gml_Script____struct___314@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[34]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.italic
push.d 1.2
pop.v.d self.scale
exit.i

:[35]
push.i [function]gml_Script____struct___314@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___314
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.header3
b [37]

> gml_Script____struct___315@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[36]
call.i @@SetStatic@@(argc=0)
push.i 15198183
pop.v.i self.color
pushi.e 1
pop.v.b self.italic
push.d 0.9
pop.v.d self.scale
push.s "  "@7964
pop.v.s self.prefix
exit.i

:[37]
push.i [function]gml_Script____struct___315@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___315
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.quote
b [39]

> gml_Script____struct___316@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[38]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.bold
exit.i

:[39]
push.i [function]gml_Script____struct___316@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___316
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.bold
b [41]

> gml_Script____struct___317@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[40]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.italic
exit.i

:[41]
push.i [function]gml_Script____struct___317@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___317
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.italic
b [43]

> gml_Script____struct___318@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[42]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.bold
pushi.e 1
pop.v.b self.italic
exit.i

:[43]
push.i [function]gml_Script____struct___318@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___318
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.bold_italic
pushref.i 16777231
pop.v.v self.bullet_sprite
b [45]

> gml_Script____struct___319@___struct___310@scribble_markdown_format@scribble_markdown_format (locals=0, argc=0)
:[44]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.bold
push.i 16752607
pop.v.i self.color
exit.i

:[45]
push.i [function]gml_Script____struct___319@___struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___319
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.link
exit.i

:[46]
push.i [function]gml_Script____struct___310@scribble_markdown_format@scribble_markdown_format
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___310
call.i @@NewGMLObject@@(argc=1)
pop.v.v local._fallback_styles_struct
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pushi.e -9
push.v [stacktop]self.__markdown_styles_struct
pop.v.v local._markdown_styles_struct
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v
push.v arg.argument0
pushi.e 11
conv.i.v
push.v static._buffer
call.i buffer_write(argc=3)
popz.v
push.v static._buffer
call.i buffer_tell(argc=1)
pop.v.v local._buffer_size
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v
pushbltn.v builtin.undefined
pop.v.v local._old_style
push.s "body"@4901
pop.v.s local._new_style
pushi.e 1
pop.v.b local._write_style
pushi.e 1
pop.v.b local._newline
pushi.e 0
pop.v.b local._indent
pushi.e 0
pop.v.b local._in_link
pushi.e 0
pop.v.i local._prev_value
pushi.e 0
pop.v.i local._value
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_read(argc=2)
pop.v.v local._next_value

:[47]
pushi.e 1
bf [460]

:[48]
pushloc.v local._next_value
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
b [460]

:[50]
pushloc.v local._next_value
pop.v.v local._value
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_read(argc=2)
pop.v.v local._next_value
pushloc.v local._value
pushi.e 10
cmp.i.v EQ
bt [52]

:[51]
pushloc.v local._value
pushi.e 13
cmp.i.v EQ
b [53]

:[52]
push.e 1

:[53]
bf [67]

:[54]
pushi.e 1
pop.v.b local._newline
pushloc.v local._indent
conv.v.b
bf [56]

:[55]
pushi.e 0
pop.v.b local._indent
push.v local._buffer_size
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 2
sub.i.v
push.s "[/indent]"@7992
conv.s.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_insert_buffer
callv.v 4
add.v.v
pop.v.v local._buffer_size
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value

:[56]
pushloc.v local._write_style
conv.v.b
not.b
bf [63]

:[57]
pushloc.v local._old_style
push.s "quote"@7967
cmp.s.v EQ
bt [61]

:[58]
pushloc.v local._old_style
push.s "header1"@7957
cmp.s.v EQ
bt [61]

:[59]
pushloc.v local._old_style
push.s "header2"@7960
cmp.s.v EQ
bt [61]

:[60]
pushloc.v local._old_style
push.s "header3"@7963
cmp.s.v EQ
b [62]

:[61]
push.e 1

:[62]
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
push.s "body"@4901
pop.v.s local._new_style
pushi.e 1
pop.v.b local._write_style

:[66]
b [47]

:[67]
pushloc.v local._newline
conv.v.b
bf [316]

:[68]
pushloc.v local._value
pushi.e 62
cmp.i.v EQ
bf [70]

:[69]
pushloc.v local._next_value
pushi.e 32
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [133]

:[72]
push.s "quote"@7967
pop.v.s local._new_style
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [128]

:[73]
pushi.e 1
pop.v.b local._write_style
pushloc.v local._write_style
conv.v.b
bf [127]

:[74]
pushi.e 0
pop.v.b local._write_style
pushloc.v local._old_style
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [76]

:[75]
push.v static._empty_struct
b [78]

:[76]
pushloc.v local._old_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [78]

:[77]
popz.v
pushloc.v local._old_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[78]
pop.v.v local._old_style_struct
pushloc.v local._new_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [80]

:[79]
popz.v
pushloc.v local._new_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[80]
pop.v.v local._new_style_struct
push.i [variable]suffix
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [82]

:[81]
popz.v
push.s ""@61
conv.s.v

:[82]
pop.v.v local._insert_string
push.i [variable]font
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]font
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [87]

:[83]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [85]

:[84]
push.s "[/font]"@7998
conv.s.v
b [86]

:[85]
push.s "["@572
pushloc.v local._new_value
add.v.s
push.s "]"@571
add.s.v

:[86]
add.v.v
pop.v.v local._insert_string

:[87]
push.i [variable]scale
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [89]

:[88]
popz.v
pushi.e 1
conv.i.v

:[89]
pop.v.v local._old_value
push.i [variable]scale
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [91]

:[90]
popz.v
pushi.e 1
conv.i.v

:[91]
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [96]

:[92]
push.v local._insert_string
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
push.s "[/scale]"@7999
conv.s.v
b [95]

:[94]
push.s "[scale,"@8000
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[95]
add.v.v
pop.v.v local._insert_string

:[96]
push.i [variable]color
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]color
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [101]

:[97]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [99]

:[98]
push.s "[/color]"@8001
conv.s.v
b [100]

:[99]
push.s "[d#"@8002
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[100]
add.v.v
pop.v.v local._insert_string

:[101]
push.i [variable]italic
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [103]

:[102]
popz.v
pushi.e 0
conv.i.v

:[103]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [105]

:[104]
popz.v
pushi.e 0
conv.i.v

:[105]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._old_value
push.i [variable]italic
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [107]

:[106]
popz.v
pushi.e 0
conv.i.v

:[107]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [109]

:[108]
popz.v
pushi.e 0
conv.i.v

:[109]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [124]

:[110]
pushloc.v local._new_value
pushi.e 0
cmp.i.v EQ
bf [118]

:[111]
pushloc.v local._old_value
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
push.v local._insert_string
push.s "[/i]"@8003
add.s.v
pop.v.v local._insert_string
b [117]

:[113]
pushloc.v local._old_value
pushi.e 2
cmp.i.v EQ
bf [115]

:[114]
push.v local._insert_string
push.s "[/b]"@8004
add.s.v
pop.v.v local._insert_string
b [117]

:[115]
pushloc.v local._old_value
pushi.e 3
cmp.i.v EQ
bf [117]

:[116]
push.v local._insert_string
push.s "[/bi]"@8005
add.s.v
pop.v.v local._insert_string

:[117]
b [124]

:[118]
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
push.v local._insert_string
push.s "[i]"@8006
add.s.v
pop.v.v local._insert_string
b [124]

:[120]
pushloc.v local._new_value
pushi.e 2
cmp.i.v EQ
bf [122]

:[121]
push.v local._insert_string
push.s "[b]"@8007
add.s.v
pop.v.v local._insert_string
b [124]

:[122]
pushloc.v local._new_value
pushi.e 3
cmp.i.v EQ
bf [124]

:[123]
push.v local._insert_string
push.s "[bi]"@8008
add.s.v
pop.v.v local._insert_string

:[124]
push.v local._insert_string
push.i [variable]prefix
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [126]

:[125]
popz.v
push.s ""@61
conv.s.v

:[126]
add.v.v
pop.v.v local._insert_string
push.v local._buffer_size
pushloc.v local._insert_string
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_insert_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushloc.v local._new_style
pop.v.v local._old_style

:[127]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v

:[128]
pushloc.v local._indent
conv.v.b
bf [130]

:[129]
push.s "Warning! Found stacked indentation"@8009
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.v local._buffer_size
pushi.e 2
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
b [131]

:[130]
pushi.e 1
pop.v.b local._indent
push.v local._buffer_size
push.s "[indent]"@8010
conv.s.v
pushi.e 2
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_and_insert_buffer
callv.v 4
add.v.v
pop.v.v local._buffer_size

:[131]
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
pushi.e 0
pop.v.b local._newline
b [47]

:[132]
b [313]

:[133]
pushloc.v local._value
pushi.e 35
cmp.i.v EQ
bf [156]

:[134]
pushi.e 1
pop.v.i local._header_level
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._header_peek

:[135]
pushi.e 1
bf [145]

:[136]
pushi.e 1
conv.i.v
pushloc.v local._header_peek
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._header_next_value
pushloc.v local._header_next_value
pushi.e 0
cmp.i.v EQ
bf [139]

:[137]
pushi.e 0
pop.v.i local._header_level
b [145]

:[138]
b [144]

:[139]
pushloc.v local._header_next_value
pushi.e 32
cmp.i.v EQ
bf [142]

:[140]
b [145]

:[141]
b [144]

:[142]
pushloc.v local._header_next_value
pushi.e 35
cmp.i.v NEQ
bf [144]

:[143]
pushi.e 0
pop.v.i local._header_level
b [145]

:[144]
push.v local._header_level
push.e 1
add.i.v
pop.v.v local._header_level
push.v local._header_peek
push.e 1
add.i.v
pop.v.v local._header_peek
b [135]

:[145]
pushloc.v local._header_level
pushi.e 0
cmp.i.v GT
bf [155]

:[146]
pushloc.v local._header_level
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
push.s "header1"@7957
pop.v.s local._new_style
b [152]

:[148]
pushloc.v local._header_level
pushi.e 2
cmp.i.v EQ
bf [150]

:[149]
push.s "header2"@7960
pop.v.s local._new_style
b [152]

:[150]
pushloc.v local._header_level
pushi.e 3
cmp.i.v GTE
bf [152]

:[151]
push.s "header3"@7963
pop.v.s local._new_style

:[152]
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [154]

:[153]
pushi.e 1
pop.v.b local._write_style

:[154]
push.v local._buffer_size
pushloc.v local._header_level
pushi.e 1
add.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
pushi.e 0
pop.v.b local._newline
b [47]

:[155]
b [313]

:[156]
pushloc.v local._value
pushi.e 45
cmp.i.v EQ
bt [158]

:[157]
pushloc.v local._value
pushi.e 42
cmp.i.v EQ
b [159]

:[158]
push.e 1

:[159]
bf [161]

:[160]
pushloc.v local._next_value
pushi.e 32
cmp.i.v EQ
b [162]

:[161]
push.e 0

:[162]
bf [230]

:[163]
push.s "body"@4901
pop.v.s local._new_style
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [219]

:[164]
pushi.e 1
pop.v.b local._write_style
pushloc.v local._write_style
conv.v.b
bf [218]

:[165]
pushi.e 0
pop.v.b local._write_style
pushloc.v local._old_style
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [167]

:[166]
push.v static._empty_struct
b [169]

:[167]
pushloc.v local._old_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [169]

:[168]
popz.v
pushloc.v local._old_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[169]
pop.v.v local._old_style_struct
pushloc.v local._new_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [171]

:[170]
popz.v
pushloc.v local._new_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[171]
pop.v.v local._new_style_struct
push.i [variable]suffix
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [173]

:[172]
popz.v
push.s ""@61
conv.s.v

:[173]
pop.v.v local._insert_string
push.i [variable]font
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]font
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [178]

:[174]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [176]

:[175]
push.s "[/font]"@7998
conv.s.v
b [177]

:[176]
push.s "["@572
pushloc.v local._new_value
add.v.s
push.s "]"@571
add.s.v

:[177]
add.v.v
pop.v.v local._insert_string

:[178]
push.i [variable]scale
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [180]

:[179]
popz.v
pushi.e 1
conv.i.v

:[180]
pop.v.v local._old_value
push.i [variable]scale
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [182]

:[181]
popz.v
pushi.e 1
conv.i.v

:[182]
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [187]

:[183]
push.v local._insert_string
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [185]

:[184]
push.s "[/scale]"@7999
conv.s.v
b [186]

:[185]
push.s "[scale,"@8000
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[186]
add.v.v
pop.v.v local._insert_string

:[187]
push.i [variable]color
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]color
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [192]

:[188]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [190]

:[189]
push.s "[/color]"@8001
conv.s.v
b [191]

:[190]
push.s "[d#"@8002
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[191]
add.v.v
pop.v.v local._insert_string

:[192]
push.i [variable]italic
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [194]

:[193]
popz.v
pushi.e 0
conv.i.v

:[194]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [196]

:[195]
popz.v
pushi.e 0
conv.i.v

:[196]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._old_value
push.i [variable]italic
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [198]

:[197]
popz.v
pushi.e 0
conv.i.v

:[198]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [200]

:[199]
popz.v
pushi.e 0
conv.i.v

:[200]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [215]

:[201]
pushloc.v local._new_value
pushi.e 0
cmp.i.v EQ
bf [209]

:[202]
pushloc.v local._old_value
pushi.e 1
cmp.i.v EQ
bf [204]

:[203]
push.v local._insert_string
push.s "[/i]"@8003
add.s.v
pop.v.v local._insert_string
b [208]

:[204]
pushloc.v local._old_value
pushi.e 2
cmp.i.v EQ
bf [206]

:[205]
push.v local._insert_string
push.s "[/b]"@8004
add.s.v
pop.v.v local._insert_string
b [208]

:[206]
pushloc.v local._old_value
pushi.e 3
cmp.i.v EQ
bf [208]

:[207]
push.v local._insert_string
push.s "[/bi]"@8005
add.s.v
pop.v.v local._insert_string

:[208]
b [215]

:[209]
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [211]

:[210]
push.v local._insert_string
push.s "[i]"@8006
add.s.v
pop.v.v local._insert_string
b [215]

:[211]
pushloc.v local._new_value
pushi.e 2
cmp.i.v EQ
bf [213]

:[212]
push.v local._insert_string
push.s "[b]"@8007
add.s.v
pop.v.v local._insert_string
b [215]

:[213]
pushloc.v local._new_value
pushi.e 3
cmp.i.v EQ
bf [215]

:[214]
push.v local._insert_string
push.s "[bi]"@8008
add.s.v
pop.v.v local._insert_string

:[215]
push.v local._insert_string
push.i [variable]prefix
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [217]

:[216]
popz.v
push.s ""@61
conv.s.v

:[217]
add.v.v
pop.v.v local._insert_string
push.v local._buffer_size
pushloc.v local._insert_string
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_insert_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushloc.v local._new_style
pop.v.v local._old_style

:[218]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v

:[219]
push.i [variable]bullet_sprite
conv.i.v
pushloc.v local._markdown_styles_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._bullet_sprite
pushloc.v local._indent
conv.v.b
bf [224]

:[220]
push.s "Warning! Found stacked indentation"@8009
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.v local._buffer_size
pushloc.v local._bullet_sprite
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [222]

:[221]
push.s "- "@8015
conv.s.v
b [223]

:[222]
push.s "["@572
pushloc.v local._bullet_sprite
call.i sprite_get_name(argc=1)
add.v.s
push.s "] "@8016
add.s.v

:[223]
pushi.e 2
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_and_insert_buffer
callv.v 4
add.v.v
pop.v.v local._buffer_size
b [228]

:[224]
pushi.e 1
pop.v.b local._indent
push.v local._buffer_size
pushloc.v local._bullet_sprite
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [226]

:[225]
push.s "- [indent]"@8017
conv.s.v
b [227]

:[226]
push.s "["@572
pushloc.v local._bullet_sprite
call.i sprite_get_name(argc=1)
add.v.s
push.s "] [indent]"@8018
add.s.v

:[227]
pushi.e 2
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_and_insert_buffer
callv.v 4
add.v.v
pop.v.v local._buffer_size

:[228]
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
pushi.e 0
pop.v.b local._newline
b [47]

:[229]
b [313]

:[230]
pushloc.v local._value
pushi.e 48
cmp.i.v GTE
bf [232]

:[231]
pushloc.v local._value
pushi.e 57
cmp.i.v LTE
b [233]

:[232]
push.e 0

:[233]
bf [313]

:[234]
pushi.e 1
pop.v.i local._number_size
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._number_peek

:[235]
pushi.e 1
bf [251]

:[236]
pushi.e 1
conv.i.v
pushloc.v local._number_peek
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._number_next_value
pushloc.v local._number_next_value
pushi.e 0
cmp.i.v EQ
bf [239]

:[237]
pushi.e 0
pop.v.i local._number_size
b [251]

:[238]
b [250]

:[239]
pushloc.v local._number_next_value
pushi.e 46
cmp.i.v EQ
bt [241]

:[240]
pushloc.v local._number_next_value
pushi.e 41
cmp.i.v EQ
b [242]

:[241]
push.e 1

:[242]
bf [245]

:[243]
b [251]

:[244]
b [250]

:[245]
pushloc.v local._number_next_value
pushi.e 48
cmp.i.v LT
bt [247]

:[246]
pushloc.v local._number_next_value
pushi.e 57
cmp.i.v GT
b [248]

:[247]
push.e 1

:[248]
bf [250]

:[249]
pushi.e 0
pop.v.i local._number_size
b [251]

:[250]
push.v local._number_size
push.e 1
add.i.v
pop.v.v local._number_size
push.v local._number_peek
push.e 1
add.i.v
pop.v.v local._number_peek
b [235]

:[251]
pushloc.v local._number_size
pushi.e 0
cmp.i.v GT
bf [312]

:[252]
push.s "body"@4901
pop.v.s local._new_style
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [308]

:[253]
pushi.e 1
pop.v.b local._write_style
pushloc.v local._write_style
conv.v.b
bf [307]

:[254]
pushi.e 0
pop.v.b local._write_style
pushloc.v local._old_style
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [256]

:[255]
push.v static._empty_struct
b [258]

:[256]
pushloc.v local._old_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [258]

:[257]
popz.v
pushloc.v local._old_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[258]
pop.v.v local._old_style_struct
pushloc.v local._new_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [260]

:[259]
popz.v
pushloc.v local._new_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[260]
pop.v.v local._new_style_struct
push.i [variable]suffix
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [262]

:[261]
popz.v
push.s ""@61
conv.s.v

:[262]
pop.v.v local._insert_string
push.i [variable]font
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]font
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [267]

:[263]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [265]

:[264]
push.s "[/font]"@7998
conv.s.v
b [266]

:[265]
push.s "["@572
pushloc.v local._new_value
add.v.s
push.s "]"@571
add.s.v

:[266]
add.v.v
pop.v.v local._insert_string

:[267]
push.i [variable]scale
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [269]

:[268]
popz.v
pushi.e 1
conv.i.v

:[269]
pop.v.v local._old_value
push.i [variable]scale
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [271]

:[270]
popz.v
pushi.e 1
conv.i.v

:[271]
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [276]

:[272]
push.v local._insert_string
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [274]

:[273]
push.s "[/scale]"@7999
conv.s.v
b [275]

:[274]
push.s "[scale,"@8000
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[275]
add.v.v
pop.v.v local._insert_string

:[276]
push.i [variable]color
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]color
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [281]

:[277]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [279]

:[278]
push.s "[/color]"@8001
conv.s.v
b [280]

:[279]
push.s "[d#"@8002
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[280]
add.v.v
pop.v.v local._insert_string

:[281]
push.i [variable]italic
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [283]

:[282]
popz.v
pushi.e 0
conv.i.v

:[283]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [285]

:[284]
popz.v
pushi.e 0
conv.i.v

:[285]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._old_value
push.i [variable]italic
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [287]

:[286]
popz.v
pushi.e 0
conv.i.v

:[287]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [289]

:[288]
popz.v
pushi.e 0
conv.i.v

:[289]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [304]

:[290]
pushloc.v local._new_value
pushi.e 0
cmp.i.v EQ
bf [298]

:[291]
pushloc.v local._old_value
pushi.e 1
cmp.i.v EQ
bf [293]

:[292]
push.v local._insert_string
push.s "[/i]"@8003
add.s.v
pop.v.v local._insert_string
b [297]

:[293]
pushloc.v local._old_value
pushi.e 2
cmp.i.v EQ
bf [295]

:[294]
push.v local._insert_string
push.s "[/b]"@8004
add.s.v
pop.v.v local._insert_string
b [297]

:[295]
pushloc.v local._old_value
pushi.e 3
cmp.i.v EQ
bf [297]

:[296]
push.v local._insert_string
push.s "[/bi]"@8005
add.s.v
pop.v.v local._insert_string

:[297]
b [304]

:[298]
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [300]

:[299]
push.v local._insert_string
push.s "[i]"@8006
add.s.v
pop.v.v local._insert_string
b [304]

:[300]
pushloc.v local._new_value
pushi.e 2
cmp.i.v EQ
bf [302]

:[301]
push.v local._insert_string
push.s "[b]"@8007
add.s.v
pop.v.v local._insert_string
b [304]

:[302]
pushloc.v local._new_value
pushi.e 3
cmp.i.v EQ
bf [304]

:[303]
push.v local._insert_string
push.s "[bi]"@8008
add.s.v
pop.v.v local._insert_string

:[304]
push.v local._insert_string
push.i [variable]prefix
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [306]

:[305]
popz.v
push.s ""@61
conv.s.v

:[306]
add.v.v
pop.v.v local._insert_string
push.v local._buffer_size
pushloc.v local._insert_string
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_insert_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushloc.v local._new_style
pop.v.v local._old_style

:[307]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v

:[308]
pushloc.v local._number_size
pushi.e 2
add.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v
pushloc.v local._indent
conv.v.b
bf [310]

:[309]
push.s "Warning! Found stacked indentation"@8009
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [311]

:[310]
pushi.e 1
pop.v.b local._indent
push.v local._buffer_size
push.s "[indent]"@8010
conv.s.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_insert_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size

:[311]
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
pushi.e 32
pop.v.i local._prev_value

:[312]
pushi.e 0
pop.v.b local._newline
b [47]

:[313]
pushloc.v local._value
pushi.e 32
cmp.i.v LTE
bf [315]

:[314]
b [47]

:[315]
pushi.e 0
pop.v.b local._newline

:[316]
pushloc.v local._value
pushi.e 42
cmp.i.v EQ
bf [341]

:[317]
pushloc.v local._next_value
pushi.e 42
cmp.i.v EQ
bf [329]

:[318]
pushloc.v local._new_style
push.s "body"@4901
cmp.s.v EQ
bf [320]

:[319]
push.s "bold"@7953
pop.v.s local._new_style
b [326]

:[320]
pushloc.v local._new_style
push.s "bold"@7953
cmp.s.v EQ
bf [322]

:[321]
push.s "body"@4901
pop.v.s local._new_style
b [326]

:[322]
pushloc.v local._new_style
push.s "italic"@7954
cmp.s.v EQ
bf [324]

:[323]
push.s "bold_italic"@7974
pop.v.s local._new_style
b [326]

:[324]
pushloc.v local._new_style
push.s "bold_italic"@7974
cmp.s.v EQ
bf [326]

:[325]
push.s "italic"@7954
pop.v.s local._new_style

:[326]
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [328]

:[327]
pushi.e 1
pop.v.b local._write_style

:[328]
pushi.e 2
pop.v.i local._delete_size
b [340]

:[329]
pushloc.v local._new_style
push.s "body"@4901
cmp.s.v EQ
bf [331]

:[330]
push.s "italic"@7954
pop.v.s local._new_style
b [337]

:[331]
pushloc.v local._new_style
push.s "italic"@7954
cmp.s.v EQ
bf [333]

:[332]
push.s "body"@4901
pop.v.s local._new_style
b [337]

:[333]
pushloc.v local._new_style
push.s "bold"@7953
cmp.s.v EQ
bf [335]

:[334]
push.s "bold_italic"@7974
pop.v.s local._new_style
b [337]

:[335]
pushloc.v local._new_style
push.s "bold_italic"@7974
cmp.s.v EQ
bf [337]

:[336]
push.s "bold"@7953
pop.v.s local._new_style

:[337]
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [339]

:[338]
pushi.e 1
pop.v.b local._write_style

:[339]
pushi.e 1
pop.v.i local._delete_size

:[340]
push.v local._buffer_size
pushloc.v local._delete_size
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
b [459]

:[341]
pushloc.v local._value
pushi.e 95
cmp.i.v EQ
bf [346]

:[342]
pushloc.v local._prev_value
pushi.e 32
cmp.i.v LTE
bt [344]

:[343]
pushloc.v local._next_value
pushi.e 32
cmp.i.v LTE
b [345]

:[344]
push.e 1

:[345]
b [347]

:[346]
push.e 0

:[347]
bf [359]

:[348]
pushloc.v local._new_style
push.s "body"@4901
cmp.s.v EQ
bf [350]

:[349]
push.s "italic"@7954
pop.v.s local._new_style
b [356]

:[350]
pushloc.v local._new_style
push.s "italic"@7954
cmp.s.v EQ
bf [352]

:[351]
push.s "body"@4901
pop.v.s local._new_style
b [356]

:[352]
pushloc.v local._new_style
push.s "bold"@7953
cmp.s.v EQ
bf [354]

:[353]
push.s "bold_italic"@7974
pop.v.s local._new_style
b [356]

:[354]
pushloc.v local._new_style
push.s "bold_italic"@7974
cmp.s.v EQ
bf [356]

:[355]
push.s "bold"@7953
pop.v.s local._new_style

:[356]
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [358]

:[357]
pushi.e 1
pop.v.b local._write_style

:[358]
push.v local._buffer_size
pushi.e 1
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
b [459]

:[359]
pushloc.v local._value
pushi.e 33
cmp.i.v EQ
bf [361]

:[360]
pushloc.v local._next_value
pushi.e 91
cmp.i.v EQ
b [362]

:[361]
push.e 0

:[362]
bf [364]

:[363]
push.v local._buffer_size
pushi.e 1
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
b [459]

:[364]
pushloc.v local._value
pushi.e 92
cmp.i.v EQ
bf [368]

:[365]
pushloc.v local._next_value
pushi.e 0
cmp.i.v EQ
bf [367]

:[366]
exit.i

:[367]
push.v local._buffer_size
pushi.e 1
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
b [459]

:[368]
pushloc.v local._in_link
conv.v.b
bf [371]

:[369]
pushloc.v local._value
pushi.e 93
cmp.i.v EQ
bf [371]

:[370]
pushloc.v local._next_value
pushi.e 40
cmp.i.v EQ
b [372]

:[371]
push.e 0

:[372]
bf [376]

:[373]
push.v local._buffer_size
push.s "[/region]"@8023
conv.s.v
pushi.e 2
conv.i.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_and_insert_buffer
callv.v 4
add.v.v
pop.v.v local._buffer_size
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
push.s "body"@4901
pop.v.s local._new_style
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [375]

:[374]
pushi.e 1
pop.v.b local._write_style

:[375]
pushi.e 0
pop.v.b local._in_link
b [459]

:[376]
pushloc.v local._in_link
conv.v.b
not.b
bf [378]

:[377]
pushloc.v local._value
pushi.e 91
cmp.i.v EQ
b [379]

:[378]
push.e 0

:[379]
bf [403]

:[380]
pushi.e 0
pop.v.b local._is_link
pushi.e 1
pop.v.i local._link_size
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 2
sub.i.v
pop.v.v local._link_start
pushloc.v local._link_start
pushi.e 1
add.i.v
pop.v.v local._link_peek

:[381]
pushi.e 1
bf [391]

:[382]
pushi.e 1
conv.i.v
pushloc.v local._link_peek
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._link_next_value
pushloc.v local._link_next_value
pushi.e 0
cmp.i.v EQ
bf [385]

:[383]
b [391]

:[384]
b [390]

:[385]
pushloc.v local._link_next_value
pushi.e 93
cmp.i.v EQ
bf [389]

:[386]
push.v local._link_peek
push.e 1
add.i.v
pop.v.v local._link_peek
pushi.e 1
conv.i.v
pushloc.v local._link_peek
push.v static._buffer
call.i buffer_peek(argc=3)
pushi.e 40
cmp.i.v EQ
bf [388]

:[387]
pushi.e 1
pop.v.b local._is_link
b [391]

:[388]
push.v local._link_size
push.e 1
add.i.v
pop.v.v local._link_size
b [390]

:[389]
push.v local._link_size
push.e 1
add.i.v
pop.v.v local._link_size
push.v local._link_peek
push.e 1
add.i.v
pop.v.v local._link_peek

:[390]
b [381]

:[391]
pushloc.v local._is_link
conv.v.b
bf [403]

:[392]
pushi.e 0
pop.v.b local._is_link
pushloc.v local._link_peek
pushi.e 1
add.i.v
pop.v.v local._region_start
pushloc.v local._region_start
pop.v.v local._region_end

:[393]
pushi.e 1
bf [400]

:[394]
pushi.e 1
conv.i.v
pushloc.v local._region_end
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._region_next_value
pushloc.v local._region_next_value
pushi.e 0
cmp.i.v EQ
bt [396]

:[395]
pushloc.v local._region_next_value
pushi.e 41
cmp.i.v EQ
b [397]

:[396]
push.e 1

:[397]
bf [399]

:[398]
b [400]

:[399]
push.v local._region_end
push.e 1
add.i.v
pop.v.v local._region_end
b [393]

:[400]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._region_end
push.v static._buffer
call.i buffer_poke(argc=4)
popz.v
pushi.e 11
conv.i.v
pushloc.v local._region_start
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._region_name
push.v local._buffer_size
pushloc.v local._region_start
pushi.e 1
pushloc.v local._region_end
add.v.i
pushloc.v local._region_start
sub.v.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_delete_buffer
callv.v 4
add.v.v
pop.v.v local._buffer_size
push.v local._buffer_size
pushloc.v local._link_start
pushi.e 1
add.i.v
push.s "region,"@8031
pushloc.v local._region_name
add.v.s
push.s "]"@571
add.s.v
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_insert_buffer
callv.v 4
add.v.v
pop.v.v local._buffer_size
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_seek(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value
pushi.e 1
pop.v.b local._in_link
push.s "link"@7978
pop.v.s local._new_style
pushloc.v local._old_style
pushloc.v local._new_style
cmp.v.v NEQ
bf [402]

:[401]
pushi.e 1
pop.v.b local._write_style

:[402]
b [47]

:[403]
pushloc.v local._value
pop.v.v local._prev_value
pushloc.v local._value
pushi.e 32
cmp.i.v GT
bf [459]

:[404]
pushloc.v local._write_style
conv.v.b
bf [458]

:[405]
pushi.e 0
pop.v.b local._write_style
pushloc.v local._old_style
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [407]

:[406]
push.v static._empty_struct
b [409]

:[407]
pushloc.v local._old_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [409]

:[408]
popz.v
pushloc.v local._old_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[409]
pop.v.v local._old_style_struct
pushloc.v local._new_style
pushloc.v local._markdown_styles_struct
call.i variable_struct_get(argc=2)
chknullish.e
bf [411]

:[410]
popz.v
pushloc.v local._new_style
pushloc.v local._fallback_styles_struct
call.i variable_struct_get(argc=2)

:[411]
pop.v.v local._new_style_struct
push.i [variable]suffix
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [413]

:[412]
popz.v
push.s ""@61
conv.s.v

:[413]
pop.v.v local._insert_string
push.i [variable]font
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]font
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [418]

:[414]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [416]

:[415]
push.s "[/font]"@7998
conv.s.v
b [417]

:[416]
push.s "["@572
pushloc.v local._new_value
add.v.s
push.s "]"@571
add.s.v

:[417]
add.v.v
pop.v.v local._insert_string

:[418]
push.i [variable]scale
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [420]

:[419]
popz.v
pushi.e 1
conv.i.v

:[420]
pop.v.v local._old_value
push.i [variable]scale
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [422]

:[421]
popz.v
pushi.e 1
conv.i.v

:[422]
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [427]

:[423]
push.v local._insert_string
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [425]

:[424]
push.s "[/scale]"@7999
conv.s.v
b [426]

:[425]
push.s "[scale,"@8000
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[426]
add.v.v
pop.v.v local._insert_string

:[427]
push.i [variable]color
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._old_value
push.i [variable]color
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
pop.v.v local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [432]

:[428]
push.v local._insert_string
pushloc.v local._new_value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [430]

:[429]
push.s "[/color]"@8001
conv.s.v
b [431]

:[430]
push.s "[d#"@8002
pushloc.v local._new_value
call.i string(argc=1)
add.v.s
push.s "]"@571
add.s.v

:[431]
add.v.v
pop.v.v local._insert_string

:[432]
push.i [variable]italic
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [434]

:[433]
popz.v
pushi.e 0
conv.i.v

:[434]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._old_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [436]

:[435]
popz.v
pushi.e 0
conv.i.v

:[436]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._old_value
push.i [variable]italic
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [438]

:[437]
popz.v
pushi.e 0
conv.i.v

:[438]
conv.v.l
pushi.e 2
push.i [variable]bold
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [440]

:[439]
popz.v
pushi.e 0
conv.i.v

:[440]
mul.v.i
conv.v.l
or.l.l
pop.v.l local._new_value
pushloc.v local._old_value
pushloc.v local._new_value
cmp.v.v NEQ
bf [455]

:[441]
pushloc.v local._new_value
pushi.e 0
cmp.i.v EQ
bf [449]

:[442]
pushloc.v local._old_value
pushi.e 1
cmp.i.v EQ
bf [444]

:[443]
push.v local._insert_string
push.s "[/i]"@8003
add.s.v
pop.v.v local._insert_string
b [448]

:[444]
pushloc.v local._old_value
pushi.e 2
cmp.i.v EQ
bf [446]

:[445]
push.v local._insert_string
push.s "[/b]"@8004
add.s.v
pop.v.v local._insert_string
b [448]

:[446]
pushloc.v local._old_value
pushi.e 3
cmp.i.v EQ
bf [448]

:[447]
push.v local._insert_string
push.s "[/bi]"@8005
add.s.v
pop.v.v local._insert_string

:[448]
b [455]

:[449]
pushloc.v local._new_value
pushi.e 1
cmp.i.v EQ
bf [451]

:[450]
push.v local._insert_string
push.s "[i]"@8006
add.s.v
pop.v.v local._insert_string
b [455]

:[451]
pushloc.v local._new_value
pushi.e 2
cmp.i.v EQ
bf [453]

:[452]
push.v local._insert_string
push.s "[b]"@8007
add.s.v
pop.v.v local._insert_string
b [455]

:[453]
pushloc.v local._new_value
pushi.e 3
cmp.i.v EQ
bf [455]

:[454]
push.v local._insert_string
push.s "[bi]"@8008
add.s.v
pop.v.v local._insert_string

:[455]
push.v local._insert_string
push.i [variable]prefix
conv.i.v
pushloc.v local._new_style_struct
call.i struct_get_from_hash(argc=2)
chknullish.e
bf [457]

:[456]
popz.v
push.s ""@61
conv.s.v

:[457]
add.v.v
pop.v.v local._insert_string
push.v local._buffer_size
pushloc.v local._insert_string
pushloc.v local._buffer_size
push.v static._buffer
call.i @@This@@(argc=0)
push.v static._func_insert_buffer
callv.v 3
add.v.v
pop.v.v local._buffer_size
pushloc.v local._new_style
pop.v.v local._old_style

:[458]
pushi.e 1
conv.i.v
push.v static._buffer
call.i buffer_tell(argc=1)
pushi.e 1
sub.i.v
push.v static._buffer
call.i buffer_peek(argc=3)
pop.v.v local._next_value

:[459]
b [47]

:[460]
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
ret.v

:[461]
exit.i

:[462]
push.i [function]gml_Script_scribble_markdown_format
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_markdown_format
popz.v

:[end]