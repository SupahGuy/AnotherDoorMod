:[0]
b [10]

> gml_Script_scribble_font_bake_outline_and_shadow (locals=2, argc=8)
:[1]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument7

:[3]
pushi.e 0
pop.v.i local._outlineSize
pushref.i 134217734
pop.v.v local._shader
push.v arg.argument4
push.l 1
cmp.l.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i local._outlineSize
pushref.i 134217731
pop.v.v local._shader
b [9]

:[5]
push.v arg.argument4
push.l 2
cmp.l.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i local._outlineSize
pushref.i 134217733
pop.v.v local._shader
b [9]

:[7]
push.v arg.argument4
push.l 3
cmp.l.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i local._outlineSize
pushref.i 134217732
pop.v.v local._shader

:[9]
pushloc.v local._shader
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
call.i shader_reset(argc=0)
popz.v
pushi.e 1
conv.b.v
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
pushloc.v local._outlineSize
push.v arg.argument3
pushi.e 0
conv.i.v
call.i max(argc=2)
add.v.v
pushloc.v local._outlineSize
push.v arg.argument2
pushi.e 0
conv.i.v
call.i max(argc=2)
add.v.v
pushloc.v local._outlineSize
push.v arg.argument3
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
add.v.v
pushloc.v local._outlineSize
push.v arg.argument2
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
add.v.v
pushi.e 2
conv.i.v
pushloc.v local._shader
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scribble_font_bake_shader(argc=12)
popz.v
exit.i

:[10]
push.i [function]gml_Script_scribble_font_bake_outline_and_shadow
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_bake_outline_and_shadow
popz.v

:[end]