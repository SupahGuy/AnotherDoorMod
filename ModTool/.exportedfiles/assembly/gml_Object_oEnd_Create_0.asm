; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 0
pop.v.b builtin.isTalkFinished
b [2]

> gml_Script_anon@43@gml_Object_oEnd_Create_0 (locals=0, argc=0)
:[1]
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v global.gameCount
push.e 1
add.i.v
pop.v.v global.gameCount
pushglb.v global.gameCount
push.s "counter"@7284
conv.s.v
push.s "gameplay"@7285
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
pushi.e 1
pop.v.b builtin.isTalkFinished
exit.i

:[2]
push.i [function]gml_Script_anon@43@gml_Object_oEnd_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.talk_finished
b [6]

> gml_Script_anon@253@gml_Object_oEnd_Create_0 (locals=0, argc=0)
:[3]
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 0
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiBlue
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiBlue
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiRed
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiRed
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiYellow
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiYellow
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiGreen
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiGreen
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_anon@253@gml_Object_oEnd_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin._stopParticles
push.l 0
pop.v.l local._alignY
push.l 2
pop.v.l local._alignX
push.l 2
pop.v.l local._sound
push.v builtin.talk_finished
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd14"@9269
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.tvState
pushi.e -9
push.v [stacktop]self.neutral
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
pushglb.v global.gameCount
push.s "narrator._gameEnd13#{0}"@9270
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd12"@9271
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd11"@9272
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd10"@9273
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd9"@9274
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd8"@9275
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd7"@9276
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd6"@9277
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd5"@9278
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushglb.v global.audio
pushi.e -9
push.v [stacktop]self.fade_out
push.v builtin._stopParticles
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushglb.v global.tvState
pushi.e -9
push.v [stacktop]self.evil
pushglb.v global.tvState
pushi.e -9
push.v [stacktop]self.off
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd4"@9279
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.tvState
pushi.e -9
push.v [stacktop]self.reward
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
push.s "narrator._gameEnd3"@9280
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 0
push.v [array]self.winner
pushi.e -9
push.v [stacktop]self.scoreOrder
push.s "narrator._gameEnd2#{0}"@9283
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushloc.v local._sound
pushloc.v local._alignY
pushloc.v local._alignX
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 0
push.v [array]self.winner
pushi.e -9
push.v [stacktop]self.name
push.s "narrator._gameEnd1#{0}"@9284
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=5)
call.i @@NewGMLArray@@(argc=14)
pop.v.v local._newTooltipList
pushloc.v local._newTooltipList
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._newTooltipList
pushref.i 14
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 32
sub.i.v
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v
pushref.i 63
pushi.e -9
pushenv [8]

:[7]
call.i @@Global@@(argc=0)
pushi.e -9
pushi.e 0
push.v [array]self.winner
pushi.e -9
push.v [stacktop]self.screenState
pop.v.v builtin.screenStateNext

:[8]
popenv [7]
pushref.i 33554432
pop.v.v global.nextMusic
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.reset_effect
callv.v 0
popz.v
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.switch_music
callv.v 0
popz.v
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [end]

:[9]
pushi.e -2
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiBlue
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiBlue
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
pushi.e -2
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiRed
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiRed
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
pushi.e -2
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiYellow
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiYellow
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v
pushi.e -2
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptConfettiGreen
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partEmitConfettiGreen
pushglb.v global.particlesSys
call.i part_emitter_stream(argc=4)
popz.v

:[end]