:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.b builtin.isBreak
b [2]

> gml_Script_anon@56@gml_Object_oGlass_Create_0 (locals=0, argc=0)
:[1]
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushglb.v global.shake
push.l 2
conv.l.v
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.id
dup.v 2 8
dup.v 0
push.v stacktop.add_element
callv.v 2
popz.v
pushi.e 1
pop.v.b builtin.isBreak
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
pushref.i 33554479
call.i audio_play_sound(argc=6)
popz.v
exit.i

:[2]
push.i [function]gml_Script_anon@56@gml_Object_oGlass_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.break_glass

:[end]