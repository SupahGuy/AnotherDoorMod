:[0]
b [193]

> gml_Script___scribble_gen_4_build_words (locals=15, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state

:[3]
push.v static._generator_state
pushi.e -9
pushenv [5]

:[4]
push.v builtin.__glyph_grid
pop.v.v local._glyph_grid
push.v builtin.__word_grid
pop.v.v local._word_grid
push.v builtin.__element
pop.v.v local._element
push.v builtin.__glyph_count
pop.v.v local._glyph_count
push.v builtin.__overall_bidi
pop.v.v local._overall_bidi

:[5]
popenv [4]
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__wrap_per_char
pop.v.v local._wrap_per_char
pushi.e 0
pop.v.i local._word_count
pushi.e 0
pop.v.i local._word_width
pushi.e 0
pop.v.i local._word_glyph_start
pushbltn.v builtin.undefined
pop.v.v local._word_glyph_end
pushloc.v local._overall_bidi
pop.v.v local._word_bidi
pushloc.v local._word_bidi
push.l 0
cmp.l.v EQ
pop.v.b local._glyph_prev_whitespace
pushloc.v local._glyph_count
pushi.e 0
cmp.i.v GT
bf [190]

:[6]
push.l 1
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [8]

:[7]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.l 4
conv.l.v
b [12]

:[11]
pushloc.v local._word_bidi

:[12]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 6
cmp.l.v LT
bf [14]

:[13]
push.v local._word_width
push.l 7
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v local._word_width
pushi.e 0
conv.i.v
push.l 16
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [15]

:[14]
push.v local._word_width
push.l 7
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
sub.v.v
pop.v.v local._word_width
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_width
add.v.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[15]
pushi.e 1
pop.v.i local._i
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [183]

:[16]
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._glyph_bidi
pushloc.v local._glyph_bidi
dup.v 0
push.l 0
cmp.l.v EQ
bt [25]

:[17]
dup.v 0
push.l 1
cmp.l.v EQ
bt [63]

:[18]
dup.v 0
push.l 2
cmp.l.v EQ
bt [97]

:[19]
dup.v 0
push.l 3
cmp.l.v EQ
bt [110]

:[20]
dup.v 0
push.l 4
cmp.l.v EQ
bt [140]

:[21]
dup.v 0
push.l 5
cmp.l.v EQ
bt [140]

:[22]
dup.v 0
push.l 6
cmp.l.v EQ
bt [140]

:[23]
dup.v 0
push.l 7
cmp.l.v EQ
bt [140]

:[24]
b [178]

:[25]
pushloc.v local._wrap_per_char
conv.v.b
bt [27]

:[26]
pushloc.v local._glyph_prev_whitespace
conv.v.b
b [28]

:[27]
push.e 1

:[28]
bf [42]

:[29]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [31]

:[30]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [35]

:[31]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [33]

:[32]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[33]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [35]

:[34]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[35]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [37]

:[36]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
push.l 4
conv.l.v
b [41]

:[40]
pushloc.v local._word_bidi

:[41]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [62]

:[42]
pushi.e 1
pop.v.b local._glyph_prev_whitespace
pushi.e 1
bt [47]

:[43]
pushloc.v local._word_bidi
pushloc.v local._overall_bidi
cmp.v.v NEQ
bf [45]

:[44]
pushloc.v local._glyph_bidi
pushloc.v local._word_bidi
cmp.v.v NEQ
b [46]

:[45]
push.e 0

:[46]
b [48]

:[47]
push.e 1

:[48]
bf [62]

:[49]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [51]

:[50]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [55]

:[51]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [53]

:[52]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[53]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [55]

:[54]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[55]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [57]

:[56]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [60]

:[59]
push.l 4
conv.l.v
b [61]

:[60]
pushloc.v local._word_bidi

:[61]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v

:[62]
b [178]

:[63]
pushloc.v local._word_bidi
push.l 0
cmp.l.v NEQ
bf [65]

:[64]
pushloc.v local._word_bidi
push.l 2
cmp.l.v NEQ
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushloc.v local._word_bidi
pop.v.v local._glyph_bidi
b [96]

:[68]
pushloc.v local._glyph_prev_whitespace
conv.v.b
bf [82]

:[69]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [71]

:[70]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [75]

:[71]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [73]

:[72]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[73]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [75]

:[74]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[75]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [77]

:[76]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [78]

:[77]
push.e 1

:[78]
bf [80]

:[79]
push.l 4
conv.l.v
b [81]

:[80]
pushloc.v local._word_bidi

:[81]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._glyph_prev_whitespace
b [96]

:[82]
pushloc.v local._glyph_bidi
pushloc.v local._word_bidi
cmp.v.v NEQ
bf [96]

:[83]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [85]

:[84]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [89]

:[85]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [87]

:[86]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[87]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [89]

:[88]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[89]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [91]

:[90]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [92]

:[91]
push.e 1

:[92]
bf [94]

:[93]
push.l 4
conv.l.v
b [95]

:[94]
pushloc.v local._word_bidi

:[95]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v

:[96]
b [178]

:[97]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [99]

:[98]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [103]

:[99]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [101]

:[100]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[101]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [103]

:[102]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[103]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [105]

:[104]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [108]

:[107]
push.l 4
conv.l.v
b [109]

:[108]
pushloc.v local._word_bidi

:[109]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._glyph_prev_whitespace
b [178]

:[110]
pushloc.v local._glyph_prev_whitespace
conv.v.b
bf [124]

:[111]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [113]

:[112]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [117]

:[113]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [115]

:[114]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[115]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [117]

:[116]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[117]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [119]

:[118]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [120]

:[119]
push.e 1

:[120]
bf [122]

:[121]
push.l 4
conv.l.v
b [123]

:[122]
pushloc.v local._word_bidi

:[123]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._glyph_prev_whitespace
b [139]

:[124]
pushloc.v local._word_bidi
push.l 1
cmp.l.v EQ
bf [126]

:[125]
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._glyph_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_bidi
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [139]

:[126]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [128]

:[127]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [132]

:[128]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [130]

:[129]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[130]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [132]

:[131]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[132]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [134]

:[133]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [135]

:[134]
push.e 1

:[135]
bf [137]

:[136]
push.l 4
conv.l.v
b [138]

:[137]
pushloc.v local._word_bidi

:[138]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v

:[139]
b [178]

:[140]
pushloc.v local._glyph_prev_whitespace
conv.v.b
bf [154]

:[141]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [143]

:[142]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [147]

:[143]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [145]

:[144]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[145]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [147]

:[146]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[147]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [149]

:[148]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [150]

:[149]
push.e 1

:[150]
bf [152]

:[151]
push.l 4
conv.l.v
b [153]

:[152]
pushloc.v local._word_bidi

:[153]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._glyph_prev_whitespace
b [177]

:[154]
pushloc.v local._word_bidi
push.l 1
cmp.l.v EQ
bf [160]

:[155]
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._glyph_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_bidi
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 6
cmp.l.v GTE
bf [159]

:[156]
pushi.e 0
pop.v.i local._word_width
pushloc.v local._word_glyph_start
pop.v.v local._j
pushloc.v local._i
pushloc.v local._j
sub.v.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [158]

:[157]
push.l 2
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_width
add.v.v
push.l 2
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
push.l 7
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
sub.v.v
pop.v.v local._word_width
push.l 2
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_width
add.v.v
push.l 2
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [157]

:[158]
popz.i

:[159]
b [177]

:[160]
pushloc.v local._wrap_per_char
conv.v.b
bt [162]

:[161]
pushloc.v local._glyph_bidi
pushloc.v local._word_bidi
cmp.v.v NEQ
b [163]

:[162]
push.e 1

:[163]
bf [177]

:[164]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [166]

:[165]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [170]

:[166]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [168]

:[167]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[168]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [170]

:[169]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[170]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count
pushi.e 0
pop.v.i local._word_width
pushloc.v local._i
pop.v.v local._word_glyph_start
pushloc.v local._glyph_bidi
pop.v.v local._word_bidi
pushloc.v local._word_glyph_start
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 2
cmp.l.v EQ
bt [172]

:[171]
pushloc.v local._word_bidi
push.l 3
cmp.l.v EQ
b [173]

:[172]
push.e 1

:[173]
bf [175]

:[174]
push.l 4
conv.l.v
b [176]

:[175]
pushloc.v local._word_bidi

:[176]
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v

:[177]
b [178]

:[178]
popz.v
pushloc.v local._word_bidi
push.l 6
cmp.l.v LT
bf [180]

:[179]
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_width
add.v.v
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_width
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v local._word_width
pushloc.v local._i
push.l 16
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [182]

:[180]
push.v local._word_width
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
sub.v.v
pop.v.v local._word_width
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._word_width
add.v.v
push.l 2
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [182]

:[181]
pushloc.v local._i
push.l 16
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[182]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [16]

:[183]
popz.i
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._word_glyph_end
pushloc.v local._word_bidi
push.l 7
cmp.l.v EQ
bf [185]

:[184]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v
push.l 6
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
b [189]

:[185]
pushloc.v local._word_bidi
push.l 5
cmp.l.v EQ
bf [187]

:[186]
pushloc.v local._word_glyph_start
push.l 16
conv.l.v
pushloc.v local._word_glyph_end
push.l 16
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_set_region(argc=6)
popz.v

:[187]
pushloc.v local._word_bidi
push.l 6
cmp.l.v EQ
bf [189]

:[188]
pushloc.v local._word_width
call.i abs(argc=1)
push.l 2
conv.l.v
pushloc.v local._word_glyph_end
push.l 2
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_add_region(argc=6)
popz.v

:[189]
pushloc.v local._word_glyph_end
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_width
call.i abs(argc=1)
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
pushloc.v local._word_glyph_end
push.l 6
conv.l.v
pushloc.v local._word_glyph_start
pushloc.v local._glyph_grid
call.i ds_grid_get_max(argc=5)
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v local._word_count
push.e 1
add.i.v
pop.v.v local._word_count

:[190]
pushloc.v local._word_glyph_end
pushi.e 1
add.i.v
push.l 2
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._word_glyph_end
pushi.e 1
add.i.v
push.l 3
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 4
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 5
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 0
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 1
conv.l.v
pushloc.v local._word_count
pushloc.v local._word_grid
call.i ds_grid_set(argc=4)
popz.v
push.v static._generator_state
pushi.e -9
pushenv [192]

:[191]
pushloc.v local._word_count
pop.v.v builtin.__word_count

:[192]
popenv [191]
exit.i

:[193]
push.i [function]gml_Script___scribble_gen_4_build_words
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_4_build_words
popz.v

:[end]