; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_is_paused_controller(argc=0)
conv.v.b
bf [2]

:[1]
exit.i

:[2]
call.i gml_Script_is_paused_settings(argc=0)
conv.v.b
bf [end]

:[3]
push.v builtin.btnCloseMenu
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v builtin.btnCloseMenu
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bt [11]

:[7]
push.v builtin.btnCloseMenuBottom
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v builtin.btnCloseMenuBottom
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [10]

:[9]
push.e 0

:[10]
b [12]

:[11]
push.e 1

:[12]
bf [16]

:[13]
call.i @@This@@(argc=0)
push.v builtin.switch_state
callv.v 0
popz.v
pushref.i 45
pushi.e -9
pushenv [15]

:[14]
push.l 0
pop.v.l builtin.stateNext

:[15]
popenv [14]

:[16]
push.v builtin.btnLeaveParty
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[17]
push.v builtin.btnLeaveParty
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [19]

:[18]
push.e 0

:[19]
bf [24]

:[20]
call.i @@This@@(argc=0)
push.v builtin.switch_state
callv.v 0
popz.v
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [22]

:[21]
call.i steam_lobby_leave(argc=0)
popz.v
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.l 3
pop.v.l global.gameEndReason
b [23]

:[22]
push.l 4
pop.v.l global.gameEndReason

:[23]
pushref.i 50331650
call.i room_goto(argc=1)
popz.v

:[24]
push.v builtin.langButtonLeft
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
push.v builtin.langButtonLeft
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e -1
conv.i.v
call.i gml_Script_g_switch_lang(argc=1)
popz.v

:[29]
push.v builtin.langButtonRight
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[30]
push.v builtin.langButtonRight
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
call.i gml_Script_g_switch_lang(argc=0)
popz.v

:[34]
push.v builtin.btnFullscreenYes
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[35]
push.v builtin.btnFullscreenYes
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [37]

:[36]
push.e 0

:[37]
bt [42]

:[38]
push.v builtin.btnFullscreenNo
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[39]
push.v builtin.btnFullscreenNo
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [41]

:[40]
push.e 0

:[41]
b [43]

:[42]
push.e 1

:[43]
bf [63]

:[44]
push.v builtin.btnFullscreenYes
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [46]

:[45]
push.v builtin.btnFullscreenYes
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[46]
push.v builtin.btnFullscreenNo
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [48]

:[47]
push.v builtin.btnFullscreenNo
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[48]
push.v builtin.btnFullscreenYes
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [50]

:[49]
pushglb.v global.camera
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.switch_full_screen
callv.v 1
popz.v

:[50]
push.v builtin.btnFullscreenNo
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [52]

:[51]
pushglb.v global.camera
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.switch_full_screen
callv.v 1
popz.v

:[52]
pushglb.v global.fullScreen
conv.v.b
bf [54]

:[53]
push.v builtin.btnFullscreenYes
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
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

:[54]
pushglb.v global.fullScreen
conv.v.b
not.b
bf [59]

:[55]
push.v builtin.btnFullscreenNo
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
pushglb.v global.zoom
pushglb.v global.zoomMin
cmp.v.v EQ
bf [57]

:[56]
push.v builtin.videoScaleButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [58]

:[57]
push.v builtin.videoScaleButtonDown
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[58]
push.v builtin.videoScaleButtonUp
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[59]
pushglb.v global.fullScreen
conv.v.b
bf [61]

:[60]
push.s "settings._yes"@11040
conv.s.v
b [62]

:[61]
push.s "settings._no"@11041
conv.s.v

:[62]
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoFullscreenValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScaleValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element

:[63]
push.v builtin.videoScaleButtonUp
call.i instance_exists(argc=1)
conv.v.b
bf [65]

:[64]
push.v builtin.videoScaleButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [66]

:[65]
push.e 0

:[66]
bf [71]

:[67]
pushglb.v global.camera
pushi.e 1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.switch_resolution
callv.v 1
popz.v
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScaleValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
push.v builtin.videoScaleButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [69]

:[68]
push.v builtin.videoScaleButtonDown
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[69]
pushglb.v global.zoom
pushglb.v global.zoomMax
cmp.v.v EQ
bf [71]

:[70]
push.v builtin.videoScaleButtonUp
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[71]
push.v builtin.videoScaleButtonDown
call.i instance_exists(argc=1)
conv.v.b
bf [73]

:[72]
push.v builtin.videoScaleButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [74]

:[73]
push.e 0

:[74]
bf [79]

:[75]
pushglb.v global.camera
pushi.e -1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.switch_resolution
callv.v 1
popz.v
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScaleValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
push.v builtin.videoScaleButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [77]

:[76]
push.v builtin.videoScaleButtonUp
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[77]
pushglb.v global.zoom
pushglb.v global.zoomMin
cmp.v.v EQ
bf [79]

:[78]
push.v builtin.videoScaleButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[79]
push.v builtin.btnCRTNo
call.i instance_exists(argc=1)
conv.v.b
bf [81]

:[80]
push.v builtin.btnCRTNo
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [82]

:[81]
push.e 0

:[82]
bf [87]

:[83]
pushi.e 0
pop.v.i global.crtEffect
pushglb.v global.crtEffect
conv.v.b
bf [85]

:[84]
push.s "settings._yes"@11040
conv.s.v
b [86]

:[85]
push.s "settings._no"@11041
conv.s.v

:[86]
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoCrtEffectValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
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
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.crtEffect
push.s "crtEffect"@7274
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[87]
push.v builtin.btnCRTYes
call.i instance_exists(argc=1)
conv.v.b
bf [89]

:[88]
push.v builtin.btnCRTYes
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [90]

:[89]
push.e 0

:[90]
bf [95]

:[91]
pushi.e 1
pop.v.i global.crtEffect
pushglb.v global.crtEffect
conv.v.b
bf [93]

:[92]
push.s "settings._yes"@11040
conv.s.v
b [94]

:[93]
push.s "settings._no"@11041
conv.s.v

:[94]
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoCrtEffectValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
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
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.crtEffect
push.s "crtEffect"@7274
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[95]
push.v builtin.textSizeButtonDown
call.i instance_exists(argc=1)
conv.v.b
bf [97]

:[96]
push.v builtin.textSizeButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [98]

:[97]
push.e 0

:[98]
bt [103]

:[99]
push.v builtin.textSizeButtonUp
call.i instance_exists(argc=1)
conv.v.b
bf [101]

:[100]
push.v builtin.textSizeButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [102]

:[101]
push.e 0

:[102]
b [104]

:[103]
push.e 1

:[104]
bf [118]

:[105]
push.v builtin.textSizeButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [107]

:[106]
push.v builtin.textSizeButtonDown
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[107]
push.v builtin.textSizeButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [109]

:[108]
push.v builtin.textSizeButtonUp
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[109]
push.v builtin.textSizeButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [111]

:[110]
pushi.e 100
conv.i.v
pushglb.v global.fontSize
pushi.e 10
sub.i.v
call.i max(argc=2)
pop.v.v global.fontSize

:[111]
push.v builtin.textSizeButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [113]

:[112]
pushi.e 150
conv.i.v
pushglb.v global.fontSize
pushi.e 10
add.i.v
call.i min(argc=2)
pop.v.v global.fontSize

:[113]
pushglb.v global.fontSize
pushi.e 100
cmp.i.v EQ
bf [115]

:[114]
push.v builtin.textSizeButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[115]
pushglb.v global.fontSize
pushi.e 150
cmp.i.v EQ
bf [117]

:[116]
push.v builtin.textSizeButtonUp
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[117]
pushglb.v global.fontSize
call.i gml_Script_change_font_size(argc=1)
popz.v
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textSizeValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element

:[118]
push.v builtin.textFontButtonDown
call.i instance_exists(argc=1)
conv.v.b
bf [120]

:[119]
push.v builtin.textFontButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [121]

:[120]
push.e 0

:[121]
bt [126]

:[122]
push.v builtin.textFontButtonUp
call.i instance_exists(argc=1)
conv.v.b
bf [124]

:[123]
push.v builtin.textFontButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [125]

:[124]
push.e 0

:[125]
b [127]

:[126]
push.e 1

:[127]
bf [141]

:[128]
push.v builtin.textFontButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [130]

:[129]
push.v builtin.textFontButtonDown
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[130]
push.v builtin.textFontButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_disabled
callv.v 0
conv.v.b
bf [132]

:[131]
push.v builtin.textFontButtonUp
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[132]
push.v builtin.textFontButtonDown
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [134]

:[133]
pushi.e 0
conv.i.v
pushglb.v global.fontStyle
pushi.e 1
sub.i.v
call.i max(argc=2)
pop.v.v global.fontStyle

:[134]
push.v builtin.textFontButtonUp
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [136]

:[135]
pushi.e 1
conv.i.v
pushglb.v global.fontStyle
pushi.e 1
add.i.v
call.i min(argc=2)
pop.v.v global.fontStyle

:[136]
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [138]

:[137]
push.v builtin.textFontButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[138]
pushglb.v global.fontStyle
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.v builtin.textFontButtonUp
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[140]
call.i gml_Script_g_change_font_style(argc=0)
popz.v

:[141]
push.v builtin.gameplayTutorialLeft
call.i instance_exists(argc=1)
conv.v.b
bf [143]

:[142]
push.v builtin.gameplayTutorialLeft
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [144]

:[143]
push.e 0

:[144]
bf [146]

:[145]
pushi.e 1
pop.v.b global.isTutorialDone
push.v builtin.gameplayTutorialLeft
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.gameplayTutorialRight
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.s "settings._no"@11041
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.gameplayTutorialValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.isTutorialDone
push.s "done"@7238
conv.s.v
push.s "tutorial"@4830
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[146]
push.v builtin.gameplayTutorialRight
call.i instance_exists(argc=1)
conv.v.b
bf [148]

:[147]
push.v builtin.gameplayTutorialRight
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
pushi.e 0
pop.v.b global.isTutorialDone
push.v builtin.gameplayTutorialLeft
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.v builtin.gameplayTutorialRight
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
push.s "settings._yes"@11040
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
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.gameplayTutorialValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.isTutorialDone
push.s "done"@7238
conv.s.v
push.s "tutorial"@4830
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[151]
pushref.i 11
pushi.e -9
pushenv [162]

:[152]
push.l 2
conv.l.v
push.l 0
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [157]

:[153]
push.v other.maxScroll
push.v other.minScroll
push.v other.scrollTo
push.v builtin.number
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [155]

:[154]
pushi.e 20
conv.i.v
b [156]

:[155]
pushi.e 5
conv.i.v

:[156]
sub.v.v
call.i clamp(argc=3)
pop.v.v other.scrollTo
b [162]

:[157]
push.l 2
conv.l.v
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [162]

:[158]
push.v other.maxScroll
push.v other.minScroll
push.v other.scrollTo
push.v builtin.number
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [160]

:[159]
pushi.e 20
conv.i.v
b [161]

:[160]
pushi.e 5
conv.i.v

:[161]
add.v.v
call.i clamp(argc=3)
pop.v.v other.scrollTo

:[162]
popenv [152]
push.d 0.1
conv.d.v
push.v builtin.scrollTo
push.v builtin.scroll
call.i lerp(argc=3)
call.i round(argc=1)
pop.v.v builtin.scroll
push.v builtin.scroll
push.v builtin.scrollTo
cmp.v.v NEQ
bf [end]

:[163]
pushi.e 0
pop.v.i local._i

:[164]
pushloc.v local._i
push.v builtin.settings
call.i array_length(argc=1)
cmp.v.v LT
bf [166]

:[165]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.settings
pushi.e -9
push.v [stacktop]self.yInit
push.v builtin.scroll
sub.v.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.settings
pushi.e -9
pop.v.v [stacktop]self.y
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [164]

:[166]
push.v builtin.scroll
push.v builtin.scrollTo
sub.v.v
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [168]

:[167]
push.v builtin.scrollTo
pop.v.v builtin.scroll

:[168]
pushref.i 11
pushi.e -9
pushenv [170]

:[169]
call.i @@This@@(argc=0)
push.v builtin.check_hover
callv.v 0
popz.v

:[170]
popenv [169]

:[end]