:[0]
b [22]

> gml_Script_scribble (locals=1, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
push.v [stacktop]self.__ecache_dict
pop.v.v static._ecache_dict

:[5]
push.v arg.argument0
call.i is_struct(argc=1)
conv.v.b
bf [7]

:[6]
push.v arg.argument0
call.i instanceof(argc=1)
push.s "__scribble_class_element"@2569
cmp.s.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "scribble() should not be used to access/draw text elements\nPlease instead call the .draw() method on a text element e.g. scribble(\"text\").draw(x, y);"@8112
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[10]
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [12]

:[11]
push.s "default:"@2455
conv.s.v
b [13]

:[12]
push.v arg.argument1
call.i string(argc=1)
push.s ":"@2456
add.s.v

:[13]
push.v arg.argument0
call.i string(argc=1)
add.v.v
push.v static._ecache_dict
call.i variable_struct_get(argc=2)
pop.v.v local._weak
pushloc.v local._weak
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [16]

:[14]
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
bt [16]

:[15]
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
pushi.e -9
push.v [stacktop]self.__flushed
conv.v.b
b [17]

:[16]
push.e 1

:[17]
bf [20]

:[18]
push.v arg.argument1
push.v arg.argument0
call.i string(argc=1)
push.i [function]gml_Script___scribble_class_element
conv.i.v
call.i @@NewGMLObject@@(argc=3)
ret.v

:[19]
b [21]

:[20]
pushloc.v local._weak
pushi.e -9
push.v [stacktop]self.ref
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_scribble
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble
popz.v

:[end]