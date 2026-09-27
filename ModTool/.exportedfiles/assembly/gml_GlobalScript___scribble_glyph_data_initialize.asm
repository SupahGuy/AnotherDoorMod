:[0]
b [28]

> gml_Script___scribble_glyph_data_initialize (locals=11, argc=0)
:[1]
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
call.i ds_map_create(argc=0)
b [3]

> gml_Script____struct___53@__scribble_glyph_data_initialize@__scribble_glyph_data_initialize (locals=0, argc=0)
:[2]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.__bidi_map
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.__mirror_map
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.__arabic_isolated_map
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.__arabic_initial_map
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.__arabic_medial_map
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.__arabic_final_map
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.__arabic_join_prev_map
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.__arabic_join_next_map
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.__thai_base_map
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.__thai_base_descender_map
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v self.__thai_base_ascender_map
pushi.e -15
pushi.e 11
push.v [array]self.argument
pop.v.v self.__thai_top_map
pushi.e -15
pushi.e 12
push.v [array]self.argument
pop.v.v self.__thai_lower_map
pushi.e -15
pushi.e 13
push.v [array]self.argument
pop.v.v self.__thai_upper_map
exit.i

:[3]
push.i [function]gml_Script____struct___53@__scribble_glyph_data_initialize@__scribble_glyph_data_initialize
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___53
call.i @@NewGMLObject@@(argc=15)
pop.v.v local._data_struct
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__bidi_map
pop.v.v local._map
push.l 1
conv.l.v
pushi.e -1
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e -2
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
pop.v.i local._i

:[4]
pushloc.v local._i
pushi.e 9
cmp.i.v LTE
bf [6]

:[5]
push.l 1
conv.l.v
pushloc.v local._i
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [4]

:[6]
push.l 2
conv.l.v
pushi.e 10
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 11
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 12
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 13
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 32
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 33
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 34
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 38
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 39
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 40
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 41
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 42
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 59
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 60
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 61
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 62
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 63
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 64
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 91
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 92
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 93
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 94
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 95
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 96
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 123
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 124
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 125
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 126
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 44
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 46
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 47
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 58
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 45
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 4
conv.l.v
pushi.e 8206
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 6
conv.l.v
pushi.e 8207
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8294
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8295
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8296
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8297
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8234
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8235
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8236
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8237
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 0
conv.l.v
pushi.e 8238
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 160
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 1
conv.l.v
pushi.e 1548
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 6
conv.l.v
pushi.e 1643
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.l 6
conv.l.v
pushi.e 1644
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1424
pop.v.i local._i

:[7]
pushloc.v local._i
pushi.e 1535
cmp.i.v LTE
bf [9]

:[8]
push.l 6
conv.l.v
pushloc.v local._i
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [7]

:[9]
pushi.e 1536
pop.v.i local._i

:[10]
pushloc.v local._i
pushi.e 1791
cmp.i.v LTE
bf [12]

:[11]
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [10]

:[12]
pushi.e 2304
pop.v.i local._i

:[13]
pushloc.v local._i
pushi.e 2431
cmp.i.v LTE
bf [15]

:[14]
push.l 5
conv.l.v
pushloc.v local._i
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [13]

:[15]
push.i 64336
pop.v.i local._i

:[16]
pushloc.v local._i
push.i 65023
cmp.i.v LTE
bf [18]

:[17]
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [16]

:[18]
push.i 65136
pop.v.i local._i

:[19]
pushloc.v local._i
push.i 65279
cmp.i.v LTE
bf [21]

:[20]
push.l 7
conv.l.v
pushloc.v local._i
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [19]

:[21]
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__mirror_map
pop.v.v local._map
pushi.e 41
conv.i.v
pushi.e 40
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 41
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 62
conv.i.v
pushi.e 60
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 60
conv.i.v
pushi.e 62
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 93
conv.i.v
pushi.e 91
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 91
conv.i.v
pushi.e 93
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 125
conv.i.v
pushi.e 123
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 123
conv.i.v
pushi.e 125
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_isolated_map
pop.v.v local._map_i
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_initial_map
pop.v.v local._map_a
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_medial_map
pop.v.v local._map_b
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_final_map
pop.v.v local._map_c
push.i 65152
conv.i.v
pushi.e 1569
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65152
conv.i.v
pushi.e 1569
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65152
conv.i.v
pushi.e 1569
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65152
conv.i.v
pushi.e 1569
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65153
conv.i.v
pushi.e 1570
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65154
conv.i.v
pushi.e 1570
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65154
conv.i.v
pushi.e 1570
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65153
conv.i.v
pushi.e 1570
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65155
conv.i.v
pushi.e 1571
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65156
conv.i.v
pushi.e 1571
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65156
conv.i.v
pushi.e 1571
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65155
conv.i.v
pushi.e 1571
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65157
conv.i.v
pushi.e 1572
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65158
conv.i.v
pushi.e 1572
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65158
conv.i.v
pushi.e 1572
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65157
conv.i.v
pushi.e 1572
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65159
conv.i.v
pushi.e 1573
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65160
conv.i.v
pushi.e 1573
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65160
conv.i.v
pushi.e 1573
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65159
conv.i.v
pushi.e 1573
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65161
conv.i.v
pushi.e 1574
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65162
conv.i.v
pushi.e 1574
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65164
conv.i.v
pushi.e 1574
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65163
conv.i.v
pushi.e 1574
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65165
conv.i.v
pushi.e 1575
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65166
conv.i.v
pushi.e 1575
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65166
conv.i.v
pushi.e 1575
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65165
conv.i.v
pushi.e 1575
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65167
conv.i.v
pushi.e 1576
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65168
conv.i.v
pushi.e 1576
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65170
conv.i.v
pushi.e 1576
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65169
conv.i.v
pushi.e 1576
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65171
conv.i.v
pushi.e 1577
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65172
conv.i.v
pushi.e 1577
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65172
conv.i.v
pushi.e 1577
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65171
conv.i.v
pushi.e 1577
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65173
conv.i.v
pushi.e 1578
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65174
conv.i.v
pushi.e 1578
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65176
conv.i.v
pushi.e 1578
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65175
conv.i.v
pushi.e 1578
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65177
conv.i.v
pushi.e 1579
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65178
conv.i.v
pushi.e 1579
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65180
conv.i.v
pushi.e 1579
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65179
conv.i.v
pushi.e 1579
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65181
conv.i.v
pushi.e 1580
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65182
conv.i.v
pushi.e 1580
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65184
conv.i.v
pushi.e 1580
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65183
conv.i.v
pushi.e 1580
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65185
conv.i.v
pushi.e 1581
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65186
conv.i.v
pushi.e 1581
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65188
conv.i.v
pushi.e 1581
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65187
conv.i.v
pushi.e 1581
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65189
conv.i.v
pushi.e 1582
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65190
conv.i.v
pushi.e 1582
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65192
conv.i.v
pushi.e 1582
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65191
conv.i.v
pushi.e 1582
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65193
conv.i.v
pushi.e 1583
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65194
conv.i.v
pushi.e 1583
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65194
conv.i.v
pushi.e 1583
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65193
conv.i.v
pushi.e 1583
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65195
conv.i.v
pushi.e 1584
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65196
conv.i.v
pushi.e 1584
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65196
conv.i.v
pushi.e 1584
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65195
conv.i.v
pushi.e 1584
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65197
conv.i.v
pushi.e 1585
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65198
conv.i.v
pushi.e 1585
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65198
conv.i.v
pushi.e 1585
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65197
conv.i.v
pushi.e 1585
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65199
conv.i.v
pushi.e 1586
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65200
conv.i.v
pushi.e 1586
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65200
conv.i.v
pushi.e 1586
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65199
conv.i.v
pushi.e 1586
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65201
conv.i.v
pushi.e 1587
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65202
conv.i.v
pushi.e 1587
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65204
conv.i.v
pushi.e 1587
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65203
conv.i.v
pushi.e 1587
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65205
conv.i.v
pushi.e 1588
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65206
conv.i.v
pushi.e 1588
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65208
conv.i.v
pushi.e 1588
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65207
conv.i.v
pushi.e 1588
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65209
conv.i.v
pushi.e 1589
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65210
conv.i.v
pushi.e 1589
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65212
conv.i.v
pushi.e 1589
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65211
conv.i.v
pushi.e 1589
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65213
conv.i.v
pushi.e 1590
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65214
conv.i.v
pushi.e 1590
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65216
conv.i.v
pushi.e 1590
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65215
conv.i.v
pushi.e 1590
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65217
conv.i.v
pushi.e 1591
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65218
conv.i.v
pushi.e 1591
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65220
conv.i.v
pushi.e 1591
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65219
conv.i.v
pushi.e 1591
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65221
conv.i.v
pushi.e 1592
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65222
conv.i.v
pushi.e 1592
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65224
conv.i.v
pushi.e 1592
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65223
conv.i.v
pushi.e 1592
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65225
conv.i.v
pushi.e 1593
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65226
conv.i.v
pushi.e 1593
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65228
conv.i.v
pushi.e 1593
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65227
conv.i.v
pushi.e 1593
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65229
conv.i.v
pushi.e 1594
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65230
conv.i.v
pushi.e 1594
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65232
conv.i.v
pushi.e 1594
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65231
conv.i.v
pushi.e 1594
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
pushi.e 1600
conv.i.v
pushi.e 1600
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
pushi.e 1600
conv.i.v
pushi.e 1600
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
pushi.e 1600
conv.i.v
pushi.e 1600
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
pushi.e 1600
conv.i.v
pushi.e 1600
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65233
conv.i.v
pushi.e 1601
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65234
conv.i.v
pushi.e 1601
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65236
conv.i.v
pushi.e 1601
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65235
conv.i.v
pushi.e 1601
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65237
conv.i.v
pushi.e 1602
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65238
conv.i.v
pushi.e 1602
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65240
conv.i.v
pushi.e 1602
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65239
conv.i.v
pushi.e 1602
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65241
conv.i.v
pushi.e 1603
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65242
conv.i.v
pushi.e 1603
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65244
conv.i.v
pushi.e 1603
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65243
conv.i.v
pushi.e 1603
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65245
conv.i.v
pushi.e 1604
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65246
conv.i.v
pushi.e 1604
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65248
conv.i.v
pushi.e 1604
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65247
conv.i.v
pushi.e 1604
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65249
conv.i.v
pushi.e 1605
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65250
conv.i.v
pushi.e 1605
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65252
conv.i.v
pushi.e 1605
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65251
conv.i.v
pushi.e 1605
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65253
conv.i.v
pushi.e 1606
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65254
conv.i.v
pushi.e 1606
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65256
conv.i.v
pushi.e 1606
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65255
conv.i.v
pushi.e 1606
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65257
conv.i.v
pushi.e 1607
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65258
conv.i.v
pushi.e 1607
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65260
conv.i.v
pushi.e 1607
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65259
conv.i.v
pushi.e 1607
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65261
conv.i.v
pushi.e 1608
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65262
conv.i.v
pushi.e 1608
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65262
conv.i.v
pushi.e 1608
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65261
conv.i.v
pushi.e 1608
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65263
conv.i.v
pushi.e 1609
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65264
conv.i.v
pushi.e 1609
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65264
conv.i.v
pushi.e 1609
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65263
conv.i.v
pushi.e 1609
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65265
conv.i.v
pushi.e 1610
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65266
conv.i.v
pushi.e 1610
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65268
conv.i.v
pushi.e 1610
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65267
conv.i.v
pushi.e 1610
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65269
conv.i.v
push.i 65269
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65270
conv.i.v
push.i 65269
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65270
conv.i.v
push.i 65269
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65269
conv.i.v
push.i 65269
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65269
conv.i.v
push.i 65270
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65270
conv.i.v
push.i 65270
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65270
conv.i.v
push.i 65270
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65269
conv.i.v
push.i 65270
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65271
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65272
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65272
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65271
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65271
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65272
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65272
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65271
conv.i.v
push.i 65271
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65273
conv.i.v
push.i 65273
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65274
conv.i.v
push.i 65273
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65274
conv.i.v
push.i 65273
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65273
conv.i.v
push.i 65273
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65273
conv.i.v
push.i 65274
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65274
conv.i.v
push.i 65274
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65274
conv.i.v
push.i 65274
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65273
conv.i.v
push.i 65274
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65275
conv.i.v
push.i 65275
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65276
conv.i.v
push.i 65275
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65276
conv.i.v
push.i 65275
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65275
conv.i.v
push.i 65275
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
push.i 65275
conv.i.v
push.i 65276
conv.i.v
pushloc.v local._map_i
call.i ds_map_set(argc=3)
popz.v
push.i 65276
conv.i.v
push.i 65276
conv.i.v
pushloc.v local._map_c
call.i ds_map_set(argc=3)
popz.v
push.i 65276
conv.i.v
push.i 65276
conv.i.v
pushloc.v local._map_b
call.i ds_map_set(argc=3)
popz.v
push.i 65275
conv.i.v
push.i 65276
conv.i.v
pushloc.v local._map_a
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_join_prev_map
pop.v.v local._map_prev
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_join_next_map
pop.v.v local._map_next
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_isolated_map
pop.v.v local._map_i
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_initial_map
pop.v.v local._map_a
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_medial_map
pop.v.v local._map_b
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__arabic_final_map
pop.v.v local._map_c
pushloc.v local._map_i
call.i ds_map_keys_to_array(argc=1)
pop.v.v local._arabic_array
pushi.e 0
pop.v.i local._i
pushloc.v local._arabic_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[22]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._arabic_array
pop.v.v local._glyph
pushloc.v local._glyph
pushloc.v local._map_a
call.i ds_map_find_value(argc=2)
pushloc.v local._glyph
pushloc.v local._map_b
call.i ds_map_find_value(argc=2)
cmp.v.v NEQ
conv.b.v
pushloc.v local._glyph
pushloc.v local._map_prev
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._glyph
pushloc.v local._map_a
call.i ds_map_find_value(argc=2)
pushloc.v local._glyph
pushloc.v local._map_i
call.i ds_map_find_value(argc=2)
cmp.v.v NEQ
conv.b.v
pushloc.v local._glyph
pushloc.v local._map_next
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [22]

:[23]
popz.i
pushi.e 1
conv.b.v
pushi.e 1600
conv.i.v
pushloc.v local._map_prev
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 1600
conv.i.v
pushloc.v local._map_next
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__thai_base_map
pop.v.v local._map
pushi.e 3585
pop.v.i local._i

:[24]
pushloc.v local._i
pushi.e 3631
cmp.i.v LTE
bf [26]

:[25]
pushi.e 1
conv.b.v
pushloc.v local._i
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [24]

:[26]
pushi.e 1
conv.b.v
pushi.e 3632
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3648
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3649
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__thai_base_descender_map
pop.v.v local._map
pushi.e 1
conv.b.v
pushi.e 3598
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3599
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__thai_base_ascender_map
pop.v.v local._map
pushi.e 1
conv.b.v
pushi.e 3611
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3613
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3615
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3628
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__thai_top_map
pop.v.v local._map
pushi.e 1
conv.b.v
pushi.e 3656
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3657
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3658
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3659
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3660
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__thai_lower_map
pop.v.v local._map
pushi.e 1
conv.b.v
pushi.e 3640
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3641
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3642
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
pushi.e -9
push.v [stacktop]self.__thai_upper_map
pop.v.v local._map
pushi.e 1
conv.b.v
pushi.e 3633
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3636
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3637
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3638
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3639
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3655
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.b.v
pushi.e 3661
conv.i.v
pushloc.v local._map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._data_struct
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script___scribble_glyph_data_initialize
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_glyph_data_initialize
popz.v

:[end]