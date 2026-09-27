:[0]
b [5]

> gml_Script_scribble_color_get (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colourDict

:[3]
push.v arg.argument0
push.v static._colourDict
call.i variable_struct_get(argc=2)
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scribble_color_get
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_color_get
popz.v

:[end]