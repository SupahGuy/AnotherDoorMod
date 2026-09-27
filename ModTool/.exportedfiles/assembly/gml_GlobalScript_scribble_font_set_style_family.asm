:[0]
b [22]

> gml_Script_scribble_font_set_style_family (locals=3, argc=4)
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
pushbltn.v builtin.undefined
pushi.e 4
conv.i.v
call.i array_create(argc=2)
pop.v.v local._font_names
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
bf [5]

:[4]
push.v arg.argument0
b [6]

:[5]
pushbltn.v builtin.undefined

:[6]
pushi.e -7
pushi.e 0
pop.v.v [array]self._font_names
push.v arg.argument1
call.i is_string(argc=1)
conv.v.b
bf [8]

:[7]
push.v arg.argument1
b [9]

:[8]
pushbltn.v builtin.undefined

:[9]
pushi.e -7
pushi.e 1
pop.v.v [array]self._font_names
push.v arg.argument2
call.i is_string(argc=1)
conv.v.b
bf [11]

:[10]
push.v arg.argument2
b [12]

:[11]
pushbltn.v builtin.undefined

:[12]
pushi.e -7
pushi.e 2
pop.v.v [array]self._font_names
push.v arg.argument3
call.i is_string(argc=1)
conv.v.b
bf [14]

:[13]
push.v arg.argument3
b [15]

:[14]
pushbltn.v builtin.undefined

:[15]
pushi.e -7
pushi.e 3
pop.v.v [array]self._font_names
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [21]

:[16]
pushloc.v local._i
pushloc.v local._font_names
call.i @@array_get@@(argc=2)
push.v static._font_data_map
call.i ds_map_find_value(argc=2)
pop.v.v local._struct
pushloc.v local._struct
call.i is_struct(argc=1)
conv.v.b
bf [20]

:[17]
pushloc.v local._struct
pushi.e -9
pushenv [19]

:[18]
pushi.e -7
pushi.e 0
push.v [array]self._font_names
pop.v.v builtin.__style_regular
pushi.e -7
pushi.e 1
push.v [array]self._font_names
pop.v.v builtin.__style_bold
pushi.e -7
pushi.e 2
push.v [array]self._font_names
pop.v.v builtin.__style_italic
pushi.e -7
pushi.e 3
push.v [array]self._font_names
pop.v.v builtin.__style_bold_italic

:[19]
popenv [18]

:[20]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [16]

:[21]
popz.i
exit.i

:[22]
push.i [function]gml_Script_scribble_font_set_style_family
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_set_style_family
popz.v

:[end]