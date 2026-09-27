:[0]
b [2]

> gml_Script_scribble_super_create (locals=1, argc=1)
:[1]
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
push.v arg.argument0
push.i [function]gml_Script___scribble_class_font
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._font_data
pushi.e 1
pushloc.v local._font_data
pushi.e -9
pop.v.b [stacktop]self.__runtime
pushi.e 1
pushloc.v local._font_data
pushi.e -9
pop.v.b [stacktop]self.__superfont
exit.i

:[2]
push.i [function]gml_Script_scribble_super_create
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_super_create
popz.v

:[end]