; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 0
pop.v.i builtin.scrollTo
pushi.e 0
pop.v.i builtin.scroll
pushglb.v global.depthManager
push.s "settings"@4990
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
pushi.e 0
pop.v.b builtin.isVisible
b [5]

> gml_Script_anon@123@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[1]
push.v builtin.isVisible
conv.v.b
not.b
pop.v.b builtin.isVisible
push.v builtin.isVisible
conv.v.b
bf [3]

:[2]
pushi.e 1
conv.b.v
call.i gml_Script_pause_settings(argc=1)
popz.v
call.i @@This@@(argc=0)
push.v builtin.activate_instance
callv.v 0
popz.v
b [4]

:[3]
call.i @@This@@(argc=0)
push.v builtin.switch_off
callv.v 0
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_anon@123@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.switch_state
b [7]

> gml_Script_anon@355@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[6]
pushi.e 0
pop.v.b builtin.isVisible
pushi.e 0
conv.b.v
call.i gml_Script_pause_settings(argc=1)
popz.v
call.i @@This@@(argc=0)
push.v builtin.deactivate_instance
callv.v 0
popz.v
exit.i

:[7]
push.i [function]gml_Script_anon@355@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.switch_off
b [12]

> gml_Script_anon@475@gml_Object_oSettings_Create_0 (locals=1, argc=0)
:[8]
pushi.e 0
pop.v.i local.i

:[9]
pushloc.v local.i
push.v builtin.settings
call.i array_length(argc=1)
cmp.v.v LT
bf [11]

:[10]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.settings
call.i instance_activate_object(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.settings
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_paused
callv.v 1
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[11]
pushi.e 1
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
exit.i

:[12]
push.i [function]gml_Script_anon@475@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.activate_instance
b [17]

> gml_Script_anon@671@gml_Object_oSettings_Create_0 (locals=1, argc=0)
:[13]
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
push.v builtin.settings
call.i array_length(argc=1)
cmp.v.v LT
bf [16]

:[15]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.settings
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_paused
callv.v 1
popz.v
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.settings
call.i gml_Script_instance_deactivate_object_hook(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[16]
exit.i

:[17]
push.i [function]gml_Script_anon@671@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.deactivate_instance
b [19]

> gml_Script____struct___486@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[18]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[19]
push.i [function]gml_Script____struct___486@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___486
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnFullscreenNo
pushglb.v global.fullScreen
conv.v.b
not.b
bf [21]

:[20]
push.v builtin.btnFullscreenNo
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[21]
b [23]

> gml_Script____struct___487@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[22]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[23]
push.i [function]gml_Script____struct___487@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___487
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnFullscreenYes
pushglb.v global.fullScreen
conv.v.b
bf [25]

:[24]
push.v builtin.btnFullscreenYes
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[25]
b [27]

> gml_Script____struct___488@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[26]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[27]
push.i [function]gml_Script____struct___488@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___488
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.videoScaleButtonUp
b [29]

> gml_Script____struct___489@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[28]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[29]
push.i [function]gml_Script____struct___489@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___489
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.videoScaleButtonDown
pushglb.v global.zoom
pushglb.v global.zoomMin
cmp.v.v EQ
bf [31]

:[30]
push.v builtin.videoScaleButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[31]
pushglb.v global.fullScreen
conv.v.b
bf [33]

:[32]
push.v builtin.videoScaleButtonUp
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.videoScaleButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[33]
b [35]

> gml_Script____struct___490@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[34]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[35]
push.i [function]gml_Script____struct___490@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___490
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnCRTNo
b [37]

> gml_Script____struct___491@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[36]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[37]
push.i [function]gml_Script____struct___491@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___491
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnCRTYes
pushglb.v global.crtEffect
conv.v.b
bf [39]

:[38]
push.v builtin.btnCRTYes
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.btnCRTNo
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [40]

:[39]
push.v builtin.btnCRTYes
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.btnCRTNo
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[40]
b [42]

> gml_Script____struct___492@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[41]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[42]
push.i [function]gml_Script____struct___492@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___492
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.langButtonLeft
b [44]

> gml_Script____struct___493@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[43]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[44]
push.i [function]gml_Script____struct___493@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___493
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.langButtonRight
b [46]

> gml_Script____struct___494@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[45]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[46]
push.i [function]gml_Script____struct___494@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___494
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.audioMusicButtonLeft
b [48]

> gml_Script____struct___495@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[47]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[48]
push.i [function]gml_Script____struct___495@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___495
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.audioMusicButtonRight
pushglb.v global.musicVolume
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.v builtin.audioMusicButtonLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [52]

:[50]
pushglb.v global.musicVolume
pushi.e 100
cmp.i.v EQ
bf [52]

:[51]
push.v builtin.audioMusicButtonRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[52]
b [69]

> gml_Script_anon@3074@gml_Object_oSettings_Create_0 (locals=0, argc=1)
:[53]
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.musicVolume
push.v arg.argument0
add.v.v
call.i clamp(argc=3)
pop.v.v global.musicVolume
call.i gml_Script_g_change_music_volume(argc=0)
popz.v
pushref.i 54
pushi.e -9
pushenv [68]

:[54]
push.s "audioMusicVolumeValue"@10975
conv.s.v
pushglb.v global.musicVolume
push.s "{0}%"@10976
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioMusicVolumeValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
pushglb.v global.musicVolume
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.v builtin.audioMusicButtonLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [68]

:[56]
pushglb.v global.musicVolume
pushi.e 0
cmp.i.v NEQ
bf [58]

:[57]
push.v builtin.audioMusicButtonLeft
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.v builtin.audioMusicButtonLeft
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [68]

:[61]
pushglb.v global.musicVolume
pushi.e 100
cmp.i.v EQ
bf [63]

:[62]
push.v builtin.audioMusicButtonRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [68]

:[63]
pushglb.v global.musicVolume
pushi.e 100
cmp.i.v NEQ
bf [65]

:[64]
push.v builtin.audioMusicButtonRight
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
push.v builtin.audioMusicButtonRight
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[68]
popenv [54]
exit.i

:[69]
push.i [function]gml_Script_anon@3074@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._musicCallback
b [71]

> gml_Script_anon@3881@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[70]
push.v builtin.args
push.v builtin.callback
call.i method_call(argc=2)
popz.v
exit.i

:[71]
push.i [function]gml_Script_anon@3881@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e -5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushloc.v local._musicCallback
b [73]

> gml_Script____struct___496@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[72]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.callback
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.args
exit.i

:[73]
push.i [function]gml_Script____struct___496@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___496
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pop.v.v local._audioMusicButtonLeft
b [75]

> gml_Script_anon@4018@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[74]
push.v builtin.args
push.v builtin.callback
call.i method_call(argc=2)
popz.v
exit.i

:[75]
push.i [function]gml_Script_anon@4018@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushloc.v local._musicCallback
b [77]

> gml_Script____struct___497@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[76]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.callback
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.args
exit.i

:[77]
push.i [function]gml_Script____struct___497@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___497
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pop.v.v local._audioMusicButtonRight
push.v builtin.audioMusicButtonLeft
pushloc.v local._audioMusicButtonLeft
dup.v 1 8
dup.v 0
push.v stacktop.set_callback_on_click
callv.v 1
popz.v
push.v builtin.audioMusicButtonRight
pushloc.v local._audioMusicButtonRight
dup.v 1 8
dup.v 0
push.v stacktop.set_callback_on_click
callv.v 1
popz.v
b [79]

> gml_Script____struct___498@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[78]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[79]
push.i [function]gml_Script____struct___498@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___498
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.audioSfxButtonLeft
b [81]

> gml_Script____struct___499@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[80]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[81]
push.i [function]gml_Script____struct___499@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___499
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.audioSfxButtonRight
pushglb.v global.sfxVolume
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
push.v builtin.audioSfxButtonLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [85]

:[83]
pushglb.v global.sfxVolume
pushi.e 100
cmp.i.v EQ
bf [85]

:[84]
push.v builtin.audioSfxButtonRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[85]
push.v builtin.audioSfxButtonLeft
pushref.i 33554466
pushref.i 33554465
pushref.i 33554464
pushref.i 33554463
call.i @@NewGMLArray@@(argc=4)
dup.v 1 8
dup.v 0
push.v stacktop.set_sound_on_click
callv.v 1
popz.v
push.v builtin.audioSfxButtonRight
pushref.i 33554466
pushref.i 33554465
pushref.i 33554464
pushref.i 33554463
call.i @@NewGMLArray@@(argc=4)
dup.v 1 8
dup.v 0
push.v stacktop.set_sound_on_click
callv.v 1
popz.v
b [102]

> gml_Script_anon@4939@gml_Object_oSettings_Create_0 (locals=0, argc=1)
:[86]
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.sfxVolume
push.v arg.argument0
add.v.v
call.i clamp(argc=3)
pop.v.v global.sfxVolume
call.i gml_Script_g_change_sfx_volume(argc=0)
popz.v
pushref.i 54
pushi.e -9
pushenv [101]

:[87]
push.s "audioSfxVolumeValue"@10993
conv.s.v
pushglb.v global.sfxVolume
push.s "{0}%"@10976
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioSfxVolumeValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
pushglb.v global.sfxVolume
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.v builtin.audioSfxButtonLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [101]

:[89]
pushglb.v global.sfxVolume
pushi.e 0
cmp.i.v NEQ
bf [91]

:[90]
push.v builtin.audioSfxButtonLeft
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
push.v builtin.audioSfxButtonLeft
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [101]

:[94]
pushglb.v global.sfxVolume
pushi.e 100
cmp.i.v EQ
bf [96]

:[95]
push.v builtin.audioSfxButtonRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [101]

:[96]
pushglb.v global.sfxVolume
pushi.e 100
cmp.i.v NEQ
bf [98]

:[97]
push.v builtin.audioSfxButtonRight
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
push.v builtin.audioSfxButtonRight
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[101]
popenv [87]
exit.i

:[102]
push.i [function]gml_Script_anon@4939@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._sfxCallback
b [104]

> gml_Script_anon@5717@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[103]
push.v builtin.args
push.v builtin.callback
call.i method_call(argc=2)
popz.v
exit.i

:[104]
push.i [function]gml_Script_anon@5717@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e -5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushloc.v local._sfxCallback
b [106]

> gml_Script____struct___500@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[105]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.callback
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.args
exit.i

:[106]
push.i [function]gml_Script____struct___500@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___500
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pop.v.v local._audioSfxButtonLeft
b [108]

> gml_Script_anon@5850@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[107]
push.v builtin.args
push.v builtin.callback
call.i method_call(argc=2)
popz.v
exit.i

:[108]
push.i [function]gml_Script_anon@5850@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 5
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushloc.v local._sfxCallback
b [110]

> gml_Script____struct___501@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[109]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.callback
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.args
exit.i

:[110]
push.i [function]gml_Script____struct___501@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___501
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pop.v.v local._audioSfxButtonRight
push.v builtin.audioSfxButtonLeft
pushloc.v local._audioSfxButtonLeft
dup.v 1 8
dup.v 0
push.v stacktop.set_callback_on_click
callv.v 1
popz.v
push.v builtin.audioSfxButtonRight
pushloc.v local._audioSfxButtonRight
dup.v 1 8
dup.v 0
push.v stacktop.set_callback_on_click
callv.v 1
popz.v
b [112]

> gml_Script____struct___502@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[111]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[112]
push.i [function]gml_Script____struct___502@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___502
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.textSizeButtonDown
push.v builtin.textSizeButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [114]

> gml_Script____struct___503@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[113]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[114]
push.i [function]gml_Script____struct___503@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___503
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.textSizeButtonUp
push.v builtin.textSizeButtonUp
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [116]

> gml_Script____struct___504@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[115]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[116]
push.i [function]gml_Script____struct___504@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___504
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.textFontButtonDown
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
push.v builtin.textFontButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[118]
b [120]

> gml_Script____struct___505@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[119]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[120]
push.i [function]gml_Script____struct___505@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___505
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.textFontButtonUp
pushglb.v global.fontStyle
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.v builtin.textFontButtonUp
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[122]
b [124]

> gml_Script____struct___506@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[123]
call.i @@SetStatic@@(argc=0)
pushref.i 16777283
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[124]
push.i [function]gml_Script____struct___506@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___506
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.gameplayTutorialLeft
b [126]

> gml_Script____struct___507@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[125]
call.i @@SetStatic@@(argc=0)
pushref.i 16777288
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.persistent
exit.i

:[126]
push.i [function]gml_Script____struct___507@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___507
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.gameplayTutorialRight
pushglb.v global.isTutorialDone
conv.v.b
bf [128]

:[127]
push.v builtin.gameplayTutorialLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [129]

:[128]
push.v builtin.gameplayTutorialRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[129]
b [131]

> gml_Script____struct___508@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[130]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._return"@10050
pop.v.s self.label
pushi.e 1
pop.v.b self.persistent
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[131]
push.i [function]gml_Script____struct___508@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___508
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnCloseMenu
b [133]

> gml_Script____struct___509@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[132]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._return"@10050
pop.v.s self.label
pushi.e 1
pop.v.b self.persistent
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[133]
push.i [function]gml_Script____struct___509@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___509
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnCloseMenuBottom
b [135]

> gml_Script____struct___510@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[134]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "menu._leaveGame"@11027
pop.v.s self.label
pushi.e 1
pop.v.b self.persistent
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[135]
push.i [function]gml_Script____struct___510@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___510
call.i @@NewGMLObject@@(argc=1)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnLeaveParty
push.v builtin.btnLeaveParty
dup.v 0 8
dup.v 0
push.v stacktop.hide
callv.v 0
popz.v
push.v builtin.gameplayTutorialRight
push.v builtin.gameplayTutorialLeft
push.v builtin.audioSfxButtonRight
push.v builtin.audioSfxButtonLeft
push.v builtin.audioMusicButtonRight
push.v builtin.audioMusicButtonLeft
push.v builtin.textFontButtonUp
push.v builtin.textFontButtonDown
push.v builtin.textSizeButtonUp
push.v builtin.textSizeButtonDown
push.v builtin.videoScaleButtonUp
push.v builtin.videoScaleButtonDown
push.v builtin.btnLeaveParty
push.v builtin.btnCloseMenuBottom
push.v builtin.btnCloseMenu
push.v builtin.langButtonRight
push.v builtin.langButtonLeft
push.v builtin.btnCRTYes
push.v builtin.btnCRTNo
push.v builtin.btnFullscreenYes
push.v builtin.btnFullscreenNo
call.i @@NewGMLArray@@(argc=21)
pop.v.v builtin.settings
call.i @@This@@(argc=0)
push.v builtin.deactivate_instance
callv.v 0
popz.v
pushi.e 64
pop.v.i builtin.padTopPanel
pushi.e 0
pop.v.i builtin.heightPanel
pushi.e 0
pop.v.i builtin.minScroll
pushi.e 156
pop.v.i builtin.initMaxScroll
b [316]

> gml_Script_anon@8692@gml_Object_oSettings_Create_0 (locals=24, argc=0)
:[136]
push.s "menu._settings"@10301
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftAlkhemikalSh"@5419
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v local._settingsText
push.s "settings._videoTitle"@11036
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.s "ftMonobitSh"@5421
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v local._videoTitle
push.s "settings._videoFullscreen"@11038
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._videoFullscreen
pushglb.v global.fullScreen
pushi.e 1
cmp.b.v EQ
bf [138]

:[137]
push.s "settings._yes"@11040
conv.s.v
b [139]

:[138]
push.s "settings._no"@11041
conv.s.v

:[139]
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._videoFullscreenValue
push.s "settings._videoScale"@11043
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._videoScale
pushglb.v global.zoom
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._videoScaleValue
push.s "settings._crtEffect"@11046
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._videoCrtEffect
pushglb.v global.crtEffect
pushi.e 1
cmp.b.v EQ
bf [141]

:[140]
push.s "settings._yes"@11040
conv.s.v
b [142]

:[141]
push.s "settings._no"@11041
conv.s.v

:[142]
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._videoCrtEffectValue
push.s "settings._textLanguage"@11049
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.s "ftMonobitSh"@5421
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v local._langTitle
push.s "settings._languageName"@5450
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._langLabel
push.s "settings._textTitle"@8878
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.s "ftMonobitSh"@5421
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v local._textTitle
push.s "settings._textSize"@11053
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._textSize
pushglb.v global.fontSize
push.s "{0}%"@10976
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._textSizeValue
push.s "settings._textFont"@11056
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._textFont
pushglb.v global.fontStyle
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [147]

:[143]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [148]

:[144]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [149]

:[145]
b [147]

:[146]
b [150]

:[147]
push.s "settings._fontStylePixel"@5444
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._textFontValue
b [150]

:[148]
push.s "settings._fontStyleHighRes"@5446
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._textFontValue
b [150]

:[149]
push.s "settings._fontStyleDyslexia"@5447
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._textFontValue
b [150]

:[150]
popz.v
push.s "settings._audioTitle"@11058
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.s "ftMonobitSh"@5421
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v local._audioTitle
push.s "settings._audioMusicVolume"@11060
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._audioMusicVolume
pushglb.v global.musicVolume
push.s "{0}%"@10976
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._audioMusicVolumeValue
push.s "settings._audioSfxVolume"@11063
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._audioSfxVolume
pushglb.v global.sfxVolume
push.s "{0}%"@10976
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._audioSfxVolumeValue
push.s "settings._gameplayTitle"@11066
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.s "ftMonobitSh"@5421
conv.s.v
dup.e 2 16
callv.v 2
pop.v.v local._gameplayTitle
push.s "settings._gameplayTutorial"@11068
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._gameplayTutorial
pushglb.v global.isTutorialDone
conv.v.b
bf [152]

:[151]
push.s "settings._no"@11041
conv.s.v
b [153]

:[152]
push.s "settings._yes"@11040
conv.s.v

:[153]
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v local._gameplayTutorialValue
push.v builtin.btnLeaveParty
push.l 3
conv.l.v
push.s "btnLeaveParty"@11030
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.btnCloseMenuBottom
push.l 3
conv.l.v
push.s "closeMenuButton"@10842
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.btnCloseMenu
push.l 3
conv.l.v
push.s "closeMenuButton"@10842
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._gameplayTutorialValue
push.l 1
conv.l.v
push.s "gameplayTutorialValue"@11071
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.gameplayTutorialRight
push.l 3
conv.l.v
push.s "gameplayTutorialRight"@11021
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.gameplayTutorialLeft
push.l 3
conv.l.v
push.s "gameplayTutorialLeft"@11018
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._gameplayTutorial
push.l 1
conv.l.v
push.s "gameplayTutorial"@11072
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._gameplayTitle
push.l 1
conv.l.v
push.s "gameplayTitle"@11073
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.audioSfxButtonRight
push.l 3
conv.l.v
push.s "audioSfxButtonRight"@10992
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.audioSfxButtonLeft
push.l 3
conv.l.v
push.s "audioSfxButtonLeft"@10989
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._audioSfxVolumeValue
push.l 1
conv.l.v
push.s "audioSfxVolumeValue"@10993
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._audioSfxVolume
push.l 1
conv.l.v
push.s "audioSfxVolume"@11074
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.audioMusicButtonRight
push.l 3
conv.l.v
push.s "audioMusicButtonRight"@10974
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.audioMusicButtonLeft
push.l 3
conv.l.v
push.s "audioMusicButtonLeft"@10971
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._audioMusicVolumeValue
push.l 1
conv.l.v
push.s "audioMusicVolumeValue"@10975
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._audioMusicVolume
push.l 1
conv.l.v
push.s "audioMusicVolume"@11075
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._audioTitle
push.l 1
conv.l.v
push.s "audioTitle"@11076
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.textFontButtonUp
push.l 3
conv.l.v
push.s "textFontButtonUp"@11015
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._textFontValue
push.l 1
conv.l.v
push.s "textFontValue"@5449
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.textFontButtonDown
push.l 3
conv.l.v
push.s "textFontButtonDown"@11012
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._textFont
push.l 1
conv.l.v
push.s "textFont"@11077
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.textSizeButtonUp
push.l 3
conv.l.v
push.s "textSizeButtonUp"@11009
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.textSizeButtonDown
push.l 3
conv.l.v
push.s "textSizeButtonDown"@11006
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._textSizeValue
push.l 1
conv.l.v
push.s "textSizeValue"@11078
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._textSize
push.l 1
conv.l.v
push.s "textSize"@11079
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._textTitle
push.l 1
conv.l.v
push.s "textTitle"@8879
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.langButtonRight
push.l 3
conv.l.v
push.s "langButtonRight"@10968
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.langButtonLeft
push.l 3
conv.l.v
push.s "langButtonLeft"@10965
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._langLabel
push.l 1
conv.l.v
push.s "langLabel"@5451
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._langTitle
push.l 1
conv.l.v
push.s "langTitle"@11080
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.btnCRTYes
push.l 3
conv.l.v
push.s "videoCrtEffectButtonYes"@11081
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.btnCRTNo
push.l 3
conv.l.v
push.s "videoCrtEffectButtonNo"@11082
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._videoCrtEffectValue
push.l 1
conv.l.v
push.s "videoCrtEffectValue"@11083
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._videoCrtEffect
push.l 1
conv.l.v
push.s "videoCrtEffect"@11084
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.videoScaleButtonUp
push.l 3
conv.l.v
push.s "videoScaleButtonUp"@10953
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.videoScaleButtonDown
push.l 3
conv.l.v
push.s "videoScaleButtonDown"@10956
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._videoScaleValue
push.l 1
conv.l.v
push.s "videoScaleValue"@11085
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushloc.v local._videoScale
push.l 1
conv.l.v
push.s "videoScale"@11086
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.btnFullscreenYes
push.l 3
conv.l.v
push.s "videoFullscreenButtonYes"@11087
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
pushloc.v local._videoFullscreenValue
push.l 1
conv.l.v
push.s "videoFullscreenValue"@11088
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=6)
push.v builtin.btnFullscreenNo
push.l 3
conv.l.v
push.s "videoFullscreenButtonNo"@11089
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._videoFullscreen
push.l 1
conv.l.v
push.s "videoFullscreen"@11090
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._videoTitle
push.l 1
conv.l.v
push.s "videoTitle"@11091
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._settingsText
push.l 1
conv.l.v
push.s "settingTitle"@11092
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
b [155]

> gml_Script____struct___511@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[154]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.settingTitle
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.videoTitle
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.videoFullscreen
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.videoFullscreenButtonNo
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.videoFullscreenValue
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.videoFullscreenButtonYes
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.videoScale
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.videoScaleValue
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.videoScaleButtonDown
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.videoScaleButtonUp
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v self.videoCrtEffect
pushi.e -15
pushi.e 11
push.v [array]self.argument
pop.v.v self.videoCrtEffectValue
pushi.e -15
pushi.e 12
push.v [array]self.argument
pop.v.v self.videoCrtEffectButtonNo
pushi.e -15
pushi.e 13
push.v [array]self.argument
pop.v.v self.videoCrtEffectButtonYes
pushi.e -15
pushi.e 14
push.v [array]self.argument
pop.v.v self.langTitle
pushi.e -15
pushi.e 15
push.v [array]self.argument
pop.v.v self.langLabel
pushi.e -15
pushi.e 16
push.v [array]self.argument
pop.v.v self.langButtonLeft
pushi.e -15
pushi.e 17
push.v [array]self.argument
pop.v.v self.langButtonRight
pushi.e -15
pushi.e 18
push.v [array]self.argument
pop.v.v self.textTitle
pushi.e -15
pushi.e 19
push.v [array]self.argument
pop.v.v self.textSize
pushi.e -15
pushi.e 20
push.v [array]self.argument
pop.v.v self.textSizeValue
pushi.e -15
pushi.e 21
push.v [array]self.argument
pop.v.v self.textSizeButtonDown
pushi.e -15
pushi.e 22
push.v [array]self.argument
pop.v.v self.textSizeButtonUp
pushi.e -15
pushi.e 23
push.v [array]self.argument
pop.v.v self.textFont
pushi.e -15
pushi.e 24
push.v [array]self.argument
pop.v.v self.textFontButtonDown
pushi.e -15
pushi.e 25
push.v [array]self.argument
pop.v.v self.textFontValue
pushi.e -15
pushi.e 26
push.v [array]self.argument
pop.v.v self.textFontButtonUp
pushi.e -15
pushi.e 27
push.v [array]self.argument
pop.v.v self.audioTitle
pushi.e -15
pushi.e 28
push.v [array]self.argument
pop.v.v self.audioMusicVolume
pushi.e -15
pushi.e 29
push.v [array]self.argument
pop.v.v self.audioMusicVolumeValue
pushi.e -15
pushi.e 30
push.v [array]self.argument
pop.v.v self.audioMusicButtonLeft
pushi.e -15
pushi.e 31
push.v [array]self.argument
pop.v.v self.audioMusicButtonRight
pushi.e -15
pushi.e 32
push.v [array]self.argument
pop.v.v self.audioSfxVolume
pushi.e -15
pushi.e 33
push.v [array]self.argument
pop.v.v self.audioSfxVolumeValue
pushi.e -15
pushi.e 34
push.v [array]self.argument
pop.v.v self.audioSfxButtonLeft
pushi.e -15
pushi.e 35
push.v [array]self.argument
pop.v.v self.audioSfxButtonRight
pushi.e -15
pushi.e 36
push.v [array]self.argument
pop.v.v self.gameplayTitle
pushi.e -15
pushi.e 37
push.v [array]self.argument
pop.v.v self.gameplayTutorial
pushi.e -15
pushi.e 38
push.v [array]self.argument
pop.v.v self.gameplayTutorialLeft
pushi.e -15
pushi.e 39
push.v [array]self.argument
pop.v.v self.gameplayTutorialRight
pushi.e -15
pushi.e 40
push.v [array]self.argument
pop.v.v self.gameplayTutorialValue
pushi.e -15
pushi.e 41
push.v [array]self.argument
pop.v.v self.closeMenuButton
pushi.e -15
pushi.e 42
push.v [array]self.argument
pop.v.v self.closeMenuButtonBottom
pushi.e -15
pushi.e 43
push.v [array]self.argument
pop.v.v self.btnLeaveParty
exit.i

:[155]
push.i [function]gml_Script____struct___511@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___511
call.i @@NewGMLObject@@(argc=45)
pop.v.v builtin.structElements
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.closeMenuButtonBottom
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.btnLeaveParty
call.i @@NewGMLArray@@(argc=2)
b [159]

> gml_Script____struct___590@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[156]
call.i @@SetStatic@@(argc=0)
pushi.e 32
pop.v.i self.paddingTop
pushi.e 280
pop.v.i self.width
push.s "flex-end"@10133
pop.v.s self.justifyContent
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 8
pop.v.i self.gap
b [158]

> gml_Script____struct___591@___struct___590@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[157]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[158]
push.i [function]gml_Script____struct___591@___struct___590@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___591
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[159]
push.i [function]gml_Script____struct___590@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___590
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.gameplayTutorialRight
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.gameplayTutorialLeft
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.gameplayTutorialValue
call.i @@NewGMLArray@@(argc=1)
b [163]

> gml_Script____struct___588@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[160]
call.i @@SetStatic@@(argc=0)
b [162]

> gml_Script____struct___589@___struct___588@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[161]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[162]
push.i [function]gml_Script____struct___589@___struct___588@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___589
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[163]
push.i [function]gml_Script____struct___588@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___588
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [167]

> gml_Script____struct___586@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[164]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [166]

> gml_Script____struct___587@___struct___586@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[165]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[166]
push.i [function]gml_Script____struct___587@___struct___586@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___587
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[167]
push.i [function]gml_Script____struct___586@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___586
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.gameplayTutorial
call.i @@NewGMLArray@@(argc=2)
b [171]

> gml_Script____struct___584@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[168]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [170]

> gml_Script____struct___585@___struct___584@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[169]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[170]
push.i [function]gml_Script____struct___585@___struct___584@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___585
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e 4
pop.v.i self.marginBottom
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[171]
push.i [function]gml_Script____struct___584@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___584
call.i @@NewGMLObject@@(argc=2)
push.l 7
conv.l.v
b [175]

> gml_Script____struct___582@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[172]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [174]

> gml_Script____struct___583@___struct___582@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[173]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777956
pop.v.v self.element
exit.i

:[174]
push.i [function]gml_Script____struct___583@___struct___582@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___583
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
push.s "1"@1481
pop.v.s self.height
pushi.e 1
pop.v.i self.flexGrow
pushi.e 12
pop.v.i self.marginLeft
exit.i

:[175]
push.i [function]gml_Script____struct___582@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___582
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.gameplayTitle
call.i @@NewGMLArray@@(argc=2)
b [179]

> gml_Script____struct___580@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[176]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 1
pop.v.i self.flexGrow
pushi.e 280
pop.v.i self.width
pushi.e 32
pop.v.i self.paddingTop
pushi.e 8
pop.v.i self.paddingBottom
b [178]

> gml_Script____struct___581@___struct___580@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[177]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[178]
push.i [function]gml_Script____struct___581@___struct___580@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___581
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[179]
push.i [function]gml_Script____struct___580@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___580
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioSfxButtonRight
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioSfxButtonLeft
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioSfxVolumeValue
call.i @@NewGMLArray@@(argc=1)
b [183]

> gml_Script____struct___578@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[180]
call.i @@SetStatic@@(argc=0)
b [182]

> gml_Script____struct___579@___struct___578@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[181]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[182]
push.i [function]gml_Script____struct___579@___struct___578@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___579
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[183]
push.i [function]gml_Script____struct___578@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___578
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [187]

> gml_Script____struct___576@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[184]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [186]

> gml_Script____struct___577@___struct___576@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[185]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[186]
push.i [function]gml_Script____struct___577@___struct___576@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___577
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[187]
push.i [function]gml_Script____struct___576@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___576
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioSfxVolume
call.i @@NewGMLArray@@(argc=2)
b [191]

> gml_Script____struct___574@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[188]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [190]

> gml_Script____struct___575@___struct___574@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[189]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[190]
push.i [function]gml_Script____struct___575@___struct___574@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___575
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[191]
push.i [function]gml_Script____struct___574@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___574
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioMusicButtonRight
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioMusicButtonLeft
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioMusicVolumeValue
call.i @@NewGMLArray@@(argc=1)
b [195]

> gml_Script____struct___572@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[192]
call.i @@SetStatic@@(argc=0)
b [194]

> gml_Script____struct___573@___struct___572@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[193]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[194]
push.i [function]gml_Script____struct___573@___struct___572@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___573
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[195]
push.i [function]gml_Script____struct___572@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___572
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [199]

> gml_Script____struct___570@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[196]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [198]

> gml_Script____struct___571@___struct___570@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[197]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[198]
push.i [function]gml_Script____struct___571@___struct___570@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___571
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[199]
push.i [function]gml_Script____struct___570@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___570
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioMusicVolume
call.i @@NewGMLArray@@(argc=2)
b [203]

> gml_Script____struct___568@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[200]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [202]

> gml_Script____struct___569@___struct___568@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[201]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[202]
push.i [function]gml_Script____struct___569@___struct___568@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___569
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e 4
pop.v.i self.marginBottom
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[203]
push.i [function]gml_Script____struct___568@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___568
call.i @@NewGMLObject@@(argc=2)
push.l 7
conv.l.v
b [207]

> gml_Script____struct___566@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[204]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [206]

> gml_Script____struct___567@___struct___566@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[205]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777956
pop.v.v self.element
exit.i

:[206]
push.i [function]gml_Script____struct___567@___struct___566@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___567
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
push.s "1"@1481
pop.v.s self.height
pushi.e 1
pop.v.i self.flexGrow
exit.i

:[207]
push.i [function]gml_Script____struct___566@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___566
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.audioTitle
call.i @@NewGMLArray@@(argc=2)
b [211]

> gml_Script____struct___564@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[208]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 1
pop.v.i self.flexGrow
pushi.e 280
pop.v.i self.width
pushi.e 16
pop.v.i self.gap
pushi.e 32
pop.v.i self.marginTop
pushi.e 8
pop.v.i self.paddingBottom
b [210]

> gml_Script____struct___565@___struct___564@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[209]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[210]
push.i [function]gml_Script____struct___565@___struct___564@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___565
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[211]
push.i [function]gml_Script____struct___564@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___564
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textFontButtonUp
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textFontButtonDown
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textFontValue
call.i @@NewGMLArray@@(argc=1)
b [215]

> gml_Script____struct___562@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[212]
call.i @@SetStatic@@(argc=0)
b [214]

> gml_Script____struct___563@___struct___562@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[213]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[214]
push.i [function]gml_Script____struct___563@___struct___562@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___563
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[215]
push.i [function]gml_Script____struct___562@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___562
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [219]

> gml_Script____struct___560@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[216]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [218]

> gml_Script____struct___561@___struct___560@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[217]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[218]
push.i [function]gml_Script____struct___561@___struct___560@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___561
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[219]
push.i [function]gml_Script____struct___560@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___560
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textFont
call.i @@NewGMLArray@@(argc=2)
b [223]

> gml_Script____struct___558@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[220]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [222]

> gml_Script____struct___559@___struct___558@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[221]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[222]
push.i [function]gml_Script____struct___559@___struct___558@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___559
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[223]
push.i [function]gml_Script____struct___558@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___558
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textSizeButtonUp
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textSizeButtonDown
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textSizeValue
call.i @@NewGMLArray@@(argc=1)
b [227]

> gml_Script____struct___556@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[224]
call.i @@SetStatic@@(argc=0)
b [226]

> gml_Script____struct___557@___struct___556@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[225]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[226]
push.i [function]gml_Script____struct___557@___struct___556@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___557
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[227]
push.i [function]gml_Script____struct___556@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___556
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [231]

> gml_Script____struct___554@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[228]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [230]

> gml_Script____struct___555@___struct___554@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[229]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[230]
push.i [function]gml_Script____struct___555@___struct___554@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___555
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[231]
push.i [function]gml_Script____struct___554@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___554
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textSize
call.i @@NewGMLArray@@(argc=2)
b [235]

> gml_Script____struct___552@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[232]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [234]

> gml_Script____struct___553@___struct___552@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[233]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[234]
push.i [function]gml_Script____struct___553@___struct___552@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___553
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e 4
pop.v.i self.marginBottom
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[235]
push.i [function]gml_Script____struct___552@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___552
call.i @@NewGMLObject@@(argc=2)
push.l 7
conv.l.v
b [239]

> gml_Script____struct___550@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[236]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [238]

> gml_Script____struct___551@___struct___550@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[237]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777956
pop.v.v self.element
exit.i

:[238]
push.i [function]gml_Script____struct___551@___struct___550@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___551
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
push.s "1"@1481
pop.v.s self.height
pushi.e 1
pop.v.i self.flexGrow
exit.i

:[239]
push.i [function]gml_Script____struct___550@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___550
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textTitle
call.i @@NewGMLArray@@(argc=2)
b [243]

> gml_Script____struct___548@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[240]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 1
pop.v.i self.flexGrow
pushi.e 280
pop.v.i self.width
pushi.e 16
pop.v.i self.gap
pushi.e 32
pop.v.i self.marginTop
pushi.e 8
pop.v.i self.paddingBottom
b [242]

> gml_Script____struct___549@___struct___548@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[241]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[242]
push.i [function]gml_Script____struct___549@___struct___548@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___549
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[243]
push.i [function]gml_Script____struct___548@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___548
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoCrtEffectButtonYes
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoCrtEffectButtonNo
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoCrtEffectValue
call.i @@NewGMLArray@@(argc=1)
b [247]

> gml_Script____struct___546@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[244]
call.i @@SetStatic@@(argc=0)
b [246]

> gml_Script____struct___547@___struct___546@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[245]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[246]
push.i [function]gml_Script____struct___547@___struct___546@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___547
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[247]
push.i [function]gml_Script____struct___546@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___546
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [251]

> gml_Script____struct___544@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[248]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [250]

> gml_Script____struct___545@___struct___544@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[249]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[250]
push.i [function]gml_Script____struct___545@___struct___544@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___545
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[251]
push.i [function]gml_Script____struct___544@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___544
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoCrtEffect
call.i @@NewGMLArray@@(argc=2)
b [255]

> gml_Script____struct___542@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[252]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [254]

> gml_Script____struct___543@___struct___542@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[253]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[254]
push.i [function]gml_Script____struct___543@___struct___542@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___543
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[255]
push.i [function]gml_Script____struct___542@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___542
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScaleButtonUp
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScaleButtonDown
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScaleValue
call.i @@NewGMLArray@@(argc=1)
b [259]

> gml_Script____struct___540@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[256]
call.i @@SetStatic@@(argc=0)
b [258]

> gml_Script____struct___541@___struct___540@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[257]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[258]
push.i [function]gml_Script____struct___541@___struct___540@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___541
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[259]
push.i [function]gml_Script____struct___540@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___540
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [263]

> gml_Script____struct___538@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[260]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [262]

> gml_Script____struct___539@___struct___538@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[261]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[262]
push.i [function]gml_Script____struct___539@___struct___538@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___539
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[263]
push.i [function]gml_Script____struct___538@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___538
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScale
call.i @@NewGMLArray@@(argc=2)
b [267]

> gml_Script____struct___536@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[264]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [266]

> gml_Script____struct___537@___struct___536@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[265]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[266]
push.i [function]gml_Script____struct___537@___struct___536@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___537
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e 4
pop.v.i self.marginBottom
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[267]
push.i [function]gml_Script____struct___536@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___536
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoFullscreenButtonYes
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoFullscreenButtonNo
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoFullscreenValue
call.i @@NewGMLArray@@(argc=1)
b [271]

> gml_Script____struct___534@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[268]
call.i @@SetStatic@@(argc=0)
b [270]

> gml_Script____struct___535@___struct___534@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[269]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[270]
push.i [function]gml_Script____struct___535@___struct___534@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___535
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[271]
push.i [function]gml_Script____struct___534@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___534
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [275]

> gml_Script____struct___532@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[272]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "flex_end"@11214
pop.v.s self.justifyContent
pushi.e 4
pop.v.i self.gap
b [274]

> gml_Script____struct___533@___struct___532@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[273]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[274]
push.i [function]gml_Script____struct___533@___struct___532@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___533
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[275]
push.i [function]gml_Script____struct___532@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___532
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoFullscreen
call.i @@NewGMLArray@@(argc=2)
b [279]

> gml_Script____struct___530@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[276]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
push.s "space-between"@10136
pop.v.s self.justifyContent
b [278]

> gml_Script____struct___531@___struct___530@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[277]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[278]
push.i [function]gml_Script____struct___531@___struct___530@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___531
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 280
pop.v.i self.width
pushi.e 4
pop.v.i self.marginBottom
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[279]
push.i [function]gml_Script____struct___530@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___530
call.i @@NewGMLObject@@(argc=2)
push.l 7
conv.l.v
b [283]

> gml_Script____struct___528@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[280]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [282]

> gml_Script____struct___529@___struct___528@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[281]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777956
pop.v.v self.element
exit.i

:[282]
push.i [function]gml_Script____struct___529@___struct___528@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___529
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
push.s "1"@1481
pop.v.s self.height
pushi.e 1
pop.v.i self.flexGrow
exit.i

:[283]
push.i [function]gml_Script____struct___528@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___528
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoTitle
call.i @@NewGMLArray@@(argc=2)
b [287]

> gml_Script____struct___526@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[284]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 1
pop.v.i self.flexGrow
pushi.e 280
pop.v.i self.width
pushi.e 16
pop.v.i self.gap
pushi.e 32
pop.v.i self.marginTop
pushi.e 8
pop.v.i self.paddingBottom
b [286]

> gml_Script____struct___527@___struct___526@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[285]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[286]
push.i [function]gml_Script____struct___527@___struct___526@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___527
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[287]
push.i [function]gml_Script____struct___526@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___526
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.langButtonRight
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.langButtonLeft
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.langLabel
call.i @@NewGMLArray@@(argc=1)
b [291]

> gml_Script____struct___524@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[288]
call.i @@SetStatic@@(argc=0)
b [290]

> gml_Script____struct___525@___struct___524@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[289]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[290]
push.i [function]gml_Script____struct___525@___struct___524@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___525
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 4
pop.v.i self.paddingRight
pushi.e 1
pop.v.i self.flexGrow
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[291]
push.i [function]gml_Script____struct___524@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___524
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
b [295]

> gml_Script____struct___522@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[292]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 280
pop.v.i self.width
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 4
pop.v.i self.gap
b [294]

> gml_Script____struct___523@___struct___522@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[293]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[294]
push.i [function]gml_Script____struct___523@___struct___522@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___523
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[295]
push.i [function]gml_Script____struct___522@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___522
call.i @@NewGMLObject@@(argc=2)
push.l 7
conv.l.v
b [299]

> gml_Script____struct___520@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[296]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [298]

> gml_Script____struct___521@___struct___520@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[297]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777956
pop.v.v self.element
exit.i

:[298]
push.i [function]gml_Script____struct___521@___struct___520@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___521
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
push.s "1"@1481
pop.v.s self.height
pushi.e 1
pop.v.i self.flexGrow
exit.i

:[299]
push.i [function]gml_Script____struct___520@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___520
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.langTitle
call.i @@NewGMLArray@@(argc=2)
b [303]

> gml_Script____struct___518@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[300]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 1
pop.v.i self.flexGrow
pushi.e 280
pop.v.i self.width
pushi.e 16
pop.v.i self.gap
pushi.e 8
pop.v.i self.paddingBottom
b [302]

> gml_Script____struct___519@___struct___518@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[301]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[302]
push.i [function]gml_Script____struct___519@___struct___518@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___519
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[303]
push.i [function]gml_Script____struct___518@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___518
call.i @@NewGMLObject@@(argc=2)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.closeMenuButton
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.settingTitle
call.i @@NewGMLArray@@(argc=2)
b [307]

> gml_Script____struct___516@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[304]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
b [306]

> gml_Script____struct___517@___struct___516@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[305]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[306]
push.i [function]gml_Script____struct___517@___struct___516@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___517
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e 1
pop.v.i self.flexGrow
push.s "center"@8883
pop.v.s self.alignItems
pushi.e 280
pop.v.i self.width
pushi.e 24
pop.v.i self.paddingBottom
push.s "space-between"@10136
pop.v.s self.justifyContent
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[307]
push.i [function]gml_Script____struct___516@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___516
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=16)
push.l 7
conv.l.v
b [311]

> gml_Script____struct___514@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[308]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [310]

> gml_Script____struct___515@___struct___514@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[309]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777258
pop.v.v self.element
exit.i

:[310]
push.i [function]gml_Script____struct___515@___struct___514@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___515
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
pushi.e 24
pop.v.i self.paddingTop
pushi.e 24
pop.v.i self.paddingLeft
pushi.e 24
pop.v.i self.paddingRight
pushi.e 24
pop.v.i self.paddingBottom
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[311]
push.i [function]gml_Script____struct___514@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___514
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=1)
push.v builtin.padTopPanel
b [315]

> gml_Script____struct___512@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[312]
call.i @@SetStatic@@(argc=0)
b [314]

> gml_Script____struct___513@___struct___512@anon@8692@gml_Object_oSettings_Create_0 (locals=0, argc=0)
:[313]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[314]
push.i [function]gml_Script____struct___513@___struct___512@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___513
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "auto"@11257
pop.v.s self.width
push.s "center"@8883
pop.v.s self.alignItems
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.paddingTop
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[315]
push.i [function]gml_Script____struct___512@anon@8692@gml_Object_oSettings_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___512
call.i @@NewGMLObject@@(argc=3)
call.i flexpanel_create_node(argc=1)
pop.v.v builtin.n_root
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v builtin.n_root
call.i flexpanel_calculate_layout(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.n_root
call.i gml_Script_ik_flex_panel_generate_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v builtin.n_root
call.i flexpanel_node_get_child(argc=2)
call.i flexpanel_node_layout_get_position(argc=1)
pushi.e -9
push.v [stacktop]self.height
pop.v.v local._panelSize
pushloc.v local._panelSize
pop.v.v builtin.heightPanel
push.v builtin.heightPanel
pushbltn.v builtin.room_height
sub.v.v
push.v builtin.initMaxScroll
add.v.v
pop.v.v builtin.maxScroll
exit.i

:[316]
push.i [function]gml_Script_anon@8692@gml_Object_oSettings_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.build_settings
call.i @@This@@(argc=0)
push.v builtin.build_settings
callv.v 0
popz.v

:[end]