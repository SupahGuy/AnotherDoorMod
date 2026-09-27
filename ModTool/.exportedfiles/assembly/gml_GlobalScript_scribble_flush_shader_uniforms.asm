:[0]
b [6]

> gml_Script_scribble_flush_shader_uniforms (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state

:[3]
push.v static._scribble_state
pushi.e -9
pushenv [5]

:[4]
pushi.e 1
pop.v.b builtin.__shader_anim_desync
pushi.e 1
pop.v.b builtin.__shader_anim_desync_to_default

:[5]
popenv [4]
exit.i

:[6]
push.i [function]gml_Script_scribble_flush_shader_uniforms
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_flush_shader_uniforms
popz.v

:[end]