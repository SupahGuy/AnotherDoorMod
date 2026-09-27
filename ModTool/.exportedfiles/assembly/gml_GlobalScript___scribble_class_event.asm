:[0]
b [2]

> gml_Script___scribble_class_event (locals=0, argc=2)
:[1]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.name
push.v arg.argument1
pop.v.v builtin.data
pushbltn.v builtin.undefined
pop.v.v builtin.position
pushbltn.v builtin.undefined
pop.v.v builtin.character_index
pushbltn.v builtin.undefined
pop.v.v builtin.line_index
exit.i

:[2]
push.i [function]gml_Script___scribble_class_event
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_event
popz.v

:[end]