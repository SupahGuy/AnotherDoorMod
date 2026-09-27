:[0]
b [2]

> gml_Script___scribble_class_line (locals=0, argc=5)
:[1]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.y
push.v arg.argument1
pop.v.v builtin.height
push.v arg.argument2
pop.v.v builtin.forced_break
push.v arg.argument3
pop.v.v builtin.glyph_start
push.v arg.argument4
pop.v.v builtin.glyph_end
pushi.e 1
push.v arg.argument4
add.v.i
push.v arg.argument3
sub.v.v
pop.v.v builtin.glyph_count
exit.i

:[2]
push.i [function]gml_Script___scribble_class_line
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_class_line
popz.v

:[end]