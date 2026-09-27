:[0]
b [11]

> gml_Script_scribble_anim_shake (locals=0, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__anim_properties
pop.v.v static._array
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state

:[3]
push.v arg.argument0
pushi.e -16
push.l 3
conv.l.i
push.v [array]self._array
cmp.v.v NEQ
bt [5]

:[4]
push.v arg.argument1
pushi.e -16
push.l 4
conv.l.i
push.v [array]self._array
cmp.v.v NEQ
b [6]

:[5]
push.e 1

:[6]
bf [10]

:[7]
push.v arg.argument0
pushi.e -16
push.l 3
conv.l.i
pop.v.v [array]self._array
push.v arg.argument1
pushi.e -16
push.l 4
conv.l.i
pop.v.v [array]self._array
push.v static._scribble_state
pushi.e -9
pushenv [9]

:[8]
push.v builtin.__shader_anim_disabled
conv.v.b
not.b
pop.v.b builtin.__shader_anim_desync
pushi.e 0
pop.v.b builtin.__shader_anim_desync_to_default

:[9]
popenv [8]

:[10]
exit.i

:[11]
push.i [function]gml_Script_scribble_anim_shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_anim_shake
popz.v

:[end]