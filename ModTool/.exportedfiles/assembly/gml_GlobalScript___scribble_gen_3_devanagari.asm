:[0]
b [106]

> gml_Script___scribble_gen_3_devanagari (locals=32, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__krutidev_lookup_map
pop.v.v static._krutidev_lookup_map
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__krutidev_matra_lookup_map
pop.v.v static._krutidev_matra_lookup_map
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state

:[3]
push.v builtin.__has_devanagari
conv.v.b
not.b
bf [5]

:[4]
exit.i

:[5]
push.v static._generator_state
pushi.e -9
pushenv [7]

:[6]
push.v builtin.__glyph_grid
pop.v.v local._glyph_grid
push.v builtin.__control_grid
pop.v.v local._control_grid
push.v builtin.__temp2_grid
pop.v.v local._temp_grid
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__glyph_count
pop.v.v local._glyph_count

:[7]
popenv [6]
push.v local._glyph_count
push.e 1
sub.i.v
pop.v.v local._glyph_count
push.i 65535
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.i 65535
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.i 65535
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushi.e 2
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.i 65535
conv.i.v
push.l 0
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.b local._in_single_quote
pushi.e 0
pop.v.b local._in_double_quote
pushi.e 0
pop.v.i local._i
pushloc.v local._glyph_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [40]

:[8]
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 39
cmp.i.v EQ
bt [21]

:[9]
dup.v 0
pushi.e 34
cmp.i.v EQ
bt [25]

:[10]
dup.v 0
pushi.e 2345
cmp.i.v EQ
bt [29]

:[11]
dup.v 0
pushi.e 2353
cmp.i.v EQ
bt [30]

:[12]
dup.v 0
pushi.e 2392
cmp.i.v EQ
bt [31]

:[13]
dup.v 0
pushi.e 2393
cmp.i.v EQ
bt [32]

:[14]
dup.v 0
pushi.e 2394
cmp.i.v EQ
bt [33]

:[15]
dup.v 0
pushi.e 2395
cmp.i.v EQ
bt [34]

:[16]
dup.v 0
pushi.e 2396
cmp.i.v EQ
bt [35]

:[17]
dup.v 0
pushi.e 2397
cmp.i.v EQ
bt [36]

:[18]
dup.v 0
pushi.e 2398
cmp.i.v EQ
bt [37]

:[19]
dup.v 0
pushi.e 2399
cmp.i.v EQ
bt [38]

:[20]
b [39]

:[21]
pushloc.v local._in_single_quote
conv.v.b
not.b
pop.v.b local._in_single_quote
push.i 65535
pushloc.v local._in_single_quote
conv.v.b
bf [23]

:[22]
pushi.e 94
conv.i.v
b [24]

:[23]
pushi.e 42
conv.i.v

:[24]
add.v.i
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[25]
pushloc.v local._in_double_quote
conv.v.b
not.b
pop.v.b local._in_double_quote
push.i 65535
pushloc.v local._in_double_quote
conv.v.b
bf [27]

:[26]
pushi.e 223
conv.i.v
b [28]

:[27]
pushi.e 222
conv.i.v

:[28]
add.v.i
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[29]
pushi.e 2344
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[30]
pushi.e 2352
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[31]
pushi.e 2325
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[32]
pushi.e 2326
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[33]
pushi.e 2327
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[34]
pushi.e 2332
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[35]
pushi.e 2337
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[36]
pushi.e 2338
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[37]
pushi.e 2347
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[38]
pushi.e 2351
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushloc.v local._i
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
push.v local._glyph_count
push.e 1
add.i.v
pop.v.v local._glyph_count
pushi.e 2364
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [39]

:[39]
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [8]

:[40]
popz.i
pushi.e 1
pop.v.i local._i
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [52]

:[41]
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._char
pushloc.v local._char
pushi.e 2367
cmp.i.v EQ
bf [51]

:[42]
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._j

:[43]
pushloc.v local._j
pushi.e 0
cmp.i.v GTE
bf [50]

:[44]
push.l 0
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._prev_char
pushloc.v local._prev_char
pushi.e 2381
cmp.i.v EQ
bf [46]

:[45]
push.v local._j
pushi.e 2
sub.i.v
pop.v.v local._j
b [49]

:[46]
pushloc.v local._prev_char
pushi.e 2364
cmp.i.v EQ
bf [48]

:[47]
push.v local._j
pushi.e 1
sub.i.v
pop.v.v local._j
b [49]

:[48]
b [50]

:[49]
b [43]

:[50]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._i
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushloc.v local._j
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._j
pushi.e 1
add.i.v
push.l 20
conv.l.v
pushloc.v local._i
pushi.e 1
sub.i.v
pushloc.v local._j
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.i 65637
conv.i.v
push.l 0
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._j
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._j
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v

:[51]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [41]

:[52]
popz.i
pushi.e 0
pop.v.i local._i

:[53]
pushloc.v local._i
pushloc.v local._glyph_count
cmp.v.v LT
bf [63]

:[54]
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushi.e 2352
cmp.i.v EQ
bf [56]

:[55]
push.l 0
conv.l.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushi.e 2381
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [62]

:[58]
pushloc.v local._i
pushi.e 2
add.i.v
pop.v.v local._newPosition
push.l 0
conv.l.v
pushloc.v local._newPosition
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._charRight

:[59]
pushloc.v local._charRight
push.v static._krutidev_matra_lookup_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [61]

:[60]
push.v local._newPosition
push.e 1
add.i.v
pop.v.v local._newPosition
push.l 0
conv.l.v
pushloc.v local._newPosition
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._charRight
b [59]

:[61]
pushi.e 1
pushloc.v local._newPosition
add.v.i
pushloc.v local._i
pushi.e 2
add.i.v
sub.v.v
pop.v.v local._copyCount
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
push.l 20
conv.l.v
pushloc.v local._newPosition
pushi.e 0
conv.i.v
pushloc.v local._i
pushi.e 2
add.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.i 65625
conv.i.v
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._copyCount
add.v.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._copyCount
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._copyCount
add.v.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushloc.v local._copyCount
add.v.v
pushi.e 1
add.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._newPosition
pushi.e 1
add.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
push.v local._glyph_count
push.e 1
sub.i.v
pop.v.v local._glyph_count

:[62]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [53]

:[63]
pushi.e 0
pop.v.i local._oneChar
push.l 0
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pop.v.l local._twoChar
pushloc.v local._twoChar
conv.v.l
push.l 0
conv.l.v
pushi.e 1
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
push.i 65535
and.i.l
pushi.e 32
conv.i.l
shl.l.l
or.l.l
pop.v.l local._threeChar
pushloc.v local._threeChar
conv.v.l
push.l 0
conv.l.v
pushi.e 2
conv.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
push.i 65535
and.i.l
pushi.e 48
conv.i.l
shl.l.l
or.l.l
pop.v.l local._fourChar
pushi.e 0
pop.v.i local._i

:[64]
pushloc.v local._i
pushloc.v local._glyph_count
cmp.v.v LT
bf [87]

:[65]
pushloc.v local._twoChar
conv.v.l
pushi.e 16
conv.i.l
shr.l.l
pop.v.l local._oneChar
pushloc.v local._threeChar
conv.v.l
pushi.e 16
conv.i.l
shr.l.l
pop.v.l local._twoChar
pushloc.v local._fourChar
conv.v.l
push.l 9223372036854775807
and.l.l
pushi.e 16
conv.i.l
shr.l.l
pop.v.l local._threeChar
pushloc.v local._threeChar
conv.v.l
push.l 0
conv.l.v
pushloc.v local._i
pushi.e 3
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
push.i 65535
and.i.l
pushi.e 48
conv.i.l
shl.l.l
or.l.l
pop.v.l local._fourChar
pushi.e 4
pop.v.i local._foundLength
pushloc.v local._fourChar
push.v static._krutidev_lookup_map
call.i ds_map_find_value(argc=2)
pop.v.v local._replacementArray
pushloc.v local._replacementArray
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [69]

:[66]
pushi.e 3
pop.v.i local._foundLength
pushloc.v local._threeChar
push.v static._krutidev_lookup_map
call.i ds_map_find_value(argc=2)
pop.v.v local._replacementArray
pushloc.v local._replacementArray
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [69]

:[67]
pushi.e 2
pop.v.i local._foundLength
pushloc.v local._twoChar
push.v static._krutidev_lookup_map
call.i ds_map_find_value(argc=2)
pop.v.v local._replacementArray
pushloc.v local._replacementArray
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i local._foundLength
pushloc.v local._oneChar
push.v static._krutidev_lookup_map
call.i ds_map_find_value(argc=2)
pop.v.v local._replacementArray

:[69]
pushloc.v local._replacementArray
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [86]

:[70]
pushloc.v local._replacementArray
call.i array_length(argc=1)
pop.v.v local._replacementLength
pushloc.v local._foundLength
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushloc.v local._replacementLength
pushi.e 1
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
push.i 65535
pushi.e -7
pushi.e 0
push.v [array]self._replacementArray
add.v.i
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [86]

:[75]
pushloc.v local._replacementLength
pushloc.v local._foundLength
call.i min(argc=2)
pop.v.v local._copyCount
pushi.e 0
pop.v.i local._j
pushloc.v local._copyCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [77]

:[76]
push.i 65535
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._replacementArray
add.v.i
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._j
add.v.v
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
bt [76]

:[77]
popz.i
pushloc.v local._foundLength
pushloc.v local._replacementLength
cmp.v.v GT
bf [79]

:[78]
pushloc.v local._i
pushloc.v local._copyCount
add.v.v
pushloc.v local._foundLength
add.v.v
pushloc.v local._replacementLength
sub.v.v
pop.v.v local._copyStart
pushloc.v local._glyph_count
pushloc.v local._copyStart
sub.v.v
pop.v.v local._copyLength
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 0
conv.i.v
pushloc.v local._copyStart
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._i
pushloc.v local._copyCount
add.v.v
push.l 20
conv.l.v
pushloc.v local._copyLength
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
b [85]

:[79]
pushloc.v local._foundLength
pushloc.v local._replacementLength
cmp.v.v LT
bf [85]

:[80]
pushloc.v local._i
pushloc.v local._copyCount
add.v.v
pop.v.v local._insertPos
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushi.e 0
conv.i.v
pushloc.v local._insertPos
pushloc.v local._glyph_grid
pushloc.v local._temp_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushi.e 0
conv.i.v
pushloc.v local._insertPos
pushloc.v local._replacementLength
pushloc.v local._foundLength
sub.v.v
add.v.v
push.l 20
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._insertPos
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._temp_grid
pushloc.v local._glyph_grid
call.i ds_grid_set_grid_region(argc=8)
popz.v
pushloc.v local._replacementLength
pushloc.v local._foundLength
sub.v.v
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.i 65535
pushi.e -7
pushloc.v local._replacementLength
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._replacementArray
add.v.i
push.l 0
conv.l.v
pushloc.v local._insertPos
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._insertPos
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._insertPos
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [85]

:[82]
pushloc.v local._replacementLength
pushloc.v local._foundLength
sub.v.v
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
push.i 65535
pushi.e -7
pushloc.v local._replacementLength
pushi.e 2
sub.i.v
conv.v.i
push.v [array]self._replacementArray
add.v.i
push.l 0
conv.l.v
pushloc.v local._insertPos
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._insertPos
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._insertPos
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.i 65535
pushi.e -7
pushloc.v local._replacementLength
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._replacementArray
add.v.i
push.l 0
conv.l.v
pushloc.v local._insertPos
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
push.l 15
conv.l.v
pushloc.v local._insertPos
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
push.l 15
conv.l.v
pushloc.v local._insertPos
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
b [85]

:[84]
push.s "Devanagari substring insertion length > 2. Please report this error"@3621
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[85]
push.v local._i
pushloc.v local._replacementLength
pushi.e 1
sub.i.v
add.v.v
pop.v.v local._i
push.v local._glyph_count
pushloc.v local._replacementLength
pushloc.v local._foundLength
sub.v.v
add.v.v
pop.v.v local._glyph_count
push.l 0
conv.l.v
pushloc.v local._i
pushi.e 1
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pop.v.l local._twoChar
pushloc.v local._twoChar
conv.v.l
push.l 0
conv.l.v
pushloc.v local._i
pushi.e 2
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
push.i 65535
and.i.l
pushi.e 32
conv.i.l
shl.l.l
or.l.l
pop.v.l local._threeChar
pushloc.v local._threeChar
conv.v.l
push.l 0
conv.l.v
pushloc.v local._i
pushi.e 3
add.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
conv.v.l
push.i 65535
and.i.l
pushi.e 48
conv.i.l
shl.l.l
or.l.l
pop.v.l local._fourChar

:[86]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [64]

:[87]
pushi.e 0
pop.v.i local._control_index
pushbltn.v builtin.undefined
pop.v.v local._font_name
pushbltn.v builtin.undefined
pop.v.v local._font_glyphs_map
pushbltn.v builtin.undefined
pop.v.v local._font_glyph_data_grid
pushi.e 0
pop.v.i local._i
pushloc.v local._glyph_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [102]

:[88]
push.l 15
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pushloc.v local._control_index
sub.v.v
pop.v.v local._control_delta
pushloc.v local._control_delta
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [92]

:[89]
push.l 0
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
push.l 6
cmp.l.v EQ
bf [91]

:[90]
push.l 1
conv.l.v
pushloc.v local._control_index
pushloc.v local._control_grid
call.i ds_grid_get(argc=3)
pop.v.v local._font_name
pushloc.v local._font_name
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyph_data_grid
pop.v.v local._font_glyph_data_grid
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__glyphs_map
pop.v.v local._font_glyphs_map

:[91]
push.v local._control_index
push.e 1
add.i.v
pop.v.v local._control_index
pushi.e 1
sub.i.i
dup.i 0
bt [89]

:[92]
popz.i
push.l 0
conv.l.v
pushloc.v local._i
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
pop.v.v local._found_glyph
pushloc.v local._found_glyph
push.i 65535
cmp.i.v EQ
bf [94]

:[93]
push.s "Warning! Devanagari parser extended beyond the end of the available characters"@3623
conv.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [101]

:[94]
pushloc.v local._found_glyph
pushi.e 32
cmp.i.v GTE
bf [101]

:[95]
pushloc.v local._found_glyph
pop.v.v local._glyph_write
pushloc.v local._glyph_write
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [97]

:[96]
push.s "Couldn't find glyph data for character code "@3592
pushloc.v local._found_glyph
call.i string(argc=1)
add.v.s
push.s " ("@3593
add.s.v
pushloc.v local._found_glyph
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
pop.v.i local._glyph_write
pushloc.v local._glyph_write
pushloc.v local._font_glyphs_map
call.i ds_map_find_value(argc=2)
pop.v.v local._data_index

:[97]
pushloc.v local._data_index
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [99]

:[98]
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
b [101]

:[99]
push.l 2
conv.l.v
pushloc.v local._data_index
pushloc.v local._font_glyph_data_grid
call.i ds_grid_get(argc=3)
push.l 0
cmp.l.v NEQ
bf [101]

:[100]
push.l 0
conv.l.v
pushloc.v local._i
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

:[101]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [88]

:[102]
popz.i
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
pushloc.v local._glyph_count
pushi.e 0
cmp.i.v GT
bf [104]

:[103]
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushi.e 1
sub.i.v
pushloc.v local._glyph_grid
call.i ds_grid_get(argc=3)
b [105]

:[104]
pushi.e 0
conv.i.v

:[105]
push.l 15
conv.l.v
pushloc.v local._glyph_count
pushloc.v local._glyph_grid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local._glyph_count
pushi.e 1
add.i.v
push.v static._generator_state
pushi.e -9
pop.v.v [stacktop]self.__glyph_count
exit.i

:[106]
push.i [function]gml_Script___scribble_gen_3_devanagari
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_3_devanagari
popz.v
b [116]

> gml_Script___scribble_debug_krutidev (locals=3, argc=1)
:[107]
push.s ""@61
pop.v.s local._string
pushi.e 0
pop.v.i local._i

:[108]
pushi.e 1
bf [114]

:[109]
push.l 0
conv.l.v
pushloc.v local._i
push.v arg.argument0
call.i ds_grid_get(argc=3)
pop.v.v local._unicode
pushloc.v local._unicode
push.i 65535
cmp.i.v GTE
bf [111]

:[110]
push.v local._unicode
push.i 65535
sub.i.v
pop.v.v local._unicode

:[111]
pushloc.v local._unicode
pushi.e 0
cmp.i.v LTE
bf [113]

:[112]
b [114]

:[113]
push.v local._string
pushloc.v local._unicode
call.i chr(argc=1)
add.v.v
pop.v.v local._string
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [108]

:[114]
pushloc.v local._string
ret.v

:[115]
exit.i

:[116]
push.i [function]gml_Script___scribble_debug_krutidev
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_debug_krutidev
popz.v

:[end]