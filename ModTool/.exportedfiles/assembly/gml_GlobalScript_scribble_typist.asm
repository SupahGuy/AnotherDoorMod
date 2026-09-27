:[0]
b [5]

> gml_Script_scribble_typist (locals=0, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument0

:[3]
push.v arg.argument0
push.i [function]gml_Script___scribble_class_typist
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scribble_typist
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_typist
popz.v

:[end]