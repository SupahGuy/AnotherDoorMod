:[0]
b [12]

> gml_Script_scribble_anim_wheel (locals=0, argc=3)
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
push.l 11
conv.l.i
push.v [array]self._array
cmp.v.v NEQ
bt [6]

:[4]
push.v arg.argument1
pushi.e -16
push.l 12
conv.l.i
push.v [array]self._array
cmp.v.v NEQ
bt [6]

:[5]
push.v arg.argument2
pushi.e -16
push.l 13
conv.l.i
push.v [array]self._array
cmp.v.v NEQ
b [7]

:[6]
push.e 1

:[7]
bf [11]

:[8]
push.v arg.argument0
pushi.e -16
push.l 11
conv.l.i
pop.v.v [array]self._array
push.v arg.argument1
pushi.e -16
push.l 12
conv.l.i
pop.v.v [array]self._array
push.v arg.argument2
pushi.e -16
push.l 13
conv.l.i
pop.v.v [array]self._array
push.v static._scribble_state
pushi.e -9
pushenv [10]

:[9]
push.v builtin.__shader_anim_disabled
conv.v.b
not.b
pop.v.b builtin.__shader_anim_desync
pushi.e 0
pop.v.b builtin.__shader_anim_desync_to_default

:[10]
popenv [9]

:[11]
exit.i

:[12]
push.i [function]gml_Script_scribble_anim_wheel
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_anim_wheel
popz.v

:[end]