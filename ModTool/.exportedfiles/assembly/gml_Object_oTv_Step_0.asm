; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [2]

:[1]
push.v builtin.theCallbackTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.callbackSwitchScreen
callv.v 0
popz.v

:[2]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [4]

:[3]
call.i @@This@@(argc=0)
push.v builtin.reset_var_to_draw
callv.v 0
popz.v

:[4]
push.v builtin.screenState
push.l 16
cmp.l.v EQ
bf [8]

:[5]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [7]

:[6]
pushref.i 16777948
pop.v.v builtin.spriteToDraw

:[7]
b [388]

:[8]
push.v builtin.screenState
push.l 18
cmp.l.v EQ
bf [12]

:[9]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [11]

:[10]
pushref.i 16777947
pop.v.v builtin.spriteToDraw

:[11]
b [388]

:[12]
push.v builtin.screenState
push.l 17
cmp.l.v EQ
bf [16]

:[13]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [15]

:[14]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw

:[15]
b [388]

:[16]
push.v builtin.screenState
push.l 8
cmp.l.v EQ
bf [20]

:[17]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [19]

:[18]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pop.v.v builtin.colorToDraw

:[19]
b [388]

:[20]
push.v builtin.screenState
push.l 14
cmp.l.v EQ
bf [24]

:[21]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [23]

:[22]
push.v builtin.number
pop.v.v builtin.textLabel

:[23]
b [388]

:[24]
push.v builtin.screenState
push.l 9
cmp.l.v EQ
bf [28]

:[25]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [27]

:[26]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
pop.v.v builtin.colorToDraw
push.s "global._error"@11484
pop.v.s builtin.textLabel

:[27]
b [388]

:[28]
push.v builtin.screenState
push.l 10
cmp.l.v EQ
bf [32]

:[29]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [31]

:[30]
push.v builtin.textTitleFont
pop.v.v builtin.textFont
push.s "player._p#1"@11485
pop.v.s builtin.textLabel
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
pop.v.v builtin.colorToDraw

:[31]
b [388]

:[32]
push.v builtin.screenState
push.l 11
cmp.l.v EQ
bf [36]

:[33]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [35]

:[34]
push.v builtin.textTitleFont
pop.v.v builtin.textFont
push.s "player._p#2"@11486
pop.v.s builtin.textLabel
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pop.v.v builtin.colorToDraw

:[35]
b [388]

:[36]
push.v builtin.screenState
push.l 12
cmp.l.v EQ
bf [40]

:[37]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [39]

:[38]
push.v builtin.textTitleFont
pop.v.v builtin.textFont
push.s "player._p#3"@11487
pop.v.s builtin.textLabel
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
pop.v.v builtin.colorToDraw

:[39]
b [388]

:[40]
push.v builtin.screenState
push.l 13
cmp.l.v EQ
bf [44]

:[41]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [43]

:[42]
push.v builtin.textTitleFont
pop.v.v builtin.textFont
push.s "player._p#4"@11488
pop.v.s builtin.textLabel
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pop.v.v builtin.colorToDraw

:[43]
b [388]

:[44]
push.v builtin.screenState
push.l 22
cmp.l.v EQ
bf [48]

:[45]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [47]

:[46]
pushref.i 16777934
pushref.i 16777933
pushref.i 16777932
pushref.i 16777931
pushref.i 16777930
pushref.i 16777929
call.i choose(argc=6)
pop.v.v builtin.spriteToDraw

:[47]
b [388]

:[48]
push.v builtin.screenState
push.l 20
cmp.l.v EQ
bf [62]

:[49]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [61]

:[50]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pop.v.v builtin.colorToDraw
push.v builtin.number
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward
callv.v 0
pop.v.v builtin.textLabel
pushi.e 2
pop.v.i builtin.textScale
b [57]

:[52]
push.v builtin.number
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v NEQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw
pushref.i 16777276
pop.v.v builtin.spriteToDraw

:[57]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward
callv.v 0
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
pushi.e 0
pop.v.i builtin.numberOfGemParticles
b [60]

:[59]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward
callv.v 0
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.gemRewardMax
call.i min(argc=2)
pop.v.v local._reward
pushi.e -10
conv.i.v
pushi.e -60
conv.i.v
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.gemRewardMax
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.gemRewardMin
pushloc.v local._reward
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.numberOfGemParticles

:[60]
push.v builtin.numberOfGemParticles
push.v builtin.pTvGemParticle
push.v builtin.tvEmmiter
push.v builtin.tvParticlesSys
call.i part_emitter_stream(argc=4)
popz.v

:[61]
b [388]

:[62]
push.v builtin.screenState
push.l 21
cmp.l.v EQ
bf [73]

:[63]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [72]

:[64]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
pop.v.v builtin.colorToDraw
push.v builtin.number
pushi.e 4
cmp.i.v EQ
bf [66]

:[65]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward_next
callv.v 0
pop.v.v builtin.textLabel
pushi.e 2
pop.v.i builtin.textScale
b [71]

:[66]
push.v builtin.number
pushi.e 3
cmp.i.v EQ
bf [68]

:[67]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v NEQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw
pushref.i 16777281
pop.v.v builtin.spriteToDraw

:[71]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_gem_reward_next
callv.v 0
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.gemRewardMax
call.i min(argc=2)
pop.v.v local._reward
pushi.e -10
conv.i.v
pushi.e -60
conv.i.v
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.gemRewardMax
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.gemRewardMin
pushloc.v local._reward
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.numberOfGemParticles
push.v builtin.numberOfGemParticles
push.v builtin.pTvGemParticle
push.v builtin.tvEmmiter
push.v builtin.tvParticlesSys
call.i part_emitter_stream(argc=4)
popz.v

:[72]
b [388]

:[73]
push.v builtin.screenState
push.l 23
cmp.l.v EQ
bf [77]

:[74]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [76]

:[75]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey2
call.i choose(argc=1)
pop.v.v builtin.colorToDraw
pushref.i 16777914
pop.v.v builtin.spriteToDraw

:[76]
b [388]

:[77]
push.v builtin.screenState
push.l 24
cmp.l.v EQ
bf [95]

:[78]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [94]

:[79]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue2
pop.v.v builtin.colorToDraw
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [87]

:[80]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [90]

:[81]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [90]

:[82]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [90]

:[83]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [91]

:[84]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [92]

:[85]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [92]

:[86]
b [93]

:[87]
pushglb.v global.playersManager
pushi.e 0
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [89]

:[88]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.spriteHead
pop.v.v builtin.spriteToDraw

:[89]
b [93]

:[90]
pushref.i 16777914
pop.v.v builtin.spriteToDraw
b [93]

:[91]
pushref.i 16777915
pop.v.v builtin.spriteToDraw
b [93]

:[92]
pushref.i 16777941
pop.v.v builtin.spriteToDraw
b [93]

:[93]
popz.v

:[94]
b [388]

:[95]
push.v builtin.screenState
push.l 25
cmp.l.v EQ
bf [113]

:[96]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [112]

:[97]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pop.v.v builtin.colorToDraw
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [105]

:[98]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [108]

:[99]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [108]

:[100]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [108]

:[101]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [109]

:[102]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [110]

:[103]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [110]

:[104]
b [111]

:[105]
pushglb.v global.playersManager
pushi.e 1
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [107]

:[106]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.spriteHead
pop.v.v builtin.spriteToDraw

:[107]
b [111]

:[108]
pushref.i 16777914
pop.v.v builtin.spriteToDraw
b [111]

:[109]
pushref.i 16777915
pop.v.v builtin.spriteToDraw
b [111]

:[110]
pushref.i 16777942
pop.v.v builtin.spriteToDraw
b [111]

:[111]
popz.v

:[112]
b [388]

:[113]
push.v builtin.screenState
push.l 26
cmp.l.v EQ
bf [131]

:[114]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [130]

:[115]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green2
pop.v.v builtin.colorToDraw
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [123]

:[116]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [126]

:[117]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [126]

:[118]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [126]

:[119]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [127]

:[120]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [128]

:[121]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [128]

:[122]
b [129]

:[123]
pushglb.v global.playersManager
pushi.e 2
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [125]

:[124]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.spriteHead
pop.v.v builtin.spriteToDraw

:[125]
b [129]

:[126]
pushref.i 16777914
pop.v.v builtin.spriteToDraw
b [129]

:[127]
pushref.i 16777915
pop.v.v builtin.spriteToDraw
b [129]

:[128]
pushref.i 16777943
pop.v.v builtin.spriteToDraw
b [129]

:[129]
popz.v

:[130]
b [388]

:[131]
push.v builtin.screenState
push.l 27
cmp.l.v EQ
bf [149]

:[132]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [148]

:[133]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pop.v.v builtin.colorToDraw
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [141]

:[134]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [144]

:[135]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [144]

:[136]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [144]

:[137]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [145]

:[138]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [146]

:[139]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [146]

:[140]
b [147]

:[141]
pushglb.v global.playersManager
pushi.e 3
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [143]

:[142]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.spriteHead
pop.v.v builtin.spriteToDraw

:[143]
b [147]

:[144]
pushref.i 16777914
pop.v.v builtin.spriteToDraw
b [147]

:[145]
pushref.i 16777915
pop.v.v builtin.spriteToDraw
b [147]

:[146]
pushref.i 16777944
pop.v.v builtin.spriteToDraw
b [147]

:[147]
popz.v

:[148]
b [388]

:[149]
push.v builtin.screenState
push.l 28
cmp.l.v EQ
bf [167]

:[150]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [166]

:[151]
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [160]

:[152]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [161]

:[153]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [161]

:[154]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [162]

:[155]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [162]

:[156]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [163]

:[157]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [163]

:[158]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [164]

:[159]
b [165]

:[160]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue5
pop.v.v builtin.colorToDraw
b [165]

:[161]
pushref.i 16777425
pop.v.v builtin.spriteToDraw
b [165]

:[162]
pushref.i 16777427
pop.v.v builtin.spriteToDraw
b [165]

:[163]
pushref.i 16777428
pop.v.v builtin.spriteToDraw
b [165]

:[164]
pushref.i 16777426
pop.v.v builtin.spriteToDraw
b [165]

:[165]
popz.v

:[166]
b [388]

:[167]
push.v builtin.screenState
push.l 29
cmp.l.v EQ
bf [185]

:[168]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [184]

:[169]
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [178]

:[170]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [179]

:[171]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [179]

:[172]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [180]

:[173]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [180]

:[174]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [181]

:[175]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [181]

:[176]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [182]

:[177]
b [183]

:[178]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red2
pop.v.v builtin.colorToDraw
b [183]

:[179]
pushref.i 16777797
pop.v.v builtin.spriteToDraw
b [183]

:[180]
pushref.i 16777798
pop.v.v builtin.spriteToDraw
b [183]

:[181]
push.v builtin.objHeight
pop.v.v builtin.spriteY
pushref.i 16777800
pop.v.v builtin.spriteToDraw
b [183]

:[182]
pushref.i 16777799
pop.v.v builtin.spriteToDraw
b [183]

:[183]
popz.v

:[184]
b [388]

:[185]
push.v builtin.screenState
push.l 31
cmp.l.v EQ
bf [203]

:[186]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [202]

:[187]
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [196]

:[188]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [197]

:[189]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [197]

:[190]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [198]

:[191]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [198]

:[192]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [199]

:[193]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [199]

:[194]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [200]

:[195]
b [201]

:[196]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw
b [201]

:[197]
pushref.i 16778013
pop.v.v builtin.spriteToDraw
b [201]

:[198]
pushref.i 16778014
pop.v.v builtin.spriteToDraw
b [201]

:[199]
pushref.i 16778015
pop.v.v builtin.spriteToDraw
b [201]

:[200]
pushref.i 16778012
pop.v.v builtin.spriteToDraw
b [201]

:[201]
popz.v

:[202]
b [388]

:[203]
push.v builtin.screenState
push.l 30
cmp.l.v EQ
bf [221]

:[204]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [220]

:[205]
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [214]

:[206]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [215]

:[207]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [215]

:[208]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [216]

:[209]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [216]

:[210]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [217]

:[211]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [217]

:[212]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [218]

:[213]
b [219]

:[214]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue3
pop.v.v builtin.colorToDraw
b [219]

:[215]
pushref.i 16777269
pop.v.v builtin.spriteToDraw
b [219]

:[216]
pushref.i 16777266
pop.v.v builtin.spriteToDraw
b [219]

:[217]
pushref.i 16777267
pop.v.v builtin.spriteToDraw
b [219]

:[218]
pushref.i 16777268
pop.v.v builtin.spriteToDraw
b [219]

:[219]
popz.v

:[220]
b [388]

:[221]
push.v builtin.screenState
push.l 32
cmp.l.v EQ
bf [225]

:[222]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [224]

:[223]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw
pushref.i 16777964
pop.v.v builtin.spriteToDraw

:[224]
b [388]

:[225]
push.v builtin.screenState
push.l 33
cmp.l.v EQ
bf [243]

:[226]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [242]

:[227]
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [236]

:[228]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [237]

:[229]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [237]

:[230]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [238]

:[231]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [238]

:[232]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [239]

:[233]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [239]

:[234]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [240]

:[235]
b [241]

:[236]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple4
pop.v.v builtin.colorToDraw
b [241]

:[237]
pushref.i 16777627
pop.v.v builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw
b [241]

:[238]
pushref.i 16777628
pop.v.v builtin.spriteToDraw
b [241]

:[239]
pushref.i 16777625
pop.v.v builtin.spriteToDraw
b [241]

:[240]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pop.v.v builtin.colorToDraw
pushref.i 16777626
pop.v.v builtin.spriteToDraw
b [241]

:[241]
popz.v

:[242]
b [388]

:[243]
push.v builtin.screenState
push.l 34
cmp.l.v EQ
bf [247]

:[244]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [246]

:[245]
pushref.i 16777727
pop.v.v builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v builtin.colorToDraw
push.v builtin.objHeight
pop.v.v builtin.spriteY

:[246]
b [388]

:[247]
push.v builtin.screenState
push.l 35
cmp.l.v EQ
bf [251]

:[248]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [250]

:[249]
pushref.i 16777727
pop.v.v builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v builtin.colorToDraw
push.v builtin.objHeight
pop.v.v builtin.spriteY

:[250]
b [388]

:[251]
push.v builtin.screenState
push.l 36
cmp.l.v EQ
bf [255]

:[252]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [254]

:[253]
pushref.i 16777727
pop.v.v builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v builtin.colorToDraw
push.v builtin.objHeight
pop.v.v builtin.spriteY

:[254]
b [388]

:[255]
push.v builtin.screenState
push.l 37
cmp.l.v EQ
bf [259]

:[256]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [258]

:[257]
pushref.i 16777727
pop.v.v builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v builtin.colorToDraw
push.v builtin.objHeight
pop.v.v builtin.spriteY

:[258]
b [388]

:[259]
push.v builtin.screenState
push.l 38
cmp.l.v EQ
bf [263]

:[260]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [262]

:[261]
pushref.i 16777727
pop.v.v builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v builtin.colorToDraw
push.v builtin.objHeight
pop.v.v builtin.spriteY

:[262]
b [388]

:[263]
push.v builtin.screenState
push.l 39
cmp.l.v EQ
bf [267]

:[264]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [266]

:[265]
pushref.i 16777728
pop.v.v builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v builtin.colorToDraw
push.v builtin.objHeight
pop.v.v builtin.spriteY

:[266]
b [388]

:[267]
push.v builtin.screenState
push.l 40
cmp.l.v EQ
bf [275]

:[268]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [274]

:[269]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey6
pop.v.v builtin.colorToDraw
pushglb.v global.monsterList
pushi.e -9
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_current_door
callv.v 0
conv.v.i
push.v [array]self.encounters
pop.v.v local._monsters
pushloc.v local._monsters
call.i array_length(argc=1)
pop.v.v local._monsterLength
push.v builtin.number
pushloc.v local._monsterLength
pushi.e 1
sub.i.v
cmp.v.v LTE
bf [273]

:[270]
pushi.e -7
push.v builtin.number
conv.v.i
push.v [array]self._monsters
pop.v.v local._monsterName
pushloc.v local._monsterName
pushglb.v global.monsters
call.i variable_instance_exists(argc=2)
conv.v.b
bf [272]

:[271]
pushloc.v local._monsterName
pushglb.v global.monsters
call.i variable_instance_get(argc=2)
pop.v.v local._monster
pushloc.v local._monster
pushi.e -9
push.v [stacktop]self.spriteName
pop.v.v local._monsterSpriteName
pushloc.v local._monsterSpriteName
push.s "spr{0}Idle"@8657
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteToDraw

:[272]
b [274]

:[273]
push.l 22
pop.v.l builtin.screenStateNext

:[274]
b [388]

:[275]
push.v builtin.screenState
push.l 7
cmp.l.v EQ
bf [279]

:[276]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [278]

:[277]
call.i @@This@@(argc=0)
push.v builtin.update_monsters_number
callv.v 0
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw

:[278]
b [388]

:[279]
push.v builtin.screenState
push.l 6
cmp.l.v EQ
bf [283]

:[280]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [282]

:[281]
pushref.i 16777911
pop.v.v builtin.spriteToDraw
push.v builtin.objWidth
pushref.i 16777911
call.i sprite_get_width(argc=1)
div.v.v
pop.v.v builtin.image_xscale
push.v builtin.objHeight
pushref.i 16777911
call.i sprite_get_width(argc=1)
div.v.v
pop.v.v builtin.image_yscale
pushi.e 0
pop.v.i builtin.spriteX
pushi.e 0
pop.v.i builtin.spriteY

:[282]
b [388]

:[283]
push.v builtin.screenState
push.l 5
cmp.l.v EQ
bf [296]

:[284]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [295]

:[285]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue4
pop.v.v builtin.colorToDraw
pushi.e 1
pop.v.b builtin.typistActivated
push.v builtin.typist
pushi.e 0
conv.i.v
pushi.e 4
pushglb.v global.dialogueTextSpeed
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.in
callv.v 2
popz.v
pushglb.v global.playersCount
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
pop.v.v local._argsTxt
pushi.e 0
pop.v.i local._i

:[286]
pushloc.v local._i
pushi.e 4
cmp.i.v LT
bf [294]

:[287]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [292]

:[288]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [290]

:[289]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_name
callv.v 1
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
pushloc.v local._argsTxt
call.i string_concat(argc=2)
pop.v.v local._argsTxt
b [291]

:[290]
push.s "#Ok"@11497
conv.s.v
pushloc.v local._argsTxt
call.i string_concat(argc=2)
pop.v.v local._argsTxt

:[291]
b [293]

:[292]
push.s "#???"@11498
conv.s.v
pushloc.v local._argsTxt
call.i string_concat(argc=2)
pop.v.v local._argsTxt

:[293]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [286]

:[294]
pushloc.v local._argsTxt
push.s "secret._tvSetup{0}"@11499
conv.s.v
call.i @@string@@(argc=2)
pop.v.v builtin.textLabel
pushi.e 0
pop.v.i builtin.textAlignH
pushi.e 0
pop.v.i builtin.textAlignV

:[295]
b [388]

:[296]
push.v builtin.screenState
push.l 4
cmp.l.v EQ
bf [313]

:[297]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [312]

:[298]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [312]

:[299]
push.v builtin.number
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [307]

:[300]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [308]

:[301]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [308]

:[302]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [309]

:[303]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [309]

:[304]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [310]

:[305]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [310]

:[306]
b [311]

:[307]
pushref.i 16777935
pop.v.v builtin.spriteToDraw
b [311]

:[308]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pop.v.v builtin.colorToDraw
pushref.i 16777946
pop.v.v builtin.spriteToDraw
b [311]

:[309]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pop.v.v builtin.colorToDraw
pushref.i 16777938
pop.v.v builtin.spriteToDraw
b [311]

:[310]
pushref.i 16777936
pop.v.v builtin.spriteToDraw
b [311]

:[311]
popz.v

:[312]
b [388]

:[313]
push.v builtin.screenState
push.l 41
cmp.l.v EQ
bf [335]

:[314]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [334]

:[315]
push.v builtin.number
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [323]

:[316]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [327]

:[317]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [331]

:[318]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [331]

:[319]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [331]

:[320]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [332]

:[321]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [332]

:[322]
b [333]

:[323]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v EQ
bf [325]

:[324]
pushref.i 16777910
pop.v.v builtin.spriteToDraw
b [326]

:[325]
pushref.i 16777276
pop.v.v builtin.spriteToDraw

:[326]
b [333]

:[327]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v EQ
bf [329]

:[328]
pushref.i 16777910
pop.v.v builtin.spriteToDraw
b [330]

:[329]
pushref.i 16777281
pop.v.v builtin.spriteToDraw

:[330]
b [333]

:[331]
pushref.i 16777908
pop.v.v builtin.spriteToDraw
b [333]

:[332]
pushref.i 16777909
pop.v.v builtin.spriteToDraw
b [333]

:[333]
popz.v

:[334]
b [388]

:[335]
push.v builtin.screenState
push.l 3
cmp.l.v EQ
bf [352]

:[336]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [351]

:[337]
push.v builtin.number
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [345]

:[338]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [345]

:[339]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [346]

:[340]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [346]

:[341]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [347]

:[342]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [348]

:[343]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [349]

:[344]
b [350]

:[345]
pushref.i 16777951
pop.v.v builtin.spriteToDraw
b [350]

:[346]
pushref.i 16777950
pop.v.v builtin.spriteToDraw
b [350]

:[347]
pushref.i 16777919
pop.v.v builtin.spriteToDraw
b [350]

:[348]
pushref.i 16777949
pop.v.v builtin.spriteToDraw
b [350]

:[349]
pushref.i 16777952
pop.v.v builtin.spriteToDraw
b [350]

:[350]
popz.v

:[351]
b [388]

:[352]
push.v builtin.screenState
push.l 2
cmp.l.v EQ
bf [367]

:[353]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [366]

:[354]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue4
pop.v.v builtin.colorToDraw
push.v builtin.number
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [362]

:[355]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [362]

:[356]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [362]

:[357]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [363]

:[358]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [363]

:[359]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [364]

:[360]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [364]

:[361]
b [365]

:[362]
pushref.i 16777916
pop.v.v builtin.spriteToDraw
b [365]

:[363]
pushref.i 16777917
pop.v.v builtin.spriteToDraw
b [365]

:[364]
pushref.i 16777945
pop.v.v builtin.spriteToDraw
b [365]

:[365]
popz.v

:[366]
b [388]

:[367]
push.v builtin.screenState
push.l 0
cmp.l.v EQ
bf [378]

:[368]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [377]

:[369]
push.v builtin.number
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [373]

:[370]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [374]

:[371]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [375]

:[372]
b [376]

:[373]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
pop.v.v builtin.colorToDraw
pushref.i 16777906
pop.v.v builtin.spriteToDraw
b [376]

:[374]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
pop.v.v builtin.colorToDraw
pushref.i 16777939
pop.v.v builtin.spriteToDraw
b [376]

:[375]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
pop.v.v builtin.colorToDraw
pushref.i 16777940
pop.v.v builtin.spriteToDraw
b [376]

:[376]
popz.v

:[377]
b [388]

:[378]
push.v builtin.screenState
push.l 1
cmp.l.v EQ
bf [388]

:[379]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [388]

:[380]
push.v builtin.number
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [384]

:[381]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [385]

:[382]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [386]

:[383]
b [387]

:[384]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
pop.v.v builtin.colorToDraw
pushref.i 16777906
pop.v.v builtin.spriteToDraw
pushi.e -1
pop.v.i builtin.image_xscale
b [387]

:[385]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
pop.v.v builtin.colorToDraw
pushref.i 16777939
pop.v.v builtin.spriteToDraw
pushi.e -1
pop.v.i builtin.image_xscale
b [387]

:[386]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.green1
pop.v.v builtin.colorToDraw
pushref.i 16777907
pop.v.v builtin.spriteToDraw
pushi.e -1
pop.v.i builtin.image_xscale
b [387]

:[387]
popz.v

:[388]
push.v builtin.screenStatePrev
push.v builtin.screenState
cmp.v.v NEQ
bf [394]

:[389]
push.v builtin.screenStatePrev
push.l 22
cmp.l.v EQ
bf [390]

:[390]
push.v builtin.textLabel
push.s ""@61
cmp.s.v NEQ
bf [392]

:[391]
push.v builtin.number
push.s "oTv{0}"@11500
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.textLabel
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
push.i 16777215
conv.i.v
push.v builtin.textFont
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.blend
pushi.e 1
conv.i.v
push.v builtin.textColor
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.align
push.v builtin.textAlignV
push.v builtin.textAlignH
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
push.v builtin.textScale
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
push.v builtin.objWidth
pushi.e 12
sub.i.v
dup.e 2 8
callv.v 1
pop.v.v builtin.textToDraw

:[392]
push.v builtin.spriteToDraw
pushi.e -1
cmp.i.v NEQ
bf [394]

:[393]
push.v builtin.spriteToDraw
pop.v.v builtin.sprite_index

:[394]
push.v builtin.screenState
push.l 24
cmp.l.v EQ
bt [398]

:[395]
push.v builtin.screenState
push.l 25
cmp.l.v EQ
bt [398]

:[396]
push.v builtin.screenState
push.l 26
cmp.l.v EQ
bt [398]

:[397]
push.v builtin.screenState
push.l 27
cmp.l.v EQ
b [399]

:[398]
push.e 1

:[399]
bf [409]

:[400]
push.v builtin.number
pushi.e 6
cmp.i.v EQ
bf [402]

:[401]
pushbltn.v builtin.current_time
pushi.e 250
conv.i.d
div.d.v
call.i cos(argc=1)
call.i sign(argc=1)
pushi.e 1
mul.i.v
pop.v.v builtin.image_xscale
b [408]

:[402]
push.v builtin.number
pushi.e 4
cmp.i.v EQ
bt [405]

:[403]
push.v builtin.number
pushi.e 1
cmp.i.v EQ
bt [405]

:[404]
push.v builtin.number
pushi.e 5
cmp.i.v EQ
b [406]

:[405]
push.e 1

:[406]
bf [408]

:[407]
pushi.e -1
pop.v.i builtin.image_xscale

:[408]
b [420]

:[409]
push.v builtin.screenState
push.l 2
cmp.l.v EQ
bf [413]

:[410]
push.v builtin.number
pushi.e 7
cmp.i.v EQ
bf [412]

:[411]
pushi.e -1
pop.v.i builtin.image_xscale

:[412]
b [420]

:[413]
push.v builtin.screenState
push.l 4
cmp.l.v EQ
bf [420]

:[414]
push.v builtin.number
pushi.e 4
cmp.i.v EQ
bt [417]

:[415]
push.v builtin.number
pushi.e 3
cmp.i.v EQ
bt [417]

:[416]
push.v builtin.number
pushi.e 7
cmp.i.v EQ
b [418]

:[417]
push.e 1

:[418]
bf [420]

:[419]
pushi.e -1
pop.v.i builtin.image_xscale

:[420]
push.v builtin.screenState
pop.v.v builtin.screenStatePrev
push.v builtin.screenStateNext
pop.v.v builtin.screenState

:[end]