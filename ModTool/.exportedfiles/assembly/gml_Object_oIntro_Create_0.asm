; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushref.i 44
pushi.e -9
pushenv [2]

:[1]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.switch_light
callv.v 1
popz.v

:[2]
popenv [1]
push.l 0
pop.v.l builtin.dialogueAlignY
push.l 2
pop.v.l builtin.dialogueAlignX
push.l 2
pop.v.l builtin.dialogueSound
push.l 1
pop.v.l builtin.dialogueClose
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v builtin.timerBios
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v builtin.timerTvNoise
b [4]

> gml_Script_anon@515@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[3]
pushglb.v global.tvState
pushi.e 2
conv.i.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.welcome
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
exit.i

:[4]
push.i [function]gml_Script_anon@515@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.welcome_another_door
b [6]

> gml_Script_anon@627@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[5]
pushglb.v global.tvState
pushi.e 6
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.laughing
callv.v 1
popz.v
exit.i

:[6]
push.i [function]gml_Script_anon@627@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.narrator_laughing_alone
b [8]

> gml_Script_anon@699@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[7]
pushglb.v global.tvState
pushi.e 6
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.laughing
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.noise
callv.v 2
popz.v
exit.i

:[8]
push.i [function]gml_Script_anon@699@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.narrator_laughing
b [10]

> gml_Script_anon@802@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[9]
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.noise
callv.v 2
popz.v
exit.i

:[10]
push.i [function]gml_Script_anon@802@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.narrator_suspicious
b [14]

> gml_Script_anon@918@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[11]
pushref.i 33554432
pop.v.v global.nextMusic
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.fade_in
callv.v 0
popz.v
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [13]

:[12]
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

:[13]
exit.i

:[14]
push.i [function]gml_Script_anon@918@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._introductionMusicCallback
b [18]

> gml_Script_anon@1566@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[15]
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [17]

:[16]
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

:[17]
exit.i

:[18]
push.i [function]gml_Script_anon@1566@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin._stopParticles
b [22]

> gml_Script_anon@2149@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[19]
call.i @@This@@(argc=0)
push.v builtin._stopParticles
callv.v 0
popz.v
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e 4
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

:[21]
exit.i

:[22]
push.i [function]gml_Script_anon@2149@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin._launchParticles1
b [26]

> gml_Script_anon@2386@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[23]
call.i @@This@@(argc=0)
push.v builtin._stopParticles
callv.v 0
popz.v
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [25]

:[24]
pushi.e 4
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

:[25]
exit.i

:[26]
push.i [function]gml_Script_anon@2386@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin._launchParticles2
b [30]

> gml_Script_anon@2627@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[27]
call.i @@This@@(argc=0)
push.v builtin._stopParticles
callv.v 0
popz.v
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [29]

:[28]
pushi.e 4
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

:[29]
exit.i

:[30]
push.i [function]gml_Script_anon@2627@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin._launchParticles3
b [34]

> gml_Script_anon@2866@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[31]
call.i @@This@@(argc=0)
push.v builtin._stopParticles
callv.v 0
popz.v
pushglb.v global.particlesSys
call.i part_system_exists(argc=1)
conv.v.b
bf [33]

:[32]
pushi.e 4
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

:[33]
exit.i

:[34]
push.i [function]gml_Script_anon@2866@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin._launchParticles4
pushglb.v global.isTutorialDone
conv.v.b
bf [36]

:[35]
push.v builtin.narrator_suspicious
push.v builtin._stopParticles
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushloc.v local._introductionMusicCallback
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_7"@9929
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.firstDialogueList
b [37]

:[36]
push.v builtin.narrator_suspicious
push.v builtin._stopParticles
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_7"@9929
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_6"@9931
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_5"@9932
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.welcome_another_door
pushloc.v local._introductionMusicCallback
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_4"@9933
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.narrator_laughing
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_3"@9934
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_2"@9935
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.narrator_laughing_alone
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_1"@9936
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
call.i @@NewGMLArray@@(argc=7)
pop.v.v builtin.firstDialogueList

:[37]
push.v builtin.firstDialogueList
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
b [39]

> gml_Script_anon@4300@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[38]
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.p1
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin._launchParticles1
callv.v 0
popz.v
exit.i

:[39]
push.i [function]gml_Script_anon@4300@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.callbackP1
b [41]

> gml_Script_anon@4419@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[40]
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.p2
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin._launchParticles2
callv.v 0
popz.v
exit.i

:[41]
push.i [function]gml_Script_anon@4419@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.callbackP2
b [43]

> gml_Script_anon@4538@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[42]
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.p3
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin._launchParticles3
callv.v 0
popz.v
exit.i

:[43]
push.i [function]gml_Script_anon@4538@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.callbackP3
b [45]

> gml_Script_anon@4657@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[44]
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.p4
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin._launchParticles4
callv.v 0
popz.v
exit.i

:[45]
push.i [function]gml_Script_anon@4657@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.callbackP4
b [47]

> gml_Script_anon@4776@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[46]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.reward
callv.v 0
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
exit.i

:[47]
push.i [function]gml_Script_anon@4776@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.tricycleTv
b [49]

> gml_Script_anon@4873@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[48]
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.noise
callv.v 2
popz.v
exit.i

:[49]
push.i [function]gml_Script_anon@4873@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.narrator_top
b [51]

> gml_Script_anon@4967@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[50]
pushglb.v global.tvState
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.noise
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.monsters_announcement
callv.v 1
popz.v
exit.i

:[51]
push.i [function]gml_Script_anon@4967@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.monsters
b [53]

> gml_Script_anon@5110@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[52]
pushglb.v global.doorExit
pushi.e 50
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.openDoor
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.noise
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.monsters_announcement
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=3)
dup.v 1 8
dup.v 0
push.v stacktop.rule_exit
callv.v 1
popz.v
exit.i

:[53]
push.i [function]gml_Script_anon@5110@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.exit_door
b [55]

> gml_Script_anon@5326@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[54]
pushglb.v global.doorExit
dup.v 0 8
dup.v 0
push.v stacktop.closeDoor
callv.v 0
popz.v
pushglb.v global.doorContinue
pushi.e 50
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.openDoor
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.noise
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.monsters_announcement
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=3)
dup.v 1 8
dup.v 0
push.v stacktop.rule_continue
callv.v 1
popz.v
exit.i

:[55]
push.i [function]gml_Script_anon@5326@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.continue_door
b [57]

> gml_Script_anon@5578@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[56]
pushglb.v global.doorContinue
dup.v 0 8
dup.v 0
push.v stacktop.closeDoor
callv.v 0
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.noise
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.suspicious
callv.v 1
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.monsters_announcement
callv.v 1
popz.v
exit.i

:[57]
push.i [function]gml_Script_anon@5578@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.both_door
b [59]

> gml_Script_anon@5754@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[58]
pushglb.v global.tvState
pushi.e 6
conv.i.v
pushbltn.v builtin.undefined
dup.v 2 8
dup.v 0
push.v stacktop.rule_gem
callv.v 2
popz.v
pushglb.v global.tvState
pushi.e 6
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.laughing
callv.v 1
popz.v
exit.i

:[59]
push.i [function]gml_Script_anon@5754@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.rule_gem
push.v builtin.both_door
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_23"@9957
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_22"@9958
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.continue_door
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_21"@9959
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_20"@9960
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.exit_door
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_19"@9961
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.monsters
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_current_door_length
callv.v 0
push.s "narrator._introduction_18#{0}"@9962
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_17"@9963
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.narrator_top
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_16"@9964
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_15"@9965
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.tricycleTv
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_14"@9966
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=8)
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_13"@9967
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.callbackP1
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
push.s "narrator._introduction_8"@9968
conv.s.v
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
call.i @@NewGMLArray@@(argc=12)
pop.v.v builtin.secondDialogueList
b [72]

> gml_Script_anon@7303@gml_Object_oIntro_Create_0 (locals=4, argc=0)
:[60]
pushi.e 1
pop.v.i local._startingIndex
pushi.e 0
pop.v.i local._i

:[61]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [71]

:[62]
pushloc.v local._i
pushglb.v global.playersCount
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [64]

:[63]
push.v builtin._stopParticles
push.v builtin.rule_gem
call.i @@NewGMLArray@@(argc=2)
pop.v.v local._callback
b [70]

:[64]
pushloc.v local._i
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.v builtin.callbackP2
pop.v.v local._callback
b [70]

:[66]
pushloc.v local._i
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v builtin.callbackP3
pop.v.v local._callback
b [70]

:[68]
pushloc.v local._i
pushi.e 2
cmp.i.v EQ
bf [70]

:[69]
push.v builtin.callbackP4
pop.v.v local._callback

:[70]
push.s "[/c]"@9971
conv.s.v
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
pushloc.v local._i
push.s "[p{0}]"@9972
conv.s.v
call.i @@string@@(argc=2)
call.i string_concat(argc=3)
pop.v.v local._name
pushloc.v local._callback
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v builtin.dialogueClose
push.v builtin.dialogueSound
push.v builtin.dialogueAlignY
push.v builtin.dialogueAlignX
pushloc.v local._name
pushi.e 9
pushloc.v local._i
add.v.i
push.s "narrator._introduction_{0}#{1}"@9973
conv.s.v
call.i @@string@@(argc=3)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushloc.v local._startingIndex
pushloc.v local._i
add.v.v
push.v builtin.secondDialogueList
call.i array_insert(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [61]

:[71]
push.v builtin.secondDialogueList
call.i gml_Script_set_list_of_tooltip(argc=1)
popz.v
pushi.e -6
pushi.e 0
push.v [array]self.secondDialogueList
pushref.i 14
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 32
sub.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=5)
popz.v
exit.i

:[72]
push.i [function]gml_Script_anon@7303@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_dialogue_character
pushglb.v global.depthManager
push.s "intro"@5007
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v global.emStamp
pushref.i 16777369
call.i sprite_get_width(argc=1)
pop.v.v builtin.stampsW
pushref.i 16777369
call.i sprite_get_height(argc=1)
pop.v.v builtin.stampsH
b [77]

> gml_Script_anon@8410@gml_Object_oIntro_Create_0 (locals=0, argc=4)
:[73]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [75]

:[74]
pushglb.v global.networkingManager
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
dup.v 4 8
dup.v 0
push.v stacktop.send_stamp
callv.v 4
popz.v
b [76]

:[75]
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.add_stamp
callv.v 4
popz.v

:[76]
exit.i

:[77]
push.i [function]gml_Script_anon@8410@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_stamp
b [116]

> gml_Script_anon@8653@gml_Object_oIntro_Create_0 (locals=7, argc=4)
:[78]
pushglb.v global.playersManager
push.v arg.argument2
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
pop.v.v local._action
pushloc.v local._action
push.l 3
cmp.l.v EQ
bf [80]

:[79]
push.v arg.argument3
pushi.e 0
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bt [103]

:[82]
pushloc.v local._action
push.l 4
cmp.l.v EQ
bf [84]

:[83]
push.v arg.argument3
pushi.e 1
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bt [103]

:[86]
pushloc.v local._action
push.l 5
cmp.l.v EQ
bf [88]

:[87]
push.v arg.argument3
pushi.e 2
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bt [103]

:[90]
pushloc.v local._action
push.l 6
cmp.l.v EQ
bf [92]

:[91]
push.v arg.argument3
pushi.e 3
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bt [103]

:[94]
pushloc.v local._action
push.l 7
cmp.l.v EQ
bf [96]

:[95]
push.v arg.argument3
pushi.e 4
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bt [103]

:[98]
pushloc.v local._action
push.l 8
cmp.l.v EQ
bf [100]

:[99]
push.v arg.argument3
pushi.e 5
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bt [103]

:[102]
pushloc.v local._action
push.l 0
cmp.l.v EQ
b [104]

:[103]
push.e 1

:[104]
bf [115]

:[105]
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554505
call.i audio_play_sound(argc=6)
popz.v
push.v builtin.depth
pushi.e 10
sub.i.v
pop.v.v local._theDepth
pushi.e 0
pop.v.i local._s

:[106]
pushloc.v local._s
pushref.i 57
call.i instance_number(argc=1)
cmp.v.v LT
bf [110]

:[107]
pushloc.v local._s
pushref.i 57
call.i instance_find(argc=2)
pop.v.v local._id
pushloc.v local._id
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument2
cmp.v.v EQ
bf [109]

:[108]
push.v local._theDepth
push.e 1
sub.i.v
pop.v.v local._theDepth

:[109]
push.v local._s
push.e 1
add.i.v
pop.v.v local._s
b [106]

:[110]
push.v arg.argument2
push.v arg.argument2
pushi.e 1
add.i.v
push.s "sprStampAnimated{0}"@9984
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
b [112]

> gml_Script____struct___374@anon@8653@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[111]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.sprite_index
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.number
exit.i

:[112]
push.i [function]gml_Script____struct___374@anon@8653@gml_Object_oIntro_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___374
call.i @@NewGMLObject@@(argc=3)
pushref.i 57
pushloc.v local._theDepth
push.v arg.argument1
call.i round(argc=1)
push.v arg.argument0
call.i instance_create_depth(argc=5)
popz.v
push.v arg.argument0
push.v builtin.stampsW
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
div.v.v
add.v.v
pop.v.v arg.argument0
push.v arg.argument1
push.v builtin.stampsH
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.zoom
div.v.v
add.v.v
pop.v.v arg.argument1
pushi.e 0
pop.v.i local._i

:[113]
pushloc.v local._i
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
cmp.v.v LT
bf [115]

:[114]
push.s "edge-2-circle"@6043
conv.s.v
pushbltn.v builtin.undefined
push.v builtin.stampsH
push.v builtin.stampsW
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_get_coordinates_around_point(argc=6)
pop.v.v local._coord
pushloc.v local._coord
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._coord
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument1
push.v arg.argument0
call.i point_direction(argc=4)
pop.v.v local._dir
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._dir
pushloc.v local._dir
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partStamp
call.i part_type_direction(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
push.s "sprStampDropAnimated"@9989
push.v arg.argument2
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
call.i asset_get_index(argc=1)
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partStamp
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushloc.v local._coord
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._coord
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._coord
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._coord
pushi.e -9
push.v [stacktop]self.x
pushglb.v global.emStamp
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
pushi.e 1
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.partStamp
pushglb.v global.emStamp
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [113]

:[115]
exit.i

:[116]
push.i [function]gml_Script_anon@8653@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_stamp
b [137]

> gml_Script_anon@10372@gml_Object_oIntro_Create_0 (locals=11, argc=0)
:[117]
pushi.e 0
pop.v.i local._p

:[118]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [136]

:[119]
pushi.e 0
pop.v.i local._charToAttribute
pushglb.v global.playersManager
pushloc.v local._p
dup.v 1 8
dup.v 0
push.v stacktop.get_action
callv.v 1
dup.v 0
push.l 3
cmp.l.v EQ
bt [127]

:[120]
dup.v 0
push.l 4
cmp.l.v EQ
bt [128]

:[121]
dup.v 0
push.l 5
cmp.l.v EQ
bt [129]

:[122]
dup.v 0
push.l 6
cmp.l.v EQ
bt [130]

:[123]
dup.v 0
push.l 7
cmp.l.v EQ
bt [131]

:[124]
dup.v 0
push.l 8
cmp.l.v EQ
bt [132]

:[125]
b [127]

:[126]
b [133]

:[127]
pushi.e 0
pop.v.i local._charToAttribute
b [133]

:[128]
pushi.e 1
pop.v.i local._charToAttribute
b [133]

:[129]
pushi.e 2
pop.v.i local._charToAttribute
b [133]

:[130]
pushi.e 3
pop.v.i local._charToAttribute
b [133]

:[131]
pushi.e 4
pop.v.i local._charToAttribute
b [133]

:[132]
pushi.e 5
pop.v.i local._charToAttribute
b [133]

:[133]
popz.v
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._charToAttribute
conv.v.i
push.v [array]self.mercenaries
pop.v.v local._classList
pushloc.v local._p
pushloc.v local._classList
pushi.e -9
pop.v.v [stacktop]self.number
push.s "sprProfileCharacter"@9994
conv.s.v
call.i asset_get_index(argc=1)
pop.v.v local._sprProfile
pushloc.v local._sprProfile
call.i sprite_get_width(argc=1)
pop.v.v local._sprProfileBgW
pushloc.v local._sprProfile
call.i sprite_get_height(argc=1)
pop.v.v local._sprProfileBgH
pushloc.v local._p
pushloc.v local._sprProfileBgW
mul.v.v
pop.v.v local._x
pushglb.v global.playersCount
pushloc.v local._sprProfileBgW
mul.v.v
pop.v.v local._totalSize
push.v local._x
pushglb.v global.gameWidth
pushloc.v local._totalSize
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v local._x
pushglb.v global.gameHeight
pushloc.v local._sprProfileBgH
sub.v.v
pushi.e 4
sub.i.v
pop.v.v local._y
pushloc.v local._classList
pushref.i 19
pushglb.v global.depthManager
push.s "fighters"@5005
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._y
pushloc.v local._x
call.i instance_create_depth(argc=5)
pop.v.v local._character
pushglb.v global.playersManager
pushloc.v local._character
pushloc.v local._p
dup.v 2 8
dup.v 0
push.v stacktop.set_character
callv.v 2
popz.v
push.l 14
conv.l.v
pushloc.v local._p
b [135]

> gml_Script____struct___375@anon@10372@gml_Object_oIntro_Create_0 (locals=0, argc=0)
:[134]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.theType
exit.i

:[135]
push.i [function]gml_Script____struct___375@anon@10372@gml_Object_oIntro_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___375
call.i @@NewGMLObject@@(argc=3)
pushref.i 60
pushglb.v global.depthManager
push.s "token"@4998
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._character
pushi.e -9
push.v [stacktop]self.yUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.tokenInUi
pushi.e -9
push.v [stacktop]self.y
add.v.v
pushloc.v local._character
pushi.e -9
push.v [stacktop]self.xUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.tokenInUi
pushi.e -9
push.v [stacktop]self.x
add.v.v
call.i instance_create_depth(argc=5)
pop.v.v local._token
pushloc.v local._token
pushloc.v local._character
pushi.e -9
pop.v.v [stacktop]self.token
pushloc.v local._character
pushi.e -9
push.v [stacktop]self.token
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
pushglb.v global.playersManager
pushloc.v local._classList
pushi.e -9
push.v [stacktop]self.className
pushloc.v local._p
dup.v 2 8
dup.v 0
push.v stacktop.set_name
callv.v 2
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [118]

:[136]
exit.i

:[137]
push.i [function]gml_Script_anon@10372@gml_Object_oIntro_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.generate_characters
push.s "ease-in-out"@8753
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.bookTimer
pushi.e 0
pop.v.b builtin.bookFinishedTimerActive
push.s "ease-in-out"@8753
conv.s.v
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.bookFinishedTimer
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushref.i 16777270
call.i sprite_get_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v builtin.bookOffsetYMax
push.v builtin.bookOffsetYMax
pushbltn.v builtin.current_time
pushi.e 750
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v builtin.bookOffsetY
pushi.e 190
conv.i.v
pushi.e 234
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 190
conv.i.v
pushi.e 164
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 110
conv.i.v
pushi.e 408
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 110
conv.i.v
pushi.e 338
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 110
conv.i.v
pushi.e 234
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 110
conv.i.v
pushi.e 164
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=6)
pop.v.v builtin.bookPositionList
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.stampToDraw
pushbltn.v builtin.undefined
pop.v.v builtin.state
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
push.l 1
pop.v.l builtin.stateNext

:[end]