:[0]
b [12]

> gml_Script_scribble_color_set (locals=0, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colourDict

:[3]
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[4]
push.v arg.argument0
push.v static._colourDict
call.i variable_struct_exists(argc=2)
conv.v.b
bf [6]

:[5]
push.v arg.argument0
push.v static._colourDict
call.i variable_struct_remove(argc=2)
popz.v
call.i gml_Script_scribble_refresh_everything(argc=0)
popz.v

:[6]
b [11]

:[7]
push.v arg.argument1
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "Colour values should be 24-bit BGR values"@7768
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
b [11]

:[9]
push.v arg.argument0
push.v static._colourDict
call.i variable_struct_get(argc=2)
push.v arg.argument1
cmp.v.v NEQ
bf [11]

:[10]
push.v arg.argument1
push.v arg.argument0
push.v static._colourDict
call.i variable_struct_set(argc=3)
popz.v
call.i gml_Script_scribble_refresh_everything(argc=0)
popz.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_scribble_color_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_color_set
popz.v

:[end]