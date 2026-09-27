:[0]
b [9]

> gml_Script_scribble_anim_reset (locals=0, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__anim_properties
pop.v.v static._array

:[3]
push.v static._scribble_state
pushi.e -9
pushenv [8]

:[4]
push.v builtin.__shader_anim_default
conv.v.b
not.b
bf [6]

:[5]
pushi.e 4
conv.i.v
pushi.e -16
push.l 0
conv.l.i
pop.v.v [array]self._array
pushi.e 50
conv.i.v
pushi.e -16
push.l 1
conv.l.i
pop.v.v [array]self._array
push.d 0.2
conv.d.v
pushi.e -16
push.l 2
conv.l.i
pop.v.v [array]self._array
pushi.e 2
conv.i.v
pushi.e -16
push.l 3
conv.l.i
pop.v.v [array]self._array
push.d 0.4
conv.d.v
pushi.e -16
push.l 4
conv.l.i
pop.v.v [array]self._array
push.d 0.5
conv.d.v
pushi.e -16
push.l 5
conv.l.i
pop.v.v [array]self._array
push.d 0.01
conv.d.v
pushi.e -16
push.l 6
conv.l.i
pop.v.v [array]self._array
pushi.e 40
conv.i.v
pushi.e -16
push.l 7
conv.l.i
pop.v.v [array]self._array
push.d 0.15
conv.d.v
pushi.e -16
push.l 8
conv.l.i
pop.v.v [array]self._array
push.d 0.4
conv.d.v
pushi.e -16
push.l 9
conv.l.i
pop.v.v [array]self._array
push.d 0.1
conv.d.v
pushi.e -16
push.l 10
conv.l.i
pop.v.v [array]self._array
pushi.e 1
conv.i.v
pushi.e -16
push.l 11
conv.l.i
pop.v.v [array]self._array
push.d 0.5
conv.d.v
pushi.e -16
push.l 12
conv.l.i
pop.v.v [array]self._array
push.d 0.2
conv.d.v
pushi.e -16
push.l 13
conv.l.i
pop.v.v [array]self._array
push.d 0.5
conv.d.v
pushi.e -16
push.l 14
conv.l.i
pop.v.v [array]self._array
pushi.e 180
conv.i.v
pushi.e -16
push.l 15
conv.l.i
pop.v.v [array]self._array
pushi.e 255
conv.i.v
pushi.e -16
push.l 16
conv.l.i
pop.v.v [array]self._array
push.d 0.7
conv.d.v
pushi.e -16
push.l 17
conv.l.i
pop.v.v [array]self._array
push.d 1.2
conv.d.v
pushi.e -16
push.l 18
conv.l.i
pop.v.v [array]self._array
push.d 0.4
conv.d.v
pushi.e -16
push.l 19
conv.l.i
pop.v.v [array]self._array
push.d 0.25
conv.d.v
pushi.e -16
push.l 20
conv.l.i
pop.v.v [array]self._array
pushi.e 50
pop.v.i builtin.__blink_on_duration
pushi.e 50
pop.v.i builtin.__blink_off_duration
pushi.e 0
pop.v.i builtin.__blink_time_offset

:[6]
push.v builtin.__shader_anim_desync
conv.v.b
not.b
bf [8]

:[7]
push.v builtin.__shader_anim_disabled
conv.v.b
not.b
pop.v.b builtin.__shader_anim_desync
pushi.e 1
pop.v.b builtin.__shader_anim_desync_to_default

:[8]
popenv [4]
exit.i

:[9]
push.i [function]gml_Script_scribble_anim_reset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_anim_reset
popz.v

:[end]