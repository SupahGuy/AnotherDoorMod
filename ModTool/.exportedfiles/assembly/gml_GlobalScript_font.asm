:[0]
b [2]

> gml_Script_change_font_size (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v global.fontSize
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.fontSize
push.s "size"@3225
conv.s.v
push.s "font"@5411
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_change_font_size
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.change_font_size
popz.v
b [50]

> gml_Script_g_change_font_style (locals=1, argc=1)
:[3]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushglb.v global.fontStyle
pop.v.v builtin.argument0

:[5]
push.v arg.argument0
pop.v.v global.fontStyle
push.d 1.25
pop.v.d global.fontScaleTitle
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
b [8]

:[7]
pushi.e 1
conv.i.v

:[8]
pop.v.v global.fontShadowAlpha
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
b [11]

:[10]
pushi.e 1
conv.i.v

:[11]
pop.v.v global.fontBorderThickness
pushglb.v global.fntLatinPixelart
pop.v.v global.fontOpenEnded
pushbltn.v builtin.undefined
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushbltn.v builtin.undefined
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushbltn.v builtin.undefined
push.s "ftNbrBig"@5422
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushbltn.v builtin.undefined
push.s "ftNbrSmall"@5423
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [23]

:[12]
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [14]

:[13]
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_delete(argc=1)
popz.v

:[14]
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [16]

:[15]
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_delete(argc=1)
popz.v

:[16]
pushglb.v global.currentLanguage
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.s "ftFusionJPTitleSh"@5428
conv.s.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftFusionJPSh"@5429
conv.s.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushglb.v global.fntJPixelart
pop.v.v global.fontOpenEnded
b [22]

:[18]
pushglb.v global.currentLanguage
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
push.s "ftFusionSCTitleSh"@5431
conv.s.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftFusionSCSh"@5432
conv.s.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushglb.v global.fntCPixelart
pop.v.v global.fontOpenEnded
b [22]

:[20]
pushglb.v global.currentLanguage
pushi.e 7
cmp.i.v EQ
bf [22]

:[21]
push.s "ftPixeloidSansSh"@5434
conv.s.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftPixeloidSansSh"@5434
conv.s.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushglb.v global.fntCYPixelart
pop.v.v global.fontOpenEnded

:[22]
pushi.e 1
pop.v.i global.fontScaleTitle
pushglb.v global.zoom
pop.v.v global.fontScaleOpenEnded
b [37]

:[23]
pushglb.v global.currentLanguage
pushi.e 3
cmp.i.v EQ
bt [25]

:[24]
pushglb.v global.currentLanguage
pushi.e 4
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [32]

:[27]
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
not.b
bf [29]

:[28]
push.s "ftNotoSansSCSh"@5426
conv.s.v
push.s "ftNotoSansSC"@5436
conv.s.v
call.i gml_Script_scribble_font_duplicate(argc=2)
popz.v
pushglb.v global.fontScaleCjk
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[29]
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [31]

:[30]
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_delete(argc=1)
popz.v

:[31]
push.s "ftNotoSansSCSh"@5426
conv.s.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftNotoSansSCSh"@5426
conv.s.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftNotoSansSCSh"@5426
conv.s.v
push.s "ftNbrBig"@5422
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftNotoSansSCSh"@5426
conv.s.v
push.s "ftNbrSmall"@5423
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushglb.v global.fontScaleCjk
pop.v.v global.fontScaleOpenEnded
pushglb.v global.fntCjk
pop.v.v global.fontOpenEnded
b [37]

:[32]
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
not.b
bf [34]

:[33]
push.s "ftNotoSansSh"@5424
conv.s.v
push.s "ftNotoSans"@5440
conv.s.v
call.i gml_Script_scribble_font_duplicate(argc=2)
popz.v
pushglb.v global.fontScaleLatin
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[34]
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [36]

:[35]
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_delete(argc=1)
popz.v

:[36]
push.s "ftNotoSansSh"@5424
conv.s.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftNotoSansSh"@5424
conv.s.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftNotoSansSh"@5424
conv.s.v
push.s "ftNbrBig"@5422
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
push.s "ftNotoSansSh"@5424
conv.s.v
push.s "ftNbrSmall"@5423
conv.s.v
call.i gml_Script_scribble_font_set_remap(argc=2)
popz.v
pushglb.v global.fontScaleLatin
pop.v.v global.fontScaleOpenEnded
pushglb.v global.fntLatin
pop.v.v global.fontOpenEnded

:[37]
call.i gml_Script_g_font_update_offset(argc=0)
popz.v
pushref.i 54
pushi.e -9
pushenv [47]

:[38]
pushglb.v global.fontStyle
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [43]

:[39]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [44]

:[40]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [45]

:[41]
b [43]

:[42]
b [46]

:[43]
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
b [46]

:[44]
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
b [46]

:[45]
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
b [46]

:[46]
popz.v
pushloc.v local._textFontValue
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.textFontValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element
push.s "settings._languageName"@5450
conv.s.v
call.i gml_Script_scribble(argc=1)
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.langLabel
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element

:[47]
popenv [38]
call.i gml_Script_g_update_text(argc=0)
popz.v
pushref.i 54
pushi.e -9
pushenv [49]

:[48]
call.i @@This@@(argc=0)
push.v builtin.build_settings
callv.v 0
popz.v

:[49]
popenv [48]
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.fontStyle
push.s "style"@5454
conv.s.v
push.s "font"@5411
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
exit.i

:[50]
push.i [function]gml_Script_g_change_font_style
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_change_font_style
popz.v
b [65]

> gml_Script_g_setup_lang (locals=0, argc=0)
:[51]
pushglb.v global.currentLanguage
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [62]

:[52]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [62]

:[53]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [62]

:[54]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [62]

:[55]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [62]

:[56]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [62]

:[57]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [62]

:[58]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [63]

:[59]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [63]

:[60]
b [62]

:[61]
b [64]

:[62]
pushi.e 1
pop.v.i global.dialogueTextSpeed
b [64]

:[63]
push.d 0.5
pop.v.d global.dialogueTextSpeed
b [64]

:[64]
popz.v
exit.i

:[65]
push.i [function]gml_Script_g_setup_lang
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_setup_lang
popz.v
b [72]

> gml_Script_g_switch_lang (locals=0, argc=1)
:[66]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i builtin.argument0

:[68]
push.v arg.argument0
call.i sign(argc=1)
conv.v.b
bf [70]

:[69]
pushglb.v global.currentLanguage
push.v arg.argument0
add.v.v
pushi.e 9
mod.i.v
pop.v.v global.currentLanguage
b [71]

:[70]
pushglb.v global.currentLanguage
push.v arg.argument0
add.v.v
pushi.e 9
mod.i.v
pushi.e 9
add.i.v
pushi.e 9
mod.i.v
pop.v.v global.currentLanguage

:[71]
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.currentLanguage
push.s "currentLanguage"@5427
conv.s.v
push.s "language"@5460
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
call.i gml_Script_set_language(argc=0)
popz.v
call.i gml_Script_g_setup_lang(argc=0)
popz.v
call.i gml_Script_g_change_font_style(argc=0)
popz.v
exit.i

:[72]
push.i [function]gml_Script_g_switch_lang
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_switch_lang
popz.v
b [106]

> gml_Script_rescale_font (locals=2, argc=0)
:[73]
call.i gml_Script_g_get_scale_factor_font(argc=0)
pop.v.v local._scale
pushloc.v local._scale
pushi.e -9
push.v [stacktop]self.cjk
pop.v.v global.fontScaleCjk
pushloc.v local._scale
pushi.e -9
push.v [stacktop]self.latin
pop.v.v global.fontScaleLatin
pushglb.v global.fontStyle
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushglb.v global.zoom
pop.v.v global.fontScaleOpenEnded
b [81]

:[75]
pushglb.v global.currentLanguage
pushi.e 3
cmp.i.v EQ
bt [77]

:[76]
pushglb.v global.currentLanguage
pushi.e 4
cmp.i.v EQ
b [78]

:[77]
push.e 1

:[78]
bf [80]

:[79]
pushglb.v global.fontScaleCjk
pop.v.v global.fontScaleOpenEnded
b [81]

:[80]
pushglb.v global.fontScaleLatin
pop.v.v global.fontScaleOpenEnded

:[81]
pushglb.v global.zoom
pushglb.v global.zoomPrevious
div.v.v
pop.v.v local._diffZoom
pushloc.v local._diffZoom
call.i sign(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [105]

:[82]
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [84]

:[83]
pushloc.v local._diffZoom
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[84]
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [86]

:[85]
pushloc.v local._diffZoom
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[86]
push.s "ftPixeloidSansSh"@5434
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [88]

:[87]
pushloc.v local._diffZoom
push.s "ftPixeloidSansSh"@5434
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[88]
push.s "ftFusionJPSh"@5429
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [90]

:[89]
pushloc.v local._diffZoom
push.s "ftFusionJPSh"@5429
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[90]
push.s "ftFusionSCSh"@5432
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [92]

:[91]
pushloc.v local._diffZoom
push.s "ftFusionSCSh"@5432
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[92]
push.s "ftFusionJPTitleSh"@5428
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [94]

:[93]
pushloc.v local._diffZoom
push.s "ftFusionJPTitleSh"@5428
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[94]
push.s "ftFusionSCTitleSh"@5431
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [96]

:[95]
pushloc.v local._diffZoom
push.s "ftFusionSCTitleSh"@5431
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[96]
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [98]

:[97]
pushloc.v local._diffZoom
push.s "ftNotoSansSh"@5424
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[98]
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [100]

:[99]
pushloc.v local._diffZoom
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[100]
push.s "ftNbrBig"@5422
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [102]

:[101]
pushloc.v local._diffZoom
push.s "ftNbrBig"@5422
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[102]
push.s "ftNbrSmall"@5423
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [104]

:[103]
pushloc.v local._diffZoom
push.s "ftNbrSmall"@5423
conv.s.v
call.i gml_Script_scribble_font_scale(argc=2)
popz.v

:[104]
call.i gml_Script_g_font_update_offset(argc=0)
popz.v
call.i gml_Script_g_update_text(argc=0)
popz.v

:[105]
exit.i

:[106]
push.i [function]gml_Script_rescale_font
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.rescale_font
popz.v
b [114]

> gml_Script_g_font_update_offset (locals=0, argc=0)
:[107]
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [109]

:[108]
pushi.e -2
pushglb.v global.zoom
mul.v.i
pushi.e 0
conv.i.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v
pushi.e -2
pushglb.v global.zoom
mul.v.i
pushi.e 1
conv.i.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v
pushi.e -2
pushglb.v global.zoom
mul.v.i
pushi.e 2
conv.i.v
push.s "ftMonobitSh"@5421
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v

:[109]
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [111]

:[110]
push.d -1.5
pushglb.v global.zoom
mul.v.d
pushi.e 0
conv.i.v
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v
push.d -0.5
pushglb.v global.zoom
mul.v.d
pushi.e 1
conv.i.v
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v
push.d 1.5
pushglb.v global.zoom
mul.v.d
pushi.e 2
conv.i.v
push.s "ftNotoSansSCSh"@5426
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v

:[111]
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
bf [113]

:[112]
pushi.e -2
pushglb.v global.zoom
mul.v.i
pushi.e 0
conv.i.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v
pushi.e -2
pushglb.v global.zoom
mul.v.i
pushi.e 1
conv.i.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v
pushi.e -2
pushglb.v global.zoom
mul.v.i
pushi.e 2
conv.i.v
push.s "ftAlkhemikalSh"@5419
conv.s.v
call.i gml_Script_scribble_font_set_valign_offset(argc=3)
popz.v

:[113]
exit.i

:[114]
push.i [function]gml_Script_g_font_update_offset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_font_update_offset
popz.v
b [137]

> gml_Script_g_update_text (locals=0, argc=0)
:[115]
call.i gml_Script_scribble_refresh_everything(argc=0)
popz.v
pushref.i 16
pushi.e -9
pushenv [117]

:[116]
call.i @@This@@(argc=0)
push.v builtin.update_txt
callv.v 0
popz.v

:[117]
popenv [116]
pushref.i 61
pushi.e -9
pushenv [120]

:[118]
push.v builtin.effect
pushi.e -1
cmp.i.v EQ
bf [120]

:[119]
call.i @@This@@(argc=0)
push.v builtin.updateTxt
callv.v 0
popz.v

:[120]
popenv [118]
pushref.i 14
pushi.e -9
pushenv [122]

:[121]
call.i @@This@@(argc=0)
push.v builtin.updateTxt
callv.v 0
popz.v

:[122]
popenv [121]
pushref.i 33
pushi.e -9
pushenv [124]

:[123]
call.i @@This@@(argc=0)
push.v builtin.update_label
callv.v 0
popz.v

:[124]
popenv [123]
pushref.i 43
pushi.e -9
pushenv [126]

:[125]
call.i @@This@@(argc=0)
push.v builtin.update_level_name
callv.v 0
popz.v

:[126]
popenv [125]
pushref.i 19
pushi.e -9
pushenv [128]

:[127]
call.i @@This@@(argc=0)
push.v builtin.update_text_gem
callv.v 0
popz.v

:[128]
popenv [127]
pushref.i 6
pushi.e -9
pushenv [130]

:[129]
call.i @@This@@(argc=0)
push.v builtin.update_desc
callv.v 0
popz.v

:[130]
popenv [129]
pushref.i 36
pushi.e -9
pushenv [132]

:[131]
call.i @@This@@(argc=0)
push.v builtin.update_label
callv.v 0
popz.v

:[132]
popenv [131]
pushref.i 19
pushi.e -9
pushenv [134]

:[133]
call.i @@This@@(argc=0)
push.v builtin.update_hp_txt
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.update_text_gem
callv.v 0
popz.v

:[134]
popenv [133]
push.s "playersManager"@4935
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [136]

:[135]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.update_text
callv.v 0
popz.v

:[136]
exit.i

:[137]
push.i [function]gml_Script_g_update_text
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_update_text
popz.v
b [142]

> gml_Script_g_get_scale_factor_font (locals=8, argc=0)
:[138]
pushi.e 32
pop.v.i local._originalHighresSize
pushi.e 6
pop.v.i local._baseFontSizeLatin
pushi.e 7
pop.v.i local._baseFontSizeCJK
pushi.e 1
pop.v.i local._baseZoom
pushloc.v local._baseFontSizeLatin
pushglb.v global.zoom
mul.v.v
pop.v.v local._pixelSizeTargetLatin
pushloc.v local._baseFontSizeCJK
pushglb.v global.zoom
mul.v.v
pop.v.v local._pixelSizeTargetCJK
pushloc.v local._pixelSizeTargetLatin
pushloc.v local._originalHighresSize
div.v.v
pop.v.v local._scaleFactorLatin
pushloc.v local._pixelSizeTargetCJK
pushloc.v local._originalHighresSize
div.v.v
pop.v.v local._scaleFactorCJK
pushloc.v local._scaleFactorCJK
pushloc.v local._scaleFactorLatin
b [140]

> gml_Script____struct___76@g_get_scale_factor_font@font (locals=0, argc=0)
:[139]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.latin
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.cjk
exit.i

:[140]
push.i [function]gml_Script____struct___76@g_get_scale_factor_font@font
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___76
call.i @@NewGMLObject@@(argc=3)
ret.v

:[141]
exit.i

:[142]
push.i [function]gml_Script_g_get_scale_factor_font
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_get_scale_factor_font
popz.v

:[end]