:[0]
b [6]

> gml_Script_scribble_font_bake_shadow (locals=2, argc=8)
:[1]
push.v arg.argument4
call.i is_string(argc=1)
conv.v.b
bf [5]

:[2]
call.i gml_Script___scribble_config_colours(argc=0)
pop.v.v local._colors_struct
push.v arg.argument4
pushloc.v local._colors_struct
call.i variable_struct_get(argc=2)
pop.v.v local._found
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [4]

:[3]
push.s "\" not recognised"@2111
conv.s.v
push.v arg.argument4
push.s "Colour \""@4036
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[4]
pushloc.v local._found
conv.v.l
push.i 16777215
and.i.l
pop.v.l arg.argument4

:[5]
pushref.i 134217738
call.i shader_set(argc=1)
popz.v
push.v arg.argument3
push.v arg.argument2
push.s "u_vShadowDelta"@7829
conv.s.v
call.i shader_current(argc=0)
call.i shader_get_uniform(argc=2)
call.i shader_set_uniform_f(argc=3)
popz.v
push.v arg.argument5
push.v arg.argument4
call.i color_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v arg.argument4
call.i color_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.v arg.argument4
call.i color_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.s "u_vShadowColor"@7878
conv.s.v
call.i shader_current(argc=0)
call.i shader_get_uniform(argc=2)
call.i shader_set_uniform_f(argc=5)
popz.v
call.i shader_reset(argc=0)
popz.v
push.v arg.argument7
push.v arg.argument6
push.v arg.argument3
pushi.e 0
conv.i.v
call.i max(argc=2)
push.v arg.argument2
pushi.e 0
conv.i.v
call.i max(argc=2)
push.v arg.argument3
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
push.v arg.argument2
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e 2
conv.i.v
pushref.i 134217738
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scribble_font_bake_shader(argc=10)
popz.v
exit.i

:[6]
push.i [function]gml_Script_scribble_font_bake_shadow
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_bake_shadow
popz.v

:[end]