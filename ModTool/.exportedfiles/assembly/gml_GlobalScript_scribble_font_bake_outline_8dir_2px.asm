:[0]
b [10]

> gml_Script_scribble_font_bake_outline_8dir_2px (locals=1, argc=5)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v static._colors_struct

:[5]
push.v arg.argument2
call.i is_string(argc=1)
conv.v.b
bf [9]

:[6]
push.v arg.argument2
push.v static._colors_struct
call.i variable_struct_get(argc=2)
pop.v.v local._found
push.v arg.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [8]

:[7]
push.s "\" not recognised"@2111
conv.s.v
push.v arg.argument2
push.s "Colour \""@4036
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[8]
pushloc.v local._found
conv.v.l
push.i 16777215
and.i.l
pop.v.l arg.argument2

:[9]
pushref.i 134217736
call.i shader_set(argc=1)
popz.v
push.v arg.argument2
call.i color_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v arg.argument2
call.i color_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v arg.argument2
call.i color_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.s "u_vOutlineColor"@7818
conv.s.v
call.i shader_current(argc=0)
call.i shader_get_uniform(argc=2)
call.i shader_set_uniform_f(argc=4)
popz.v
call.i shader_reset(argc=0)
popz.v
push.v arg.argument4
push.v arg.argument3
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushref.i 134217736
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scribble_font_bake_shader(argc=11)
popz.v
exit.i

:[10]
push.i [function]gml_Script_scribble_font_bake_outline_8dir_2px
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_bake_outline_8dir_2px
popz.v

:[end]