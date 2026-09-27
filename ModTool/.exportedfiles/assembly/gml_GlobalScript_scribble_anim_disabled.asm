:[0]
b [7]

> gml_Script_scribble_anim_disabled (locals=0, argc=1)
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
pushenv [6]

:[4]
push.v builtin.__shader_anim_disabled
push.v arg.argument0
cmp.v.v NEQ
bf [6]

:[5]
push.v arg.argument0
pop.v.v builtin.__shader_anim_disabled
pushi.e 1
pop.v.b builtin.__shader_anim_desync

:[6]
popenv [4]
exit.i

:[7]
push.i [function]gml_Script_scribble_anim_disabled
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_anim_disabled
popz.v

:[end]