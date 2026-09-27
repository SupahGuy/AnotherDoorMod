:[0]
b [22]

> gml_Script_scribble_kerning_pair_set (locals=6, argc=5)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument4

:[3]
push.v arg.argument1
call.i is_real(argc=1)
conv.v.b
bf [5]

:[4]
push.v arg.argument1
b [6]

:[5]
push.v arg.argument1
call.i ord(argc=1)

:[6]
pop.v.v local._first_unicode
push.v arg.argument2
call.i is_real(argc=1)
conv.v.b
bf [8]

:[7]
push.v arg.argument2
b [9]

:[8]
push.v arg.argument2
call.i ord(argc=1)

:[9]
pop.v.v local._second_unicode
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.s "Cannot use null character (U+0000) for the first character"@7936
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[11]
push.v arg.argument1
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.s "Cannot use negative value for first character"@7937
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[13]
push.v arg.argument2
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.s "Cannot use negative value for second character"@7938
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v

:[15]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
pushloc.v local._font_data
pushi.e -9
push.v [stacktop]self.__kerning_map
pop.v.v local._kerning_map
pushloc.v local._second_unicode
conv.v.l
push.i 65535
and.i.l
pushi.e 16
conv.i.l
shl.l.l
pushloc.v local._first_unicode
conv.v.l
push.i 65535
and.i.l
or.l.l
pop.v.l local._lookup
push.v arg.argument4
conv.v.b
bf [19]

:[16]
pushloc.v local._lookup
pushloc.v local._kerning_map
call.i ds_map_find_value(argc=2)
chknullish.e
bf [18]

:[17]
popz.v
pushi.e 0
conv.i.v

:[18]
push.v arg.argument3
add.v.v
b [20]

:[19]
push.v arg.argument3

:[20]
pop.v.v local._new_value
pushloc.v local._new_value
pushloc.v local._lookup
pushloc.v local._kerning_map
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._new_value
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_scribble_kerning_pair_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_kerning_pair_set
popz.v

:[end]