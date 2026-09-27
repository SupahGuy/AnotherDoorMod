:[0]
b [5]

> gml_Script_scribble_font_set_remap (locals=0, argc=2)
:[1]
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pushi.e -9
pushenv [4]

:[2]
push.v builtin.__remap
push.v arg.argument1
cmp.v.v NEQ
bf [4]

:[3]
push.v arg.argument1
pop.v.v builtin.__remap
call.i gml_Script___scribble_flush_nodels(argc=0)
popz.v

:[4]
popenv [2]
exit.i

:[5]
push.i [function]gml_Script_scribble_font_set_remap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_set_remap
popz.v

:[end]