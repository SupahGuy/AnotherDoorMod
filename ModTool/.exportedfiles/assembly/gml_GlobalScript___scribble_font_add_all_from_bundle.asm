:[0]
b [13]

> gml_Script___scribble_font_add_all_from_bundle (locals=7, argc=0)
:[1]
pushi.e 6
conv.i.v
call.i asset_get_ids(argc=1)
pop.v.v local._fontArray
pushi.e 0
pop.v.i local._i
pushloc.v local._fontArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [12]

:[2]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fontArray
pop.v.v local._font
pushloc.v local._font
call.i font_exists(argc=1)
conv.v.b
bf [11]

:[3]
pushi.e 0
pop.v.b local._skip
pushi.e 6
conv.i.v
pushloc.v local._font
call.i asset_get_tags(argc=2)
pop.v.v local._tagArray
pushi.e 0
pop.v.i local._j
pushloc.v local._tagArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[4]
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._tagArray
call.i string_lower(argc=1)
push.s "scribble skip"@3137
cmp.s.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.b local._skip
b [7]

:[6]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[7]
popz.i
pushloc.v local._font
call.i font_get_name(argc=1)
pop.v.v local._name
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._name
call.i string_copy(argc=3)
push.s "__newfont"@3139
cmp.s.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.b local._skip

:[9]
pushloc.v local._skip
conv.v.b
not.b
bf [11]

:[10]
pushloc.v local._font
call.i gml_Script___scribble_font_add_from_bundle(argc=1)
popz.v

:[11]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[12]
popz.i
exit.i

:[13]
push.i [function]gml_Script___scribble_font_add_all_from_bundle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_font_add_all_from_bundle
popz.v

:[end]