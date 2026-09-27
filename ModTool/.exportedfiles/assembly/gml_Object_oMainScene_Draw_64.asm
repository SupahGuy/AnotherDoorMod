; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.isLightOn
conv.v.b
not.b
bf [2]

:[1]
pushref.i 134217752
call.i shader_set(argc=1)
popz.v
push.s "palette_texture"@9699
conv.s.v
pushref.i 134217752
call.i shader_get_sampler_index(argc=2)
pop.v.v local._1
pushi.e 0
conv.i.v
pushref.i 16777740
call.i sprite_get_texture(argc=2)
pop.v.v local._tex
pushloc.v local._tex
pushloc.v local._1
call.i texture_set_stage(argc=2)
popz.v
push.s "texel_size"@9703
conv.s.v
pushref.i 134217752
call.i shader_get_uniform(argc=2)
pop.v.v local._2
pushloc.v local._tex
call.i texture_get_texel_height(argc=1)
pushloc.v local._tex
call.i texture_get_texel_width(argc=1)
pushloc.v local._2
call.i shader_set_uniform_f(argc=3)
popz.v
push.s "palette_UVs"@9705
conv.s.v
pushref.i 134217752
call.i shader_get_uniform(argc=2)
pop.v.v local._3
pushi.e 0
conv.i.v
pushref.i 16777740
call.i sprite_get_uvs(argc=2)
pop.v.v local._uv
pushi.e -7
pushi.e 3
push.v [array]self._uv
pushi.e -7
pushi.e 2
push.v [array]self._uv
pushi.e -7
pushi.e 1
push.v [array]self._uv
pushi.e -7
pushi.e 0
push.v [array]self._uv
pushloc.v local._3
call.i shader_set_uniform_f(argc=5)
popz.v
push.s "palette_index"@9708
conv.s.v
pushref.i 134217752
call.i shader_get_uniform(argc=2)
pop.v.v local._4
pushi.e 1
conv.i.v
pushloc.v local._4
call.i shader_set_uniform_f(argc=2)
popz.v

:[2]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.spriteMainScene
call.i draw_sprite_ext(argc=9)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
pushglb.v global.isLightOn
conv.v.b
not.b
bf [end]

:[3]
call.i shader_reset(argc=0)
popz.v

:[end]