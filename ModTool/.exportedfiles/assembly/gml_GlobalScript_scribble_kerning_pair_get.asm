:[0]
b [11]

> gml_Script_scribble_kerning_pair_get (locals=4, argc=3)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pop.v.v local._font_data
push.v arg.argument1
call.i is_real(argc=1)
conv.v.b
bf [3]

:[2]
push.v arg.argument1
b [4]

:[3]
push.v arg.argument1
call.i ord(argc=1)

:[4]
pop.v.v local._first_unicode
push.v arg.argument2
call.i is_real(argc=1)
conv.v.b
bf [6]

:[5]
push.v arg.argument2
b [7]

:[6]
push.v arg.argument2
call.i ord(argc=1)

:[7]
pop.v.v local._second_unicode
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
conv.l.v
pushloc.v local._kerning_map
call.i ds_map_find_value(argc=2)
chknullish.e
bf [9]

:[8]
popz.v
pushi.e 0
conv.i.v

:[9]
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scribble_kerning_pair_get
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_kerning_pair_get
popz.v

:[end]