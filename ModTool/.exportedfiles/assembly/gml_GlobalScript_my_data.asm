:[0]
pushi.e 1
pop.v.i global.vfxEffectSpeed
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
push.s "0.5.24"@7233
pop.v.s global.gameVersion
pushi.e 0
pop.v.b global.botMode
pushi.e 1
pop.v.i global.debugSpeedMult
pushi.e 1
pop.v.b global.firstInit
pushi.e 0
conv.b.v
push.s "done"@7238
conv.s.v
push.s "tutorial"@4830
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.isTutorialDone
pushi.e 50
conv.i.v
push.s "musicVolume"@4515
conv.s.v
push.s "audio"@4519
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.musicVolume
pushi.e 50
conv.i.v
push.s "sfxVolume"@4524
conv.s.v
push.s "audio"@4519
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.sfxVolume
pushref.i 33554437
pop.v.v global.nextMusic
push.l 0
pop.v.l global.displayControllerAsset
b [19]

> gml_Script_set_display_controller_asset (locals=3, argc=0)
:[1]
pushi.e 0
pop.v.b local._hasMouse
pushi.e 0
pop.v.b local._hasController
pushi.e 0
pop.v.i local._i

:[2]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [10]

:[3]
pushloc.v local._i
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
bf [5]

:[4]
b [9]

:[5]
pushloc.v local._i
call.i gml_Script_InputPlayerUsingGamepad(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 1
pop.v.b local._hasController
b [9]

:[7]
pushloc.v local._i
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.b local._hasMouse

:[9]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[10]
pushloc.v local._hasMouse
conv.v.b
bf [12]

:[11]
pushloc.v local._hasController
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.l 2
pop.v.l global.displayControllerAsset
b [18]

:[15]
pushloc.v local._hasController
conv.v.b
bf [17]

:[16]
push.l 1
pop.v.l global.displayControllerAsset
b [18]

:[17]
push.l 0
pop.v.l global.displayControllerAsset

:[18]
exit.i

:[19]
push.i [function]gml_Script_set_display_controller_asset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.set_display_controller_asset
popz.v
pushi.e -1
conv.i.v
push.s "currentLanguage"@5427
conv.s.v
push.s "language"@5460
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.currentLanguage
pushglb.v global.currentLanguage
pushi.e -1
cmp.i.v EQ
bf [42]

:[20]
call.i os_get_language(argc=0)
dup.v 0
push.s "en"@7247
cmp.s.v EQ
bt [31]

:[21]
dup.v 0
push.s "fr"@7248
cmp.s.v EQ
bt [32]

:[22]
dup.v 0
push.s "de"@7249
cmp.s.v EQ
bt [33]

:[23]
dup.v 0
push.s "jp"@7250
cmp.s.v EQ
bt [34]

:[24]
dup.v 0
push.s "zh"@7251
cmp.s.v EQ
bt [35]

:[25]
dup.v 0
push.s "es"@7252
cmp.s.v EQ
bt [36]

:[26]
dup.v 0
push.s "pt"@7253
cmp.s.v EQ
bt [37]

:[27]
dup.v 0
push.s "ru"@7254
cmp.s.v EQ
bt [38]

:[28]
dup.v 0
push.s "it"@7255
cmp.s.v EQ
bt [39]

:[29]
b [40]

:[30]
b [41]

:[31]
pushi.e 0
pop.v.i global.currentLanguage
b [41]

:[32]
pushi.e 1
pop.v.i global.currentLanguage
b [41]

:[33]
pushi.e 2
pop.v.i global.currentLanguage
b [41]

:[34]
pushi.e 3
pop.v.i global.currentLanguage
b [41]

:[35]
pushi.e 4
pop.v.i global.currentLanguage
b [41]

:[36]
pushi.e 5
pop.v.i global.currentLanguage
b [41]

:[37]
pushi.e 6
pop.v.i global.currentLanguage
b [41]

:[38]
pushi.e 7
pop.v.i global.currentLanguage
b [41]

:[39]
pushi.e 8
pop.v.i global.currentLanguage
b [41]

:[40]
pushi.e 0
pop.v.i global.currentLanguage
b [41]

:[41]
popz.v

:[42]
pushglb.v global.currentLanguage
push.s "currentLanguage"@5427
conv.s.v
push.s "language"@5460
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_g_setup_lang(argc=0)
popz.v
pushi.e 100
conv.i.v
push.s "size"@3225
conv.s.v
push.s "font"@5411
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.fontSize
pushi.e 0
conv.i.v
push.s "style"@5454
conv.s.v
push.s "font"@5411
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.fontStyle
pushi.e 1
pop.v.i global.fontScaleTitle
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
conv.i.v
b [45]

:[44]
pushi.e 1
conv.i.v

:[45]
pop.v.v global.fontShadowAlpha
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
conv.i.v
b [48]

:[47]
pushi.e 1
conv.i.v

:[48]
pop.v.v global.fontBorderThickness
pushi.e 0
conv.i.v
push.s "fullScreen"@7256
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.fullScreen
pushi.e 2
pop.v.i global.zoomDefault
pushglb.v global.zoomDefault
pop.v.v global.zoom
pushi.e 3
pop.v.i global.zoomMax
pushi.e 2
pop.v.i global.zoomMin
pushglb.v global.zoom
pop.v.v global.zoomPrevious
pushi.e 640
pop.v.i global.gameWidth
pushi.e 360
pop.v.i global.gameHeight
pushglb.v global.gameWidth
pop.v.v global.guiWidth
pushglb.v global.gameHeight
pop.v.v global.guiHeight
pushglb.v global.gameWidth
pushi.e 4
conv.i.d
div.d.v
pop.v.v global.guiWQuarter
pushglb.v global.gameWidth
pushglb.v global.zoom
mul.v.v
pop.v.v global.gameDrawWidth
pushglb.v global.gameHeight
pushglb.v global.zoom
mul.v.v
pop.v.v global.gameDrawHeight
pushi.e 0
pop.v.i global.gameDrawOffsetX
pushi.e 0
pop.v.i global.gameDrawOffsetY
pushglb.v global.gameWidth
pushglb.v global.zoom
mul.v.v
pop.v.v global.windowWidth
pushglb.v global.gameHeight
pushglb.v global.zoom
mul.v.v
pop.v.v global.windowHeight
pushglb.v global.windowWidth
pushglb.v global.windowHeight
div.v.v
pop.v.v global.aspectRatio
pushglb.v global.gameDrawHeight
pushglb.v global.gameDrawWidth
call.i display_set_gui_size(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "crtEffect"@7274
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.crtEffect
pushi.e -1
pop.v.i global.upscaleMatrix
pushi.e 0
conv.b.v
push.s "nameChanged"@7276
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.lobbyNameChanged
push.s ""@61
conv.s.v
push.s "name"@2212
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v global.lobbyNameDefault
push.l 2
conv.l.v
push.s "type"@5379
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.lobbyTypeDefault
pushi.e 4
conv.i.v
push.s "nbrPlayers"@7282
conv.s.v
push.s "lobby"@7277
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.lobbyNbrPlayersDefault
pushi.e 1
conv.i.v
push.s "counter"@7284
conv.s.v
push.s "gameplay"@7285
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.gameCount
push.l 21
conv.l.v
b [50]

> gml_Script____struct___233 (locals=0, argc=0)
:[49]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777900
pop.v.v self.sprite
exit.i

:[50]
push.i [function]gml_Script____struct___233
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___233
call.i @@NewGMLObject@@(argc=2)
push.l 19
conv.l.v
b [52]

> gml_Script____struct___232 (locals=0, argc=0)
:[51]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777874
pop.v.v self.sprite
exit.i

:[52]
push.i [function]gml_Script____struct___232
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___232
call.i @@NewGMLObject@@(argc=2)
push.l 17
conv.l.v
b [54]

> gml_Script____struct___231 (locals=0, argc=0)
:[53]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777890
pop.v.v self.sprite
exit.i

:[54]
push.i [function]gml_Script____struct___231
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___231
call.i @@NewGMLObject@@(argc=2)
push.l 16
conv.l.v
b [56]

> gml_Script____struct___230 (locals=0, argc=0)
:[55]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777888
pop.v.v self.sprite
exit.i

:[56]
push.i [function]gml_Script____struct___230
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___230
call.i @@NewGMLObject@@(argc=2)
push.l 15
conv.l.v
b [58]

> gml_Script____struct___229 (locals=0, argc=0)
:[57]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777892
pop.v.v self.sprite
exit.i

:[58]
push.i [function]gml_Script____struct___229
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___229
call.i @@NewGMLObject@@(argc=2)
push.l 14
conv.l.v
b [60]

> gml_Script____struct___228 (locals=0, argc=0)
:[59]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777894
pop.v.v self.sprite
exit.i

:[60]
push.i [function]gml_Script____struct___228
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___228
call.i @@NewGMLObject@@(argc=2)
push.l 13
conv.l.v
b [62]

> gml_Script____struct___227 (locals=0, argc=0)
:[61]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777884
pop.v.v self.sprite
exit.i

:[62]
push.i [function]gml_Script____struct___227
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___227
call.i @@NewGMLObject@@(argc=2)
push.l 12
conv.l.v
b [64]

> gml_Script____struct___226 (locals=0, argc=0)
:[63]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777862
pop.v.v self.sprite
exit.i

:[64]
push.i [function]gml_Script____struct___226
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___226
call.i @@NewGMLObject@@(argc=2)
push.l 11
conv.l.v
b [66]

> gml_Script____struct___225 (locals=0, argc=0)
:[65]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777896
pop.v.v self.sprite
exit.i

:[66]
push.i [function]gml_Script____struct___225
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___225
call.i @@NewGMLObject@@(argc=2)
push.l 20
conv.l.v
b [68]

> gml_Script____struct___224 (locals=0, argc=0)
:[67]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777866
pop.v.v self.sprite
exit.i

:[68]
push.i [function]gml_Script____struct___224
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___224
call.i @@NewGMLObject@@(argc=2)
push.l 18
conv.l.v
b [70]

> gml_Script____struct___223 (locals=0, argc=0)
:[69]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777898
pop.v.v self.sprite
exit.i

:[70]
push.i [function]gml_Script____struct___223
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___223
call.i @@NewGMLObject@@(argc=2)
push.l 9
conv.l.v
b [72]

> gml_Script____struct___222 (locals=0, argc=0)
:[71]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777860
pop.v.v self.sprite
exit.i

:[72]
push.i [function]gml_Script____struct___222
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___222
call.i @@NewGMLObject@@(argc=2)
push.l 10
conv.l.v
b [74]

> gml_Script____struct___221 (locals=0, argc=0)
:[73]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777864
pop.v.v self.sprite
exit.i

:[74]
push.i [function]gml_Script____struct___221
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___221
call.i @@NewGMLObject@@(argc=2)
push.l 6
conv.l.v
b [76]

> gml_Script____struct___220 (locals=0, argc=0)
:[75]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777880
pop.v.v self.sprite
exit.i

:[76]
push.i [function]gml_Script____struct___220
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___220
call.i @@NewGMLObject@@(argc=2)
push.l 5
conv.l.v
b [78]

> gml_Script____struct___219 (locals=0, argc=0)
:[77]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777876
pop.v.v self.sprite
exit.i

:[78]
push.i [function]gml_Script____struct___219
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___219
call.i @@NewGMLObject@@(argc=2)
push.l 4
conv.l.v
b [80]

> gml_Script____struct___218 (locals=0, argc=0)
:[79]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777878
pop.v.v self.sprite
exit.i

:[80]
push.i [function]gml_Script____struct___218
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___218
call.i @@NewGMLObject@@(argc=2)
push.l 3
conv.l.v
b [82]

> gml_Script____struct___217 (locals=0, argc=0)
:[81]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777886
pop.v.v self.sprite
exit.i

:[82]
push.i [function]gml_Script____struct___217
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___217
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=17)
pop.v.v global.tokens
call.i ini_close(argc=0)
popz.v
push.s "#"@3571
conv.s.v
push.s "]"@571
conv.s.v
push.s "["@572
conv.s.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v global.disabledCharacters
b [84]

> gml_Script____struct___234 (locals=0, argc=0)
:[83]
call.i @@SetStatic@@(argc=0)
push.i 13884832
pop.v.i self.blue1
push.i 12038255
pop.v.i self.blue2
push.i 10321751
pop.v.i self.blue3
push.i 8804170
pop.v.i self.blue4
push.i 6699838
pop.v.i self.blue5
push.i 4532537
pop.v.i self.blue6
push.i 3087917
pop.v.i self.grey8
push.i 4140613
pop.v.i self.grey7
push.i 5260637
pop.v.i self.grey6
push.i 6840955
pop.v.i self.grey5
push.i 8290460
pop.v.i self.grey4
push.i 10266563
pop.v.i self.grey3
push.i 11848155
pop.v.i self.grey2
push.i 13757692
pop.v.i self.grey1
push.i 9820074
pop.v.i self.green1
push.i 8564836
pop.v.i self.green2
push.i 8751176
pop.v.i self.green3
push.i 7625535
pop.v.i self.green4
push.i 10995947
pop.v.i self.brown1
push.i 8691923
pop.v.i self.brown2
push.i 7110328
pop.v.i self.brown3
push.i 5395087
pop.v.i self.brown4
push.i 4733290
pop.v.i self.brown5
push.i 7962565
pop.v.i self.purple1
push.i 8214955
pop.v.i self.purple2
push.i 6569340
pop.v.i self.purple3
push.i 4533070
pop.v.i self.purple4
push.i 5192570
pop.v.i self.red2
push.i 5524393
pop.v.i self.red1
push.i 6189784
pop.v.i self.orange2
push.i 7446512
pop.v.i self.orange1
push.i 9555959
pop.v.i self.yellow1
exit.i

:[84]
push.i [function]gml_Script____struct___234
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___234
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.color
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pushglb.v global.color
pushi.e -9
pop.v.v [stacktop]self.player1
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pushglb.v global.color
pushi.e -9
pop.v.v [stacktop]self.player2
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
pushglb.v global.color
pushi.e -9
pop.v.v [stacktop]self.player3
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pushglb.v global.color
pushi.e -9
pop.v.v [stacktop]self.player4
pushi.e 0
conv.b.v
pushi.e 3
conv.i.v
push.l 8
conv.l.v
push.s " "@3157
conv.s.v
push.s "ftMonobit"@7360
conv.s.v
call.i gml_Script_scribble_glyph_set(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 9
conv.i.v
push.l 7
conv.l.v
push.s " "@3157
conv.s.v
push.s "ftMonobit"@7360
conv.s.v
call.i gml_Script_scribble_glyph_set(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
push.l 7
conv.l.v
push.s " "@3157
conv.s.v
push.s "ftPixeloidSans"@7362
conv.s.v
call.i gml_Script_scribble_glyph_set(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 12
conv.i.v
push.l 6
conv.l.v
push.s " "@3157
conv.s.v
push.s "ftAlkhemikal"@7363
conv.s.v
call.i gml_Script_scribble_glyph_set(argc=5)
popz.v
pushi.e 1
pop.v.i global.fontScaleLatin
pushi.e 1
pop.v.i global.fontScaleCjk
pushglb.v global.fontScaleLatin
pop.v.v global.fontScaleOpenEnded
pushi.e 0
conv.b.v
call.i font_add_enable_aa(argc=1)
popz.v
pushi.e 128
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 11
conv.i.v
pushbltn.v builtin.working_directory
push.s "monobit.ttf"@7366
add.s.v
call.i font_add(argc=6)
pop.v.v global.fntLatinPixelart
pushi.e 128
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
push.d 7.5
conv.d.v
pushbltn.v builtin.working_directory
push.s "fusion-pixel-10px-monospaced-ja.ttf"@7368
add.s.v
call.i font_add(argc=6)
pop.v.v global.fntJPixelart
pushi.e 128
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
push.d 7.5
conv.d.v
pushbltn.v builtin.working_directory
push.s "fusion-pixel-10px-monospaced-zh_hans.ttf"@7369
add.s.v
call.i font_add(argc=6)
pop.v.v global.fntCPixelart
pushi.e 128
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 7
conv.i.v
pushbltn.v builtin.working_directory
push.s "PixeloidSans.ttf"@7370
add.s.v
call.i font_add(argc=6)
pop.v.v global.fntCYPixelart
pushi.e 1
conv.b.v
call.i font_add_enable_aa(argc=1)
popz.v
pushi.e 128
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 32
conv.i.v
pushbltn.v builtin.working_directory
push.s "NotoSans-ExtraBold.ttf"@7371
add.s.v
call.i font_add(argc=6)
pop.v.v global.fntLatin
pushi.e 1
conv.b.v
pushglb.v global.fntLatin
call.i font_enable_sdf(argc=2)
popz.v
pushi.e 8
conv.i.v
pushglb.v global.fntLatin
call.i font_sdf_spread(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
b [86]

> gml_Script____struct___235 (locals=0, argc=0)
:[85]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.outlineEnable
pushi.e 1
pop.v.i self.outlineAlpha
pushi.e 2
pop.v.i self.outlineDistance
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.outlineColour
exit.i

:[86]
push.i [function]gml_Script____struct___235
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___235
call.i @@NewGMLObject@@(argc=2)
pushi.e 1
conv.b.v
pushglb.v global.fntLatin
call.i font_enable_effects(argc=3)
popz.v
pushi.e 128
conv.i.v
pushi.e 32
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 32
conv.i.v
pushbltn.v builtin.working_directory
push.s "NotoSansSC-Medium.ttf"@7381
add.s.v
call.i font_add(argc=6)
pop.v.v global.fntCjk
pushi.e 1
conv.b.v
pushglb.v global.fntCjk
call.i font_enable_sdf(argc=2)
popz.v
pushi.e 8
conv.i.v
pushglb.v global.fntCjk
call.i font_sdf_spread(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
b [88]

> gml_Script____struct___236 (locals=0, argc=0)
:[87]
call.i @@SetStatic@@(argc=0)
pushi.e 1
pop.v.b self.outlineEnable
pushi.e 1
pop.v.i self.outlineAlpha
pushi.e 2
pop.v.i self.outlineDistance
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.outlineColour
exit.i

:[88]
push.i [function]gml_Script____struct___236
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___236
call.i @@NewGMLObject@@(argc=2)
pushi.e 1
conv.b.v
pushglb.v global.fntCjk
call.i font_enable_effects(argc=3)
popz.v
pushglb.v global.fntLatinPixelart
pop.v.v global.fontOpenEnded
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "grey1"@5384
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
push.s "grey8"@7329
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
push.s "blue1"@7323
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
push.s "p0"@4589
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.s "yellow1"@7353
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
push.s "p1"@4590
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
push.s "green1"@7336
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
push.s "p2"@7385
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
push.s "red1"@7350
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple1
push.s "p3"@7386
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple1
push.s "purple1"@7345
conv.s.v
call.i gml_Script_scribble_color_set(argc=2)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
push.s "ftAlkhemikal"@7363
conv.s.v
call.i gml_Script_scribble_font_bake_outline_and_shadow(argc=7)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "ftMonobitSh"@5421
conv.s.v
push.s "ftMonobit"@7360
conv.s.v
call.i gml_Script_scribble_font_bake_outline_and_shadow(argc=7)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "ftPixeloidSansSh"@5434
conv.s.v
push.s "ftPixeloidSans"@7362
conv.s.v
call.i gml_Script_scribble_font_bake_outline_and_shadow(argc=7)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "ftFusionJPSh"@5429
conv.s.v
push.s "ftFusionJP"@7388
conv.s.v
call.i gml_Script_scribble_font_bake_outline_and_shadow(argc=7)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "ftFusionJPTitleSh"@5428
conv.s.v
push.s "ftFusionJPTitle"@7389
conv.s.v
call.i gml_Script_scribble_font_bake_outline_and_shadow(argc=7)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "ftFusionSCSh"@5432
conv.s.v
push.s "ftFusionSC"@7390
conv.s.v
call.i gml_Script_scribble_font_bake_outline_and_shadow(argc=7)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "ftFusionSCTitleSh"@5431
conv.s.v
push.s "ftFusionSCTitle"@7391
conv.s.v
call.i gml_Script_scribble_font_bake_outline_and_shadow(argc=7)
popz.v
push.s "ftNbrBig"@5422
conv.s.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_duplicate(argc=2)
popz.v
push.s "ftNbrSmall"@5423
conv.s.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_duplicate(argc=2)
popz.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_default(argc=1)
popz.v
pushglb.v global.zoom
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftPixeloidSansSh"@5434
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftFusionJPSh"@5429
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftFusionJPTitleSh"@5428
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftFusionSCSh"@5432
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftFusionSCTitleSh"@5431
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftNbrBig"@5422
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
pushglb.v global.zoom
push.s "ftNbrSmall"@5423
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v
call.i gml_Script_rescale_font(argc=0)
popz.v
call.i gml_Script_g_change_font_style(argc=0)
popz.v
call.i @@NewGMLObject@@(argc=0)
pop.v.v global.uiPos
pushi.e 242
conv.i.v
b [90]

> gml_Script____struct___241 (locals=0, argc=0)
:[89]
call.i @@SetStatic@@(argc=0)
pushi.e 218
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[90]
push.i [function]gml_Script____struct___241
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___241
call.i @@NewGMLObject@@(argc=2)
pushi.e 216
conv.i.v
b [92]

> gml_Script____struct___240 (locals=0, argc=0)
:[91]
call.i @@SetStatic@@(argc=0)
pushi.e 218
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[92]
push.i [function]gml_Script____struct___240
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___240
call.i @@NewGMLObject@@(argc=2)
pushi.e 190
conv.i.v
b [94]

> gml_Script____struct___239 (locals=0, argc=0)
:[93]
call.i @@SetStatic@@(argc=0)
pushi.e 218
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[94]
push.i [function]gml_Script____struct___239
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___239
call.i @@NewGMLObject@@(argc=2)
b [96]

> gml_Script____struct___238 (locals=0, argc=0)
:[95]
call.i @@SetStatic@@(argc=0)
pushi.e 218
pop.v.i self.x
pushi.e 164
pop.v.i self.y
exit.i

:[96]
push.i [function]gml_Script____struct___238
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___238
call.i @@NewGMLObject@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.stopGem
pushi.e 242
conv.i.v
b [98]

> gml_Script____struct___245 (locals=0, argc=0)
:[97]
call.i @@SetStatic@@(argc=0)
pushi.e 420
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[98]
push.i [function]gml_Script____struct___245
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___245
call.i @@NewGMLObject@@(argc=2)
pushi.e 216
conv.i.v
b [100]

> gml_Script____struct___244 (locals=0, argc=0)
:[99]
call.i @@SetStatic@@(argc=0)
pushi.e 420
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[100]
push.i [function]gml_Script____struct___244
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___244
call.i @@NewGMLObject@@(argc=2)
pushi.e 190
conv.i.v
b [102]

> gml_Script____struct___243 (locals=0, argc=0)
:[101]
call.i @@SetStatic@@(argc=0)
pushi.e 420
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[102]
push.i [function]gml_Script____struct___243
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___243
call.i @@NewGMLObject@@(argc=2)
b [104]

> gml_Script____struct___242 (locals=0, argc=0)
:[103]
call.i @@SetStatic@@(argc=0)
pushi.e 420
pop.v.i self.x
pushi.e 164
pop.v.i self.y
exit.i

:[104]
push.i [function]gml_Script____struct___242
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___242
call.i @@NewGMLObject@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.continueGem
pushi.e 140
pushref.i 16777325
call.i sprite_get_height(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.i
call.i round(argc=1)
b [106]

> gml_Script____struct___246 (locals=0, argc=0)
:[105]
call.i @@SetStatic@@(argc=0)
pushi.e 426
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[106]
push.i [function]gml_Script____struct___246
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___246
call.i @@NewGMLObject@@(argc=2)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.cardItem
b [108]

> gml_Script____struct___247 (locals=0, argc=0)
:[107]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.x
pushi.e 69
pop.v.i self.y
exit.i

:[108]
push.i [function]gml_Script____struct___247
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___247
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.cardItemName
b [110]

> gml_Script____struct___248 (locals=0, argc=0)
:[109]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.x
pushi.e 126
pop.v.i self.y
exit.i

:[110]
push.i [function]gml_Script____struct___248
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___248
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.cardItemDesc
b [112]

> gml_Script____struct___249 (locals=0, argc=0)
:[111]
call.i @@SetStatic@@(argc=0)
pushi.e 106
pop.v.i self.x
pushi.e 130
pop.v.i self.y
exit.i

:[112]
push.i [function]gml_Script____struct___249
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___249
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.mob
b [114]

> gml_Script____struct___250 (locals=0, argc=0)
:[113]
call.i @@SetStatic@@(argc=0)
pushi.e 106
pop.v.i self.x
pushi.e 257
pop.v.i self.y
exit.i

:[114]
push.i [function]gml_Script____struct___250
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___250
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.mobTxt
b [116]

> gml_Script____struct___251 (locals=0, argc=0)
:[115]
call.i @@SetStatic@@(argc=0)
pushi.e 427
pop.v.i self.x
pushi.e 146
pop.v.i self.y
exit.i

:[116]
push.i [function]gml_Script____struct___251
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___251
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.monsterScene
b [118]

> gml_Script____struct___252 (locals=0, argc=0)
:[117]
call.i @@SetStatic@@(argc=0)
pushi.e 44
pop.v.i self.x
pushi.e 52
pop.v.i self.y
exit.i

:[118]
push.i [function]gml_Script____struct___252
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___252
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.gemInUi
b [120]

> gml_Script____struct___253 (locals=0, argc=0)
:[119]
call.i @@SetStatic@@(argc=0)
pushi.e 127
pop.v.i self.x
pushi.e 40
pop.v.i self.y
exit.i

:[120]
push.i [function]gml_Script____struct___253
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___253
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.tokenInUi
b [122]

> gml_Script____struct___260 (locals=0, argc=0)
:[121]
call.i @@SetStatic@@(argc=0)
pushi.e 484
pop.v.i self.x
pushi.e 85
pop.v.i self.y
pushref.i 16777342
pop.v.v self.theSprite
exit.i

:[122]
push.i [function]gml_Script____struct___260
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___260
call.i @@NewGMLObject@@(argc=1)
b [124]

> gml_Script____struct___259 (locals=0, argc=0)
:[123]
call.i @@SetStatic@@(argc=0)
pushi.e 485
pop.v.i self.x
pushi.e 30
pop.v.i self.y
pushref.i 16777340
pop.v.v self.theSprite
exit.i

:[124]
push.i [function]gml_Script____struct___259
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___259
call.i @@NewGMLObject@@(argc=1)
b [126]

> gml_Script____struct___258 (locals=0, argc=0)
:[125]
call.i @@SetStatic@@(argc=0)
pushi.e 460
pop.v.i self.x
pushi.e 24
pop.v.i self.y
pushref.i 16777339
pop.v.v self.theSprite
exit.i

:[126]
push.i [function]gml_Script____struct___258
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___258
call.i @@NewGMLObject@@(argc=1)
b [128]

> gml_Script____struct___257 (locals=0, argc=0)
:[127]
call.i @@SetStatic@@(argc=0)
pushi.e 428
pop.v.i self.x
pushi.e 37
pop.v.i self.y
pushref.i 16777338
pop.v.v self.theSprite
exit.i

:[128]
push.i [function]gml_Script____struct___257
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___257
call.i @@NewGMLObject@@(argc=1)
b [130]

> gml_Script____struct___256 (locals=0, argc=0)
:[129]
call.i @@SetStatic@@(argc=0)
pushi.e 396
pop.v.i self.x
pushi.e 29
pop.v.i self.y
pushref.i 16777337
pop.v.v self.theSprite
exit.i

:[130]
push.i [function]gml_Script____struct___256
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___256
call.i @@NewGMLObject@@(argc=1)
b [132]

> gml_Script____struct___255 (locals=0, argc=0)
:[131]
call.i @@SetStatic@@(argc=0)
pushi.e 368
pop.v.i self.x
pushi.e 86
pop.v.i self.y
pushref.i 16777341
pop.v.v self.theSprite
exit.i

:[132]
push.i [function]gml_Script____struct___255
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___255
call.i @@NewGMLObject@@(argc=1)
b [134]

> gml_Script____struct___254 (locals=0, argc=0)
:[133]
call.i @@SetStatic@@(argc=0)
pushi.e 371
pop.v.i self.x
pushi.e 37
pop.v.i self.y
pushref.i 16777336
pop.v.v self.theSprite
exit.i

:[134]
push.i [function]gml_Script____struct___254
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___254
call.i @@NewGMLObject@@(argc=1)
call.i @@NewGMLArray@@(argc=7)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.tokenChain
b [136]

> gml_Script____struct___261 (locals=0, argc=0)
:[135]
call.i @@SetStatic@@(argc=0)
pushi.e 426
pop.v.i self.x
pushi.e 252
pop.v.i self.y
exit.i

:[136]
push.i [function]gml_Script____struct___261
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___261
call.i @@NewGMLObject@@(argc=1)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.optionDead
b [138]

> gml_Script____struct___265 (locals=0, argc=0)
:[137]
call.i @@SetStatic@@(argc=0)
pushi.e 427
pop.v.i self.x
pushi.e 160
pop.v.i self.y
exit.i

:[138]
push.i [function]gml_Script____struct___265
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___265
call.i @@NewGMLObject@@(argc=1)
b [140]

> gml_Script____struct___264 (locals=0, argc=0)
:[139]
call.i @@SetStatic@@(argc=0)
pushi.e 427
pop.v.i self.x
pushi.e 140
pop.v.i self.y
exit.i

:[140]
push.i [function]gml_Script____struct___264
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___264
call.i @@NewGMLObject@@(argc=1)
b [142]

> gml_Script____struct___263 (locals=0, argc=0)
:[141]
call.i @@SetStatic@@(argc=0)
pushi.e 427
pop.v.i self.x
pushi.e 120
pop.v.i self.y
exit.i

:[142]
push.i [function]gml_Script____struct___263
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___263
call.i @@NewGMLObject@@(argc=1)
b [144]

> gml_Script____struct___262 (locals=0, argc=0)
:[143]
call.i @@SetStatic@@(argc=0)
pushi.e 427
pop.v.i self.x
pushi.e 100
pop.v.i self.y
exit.i

:[144]
push.i [function]gml_Script____struct___262
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___262
call.i @@NewGMLObject@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.platoniaFace
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 35
add.i.v
b [146]

> gml_Script____struct___269 (locals=0, argc=0)
:[145]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[146]
push.i [function]gml_Script____struct___269
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___269
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
add.i.v
b [148]

> gml_Script____struct___268 (locals=0, argc=0)
:[147]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[148]
push.i [function]gml_Script____struct___268
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___268
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 33
sub.i.v
b [150]

> gml_Script____struct___267 (locals=0, argc=0)
:[149]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[150]
push.i [function]gml_Script____struct___267
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___267
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 67
sub.i.v
b [152]

> gml_Script____struct___266 (locals=0, argc=0)
:[151]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[152]
push.i [function]gml_Script____struct___266
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___266
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.platoniaPrice
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 45
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 81
add.i.v
b [154]

> gml_Script____struct___273 (locals=0, argc=0)
:[153]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[154]
push.i [function]gml_Script____struct___273
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___273
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 45
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 16
add.i.v
b [156]

> gml_Script____struct___272 (locals=0, argc=0)
:[155]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[156]
push.i [function]gml_Script____struct___272
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___272
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 45
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 49
sub.i.v
b [158]

> gml_Script____struct___271 (locals=0, argc=0)
:[157]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[158]
push.i [function]gml_Script____struct___271
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___271
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 45
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 114
sub.i.v
b [160]

> gml_Script____struct___270 (locals=0, argc=0)
:[159]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[160]
push.i [function]gml_Script____struct___270
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___270
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.platoniaSlotTickerNbr
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 46
add.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 117
add.i.v
b [162]

> gml_Script____struct___277 (locals=0, argc=0)
:[161]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[162]
push.i [function]gml_Script____struct___277
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___277
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 52
add.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 38
add.i.v
b [164]

> gml_Script____struct___276 (locals=0, argc=0)
:[163]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[164]
push.i [function]gml_Script____struct___276
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___276
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 52
add.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 39
sub.i.v
b [166]

> gml_Script____struct___275 (locals=0, argc=0)
:[165]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[166]
push.i [function]gml_Script____struct___275
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___275
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 46
add.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 118
sub.i.v
b [168]

> gml_Script____struct___274 (locals=0, argc=0)
:[167]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[168]
push.i [function]gml_Script____struct___274
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___274
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.platoniaButtons
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 97
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 69
add.i.v
b [170]

> gml_Script____struct___281 (locals=0, argc=0)
:[169]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[170]
push.i [function]gml_Script____struct___281
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___281
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 97
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 4
add.i.v
b [172]

> gml_Script____struct___280 (locals=0, argc=0)
:[171]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[172]
push.i [function]gml_Script____struct___280
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___280
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 97
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 61
sub.i.v
b [174]

> gml_Script____struct___279 (locals=0, argc=0)
:[173]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[174]
push.i [function]gml_Script____struct___279
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___279
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 97
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 126
sub.i.v
b [176]

> gml_Script____struct___278 (locals=0, argc=0)
:[175]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[176]
push.i [function]gml_Script____struct___278
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___278
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.platoniaBgReveal
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 98
add.i.v
b [178]

> gml_Script____struct___285 (locals=0, argc=0)
:[177]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[178]
push.i [function]gml_Script____struct___285
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___285
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 33
add.i.v
b [180]

> gml_Script____struct___284 (locals=0, argc=0)
:[179]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[180]
push.i [function]gml_Script____struct___284
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___284
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 32
sub.i.v
b [182]

> gml_Script____struct___283 (locals=0, argc=0)
:[181]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[182]
push.i [function]gml_Script____struct___283
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___283
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 97
sub.i.v
b [184]

> gml_Script____struct___282 (locals=0, argc=0)
:[183]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[184]
push.i [function]gml_Script____struct___282
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___282
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.platoniaFaces
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 104
add.i.v
b [186]

> gml_Script____struct___287 (locals=0, argc=0)
:[185]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[186]
push.i [function]gml_Script____struct___287
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___287
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.monsterScene
pushi.e -9
push.v [stacktop]self.x
pushi.e 137
sub.i.v
b [188]

> gml_Script____struct___286 (locals=0, argc=0)
:[187]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[188]
push.i [function]gml_Script____struct___286
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___286
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.platoniaClock
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
b [202]

> gml_Script____struct___288 (locals=0, argc=0)
:[189]
call.i @@SetStatic@@(argc=0)
b [191]

> gml_Script____struct___289@___struct___288@my_data (locals=0, argc=0)
:[190]
call.i @@SetStatic@@(argc=0)
pushi.e 215
pop.v.i self.x
pushi.e 199
pop.v.i self.y
exit.i

:[191]
push.i [function]gml_Script____struct___289@___struct___288@my_data
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___289
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.bgExit
b [193]

> gml_Script____struct___290@___struct___288@my_data (locals=0, argc=0)
:[192]
call.i @@SetStatic@@(argc=0)
pushi.e 424
pop.v.i self.x
pushi.e 203
pop.v.i self.y
exit.i

:[193]
push.i [function]gml_Script____struct___290@___struct___288@my_data
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___290
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.bgForest
b [195]

> gml_Script____struct___291@___struct___288@my_data (locals=0, argc=0)
:[194]
call.i @@SetStatic@@(argc=0)
pushi.e 425
pop.v.i self.x
pushi.e 204
pop.v.i self.y
exit.i

:[195]
push.i [function]gml_Script____struct___291@___struct___288@my_data
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___291
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.bgCity
b [197]

> gml_Script____struct___292@___struct___288@my_data (locals=0, argc=0)
:[196]
call.i @@SetStatic@@(argc=0)
pushi.e 2
pop.v.i self.x
pushi.e 5
pop.v.i self.y
exit.i

:[197]
push.i [function]gml_Script____struct___292@___struct___288@my_data
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___292
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.doorExitOffset
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [199]

> gml_Script____struct___293@___struct___288@my_data (locals=0, argc=0)
:[198]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e 2
pop.v.i self.y
exit.i

:[199]
push.i [function]gml_Script____struct___293@___struct___288@my_data
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___293
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.doorForestOffset
pushi.e -15
pushi.e 1
push.v [array]self.argument
b [201]

> gml_Script____struct___294@___struct___288@my_data (locals=0, argc=0)
:[200]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e 1
pop.v.i self.y
exit.i

:[201]
push.i [function]gml_Script____struct___294@___struct___288@my_data
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___294
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.doorCityOffset
exit.i

:[202]
push.i [function]gml_Script____struct___288
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___288
call.i @@NewGMLObject@@(argc=3)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.mainSceneDoors
pushglb.v global.gameHeight
pushi.e 32
sub.i.v
b [204]

> gml_Script____struct___299 (locals=0, argc=0)
:[203]
call.i @@SetStatic@@(argc=0)
pushi.e 32
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[204]
push.i [function]gml_Script____struct___299
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___299
call.i @@NewGMLObject@@(argc=2)
pushglb.v global.gameHeight
pushi.e 64
sub.i.v
b [206]

> gml_Script____struct___298 (locals=0, argc=0)
:[205]
call.i @@SetStatic@@(argc=0)
pushi.e 32
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[206]
push.i [function]gml_Script____struct___298
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___298
call.i @@NewGMLObject@@(argc=2)
pushglb.v global.gameHeight
pushi.e 96
sub.i.v
b [208]

> gml_Script____struct___297 (locals=0, argc=0)
:[207]
call.i @@SetStatic@@(argc=0)
pushi.e 32
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[208]
push.i [function]gml_Script____struct___297
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___297
call.i @@NewGMLObject@@(argc=2)
pushglb.v global.gameHeight
pushi.e 128
sub.i.v
b [210]

> gml_Script____struct___296 (locals=0, argc=0)
:[209]
call.i @@SetStatic@@(argc=0)
pushi.e 32
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[210]
push.i [function]gml_Script____struct___296
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___296
call.i @@NewGMLObject@@(argc=2)
pushglb.v global.gameHeight
pushi.e 160
sub.i.v
b [212]

> gml_Script____struct___295 (locals=0, argc=0)
:[211]
call.i @@SetStatic@@(argc=0)
pushi.e 32
pop.v.i self.x
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.y
exit.i

:[212]
push.i [function]gml_Script____struct___295
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___295
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=5)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.menuBtn
b [214]

> gml_Script____struct___303 (locals=0, argc=0)
:[213]
call.i @@SetStatic@@(argc=0)
pushi.e 502
pop.v.i self.x
pushi.e 9
pop.v.i self.y
exit.i

:[214]
push.i [function]gml_Script____struct___303
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___303
call.i @@NewGMLObject@@(argc=1)
b [216]

> gml_Script____struct___302 (locals=0, argc=0)
:[215]
call.i @@SetStatic@@(argc=0)
pushi.e 438
pop.v.i self.x
pushi.e 9
pop.v.i self.y
exit.i

:[216]
push.i [function]gml_Script____struct___302
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___302
call.i @@NewGMLObject@@(argc=1)
b [218]

> gml_Script____struct___301 (locals=0, argc=0)
:[217]
call.i @@SetStatic@@(argc=0)
pushi.e 374
pop.v.i self.x
pushi.e 9
pop.v.i self.y
exit.i

:[218]
push.i [function]gml_Script____struct___301
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___301
call.i @@NewGMLObject@@(argc=1)
b [220]

> gml_Script____struct___300 (locals=0, argc=0)
:[219]
call.i @@SetStatic@@(argc=0)
pushi.e 310
pop.v.i self.x
pushi.e 9
pop.v.i self.y
exit.i

:[220]
push.i [function]gml_Script____struct___300
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___300
call.i @@NewGMLObject@@(argc=1)
call.i @@NewGMLArray@@(argc=4)
pushglb.v global.uiPos
pushi.e -9
pop.v.v [stacktop]self.gemSecured
b [232]

> gml_Script_counterStats (locals=0, argc=2)
:[221]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [223]

:[222]
pushi.e 0
pop.v.i builtin.argument0

:[223]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [225]

:[224]
pushi.e 0
pop.v.i builtin.argument1

:[225]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.leftChoice
push.v arg.argument1
pop.v.v builtin.rightChoice
b [228]

> gml_Script_anon@26797@counterStats@my_data (locals=0, argc=0)
:[226]
push.v builtin.leftChoice
ret.v

:[227]
exit.i

:[228]
push.i [function]gml_Script_anon@26797@counterStats@my_data
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_left_choice
b [231]

> gml_Script_anon@26861@counterStats@my_data (locals=0, argc=0)
:[229]
push.v builtin.rightChoice
ret.v

:[230]
exit.i

:[231]
push.i [function]gml_Script_anon@26861@counterStats@my_data
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_left_choice
exit.i

:[232]
push.i [function]gml_Script_counterStats
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.counterStats
popz.v

:[end]