:[0]
b [334]

> gml_Script_add_var_to_text (locals=3, argc=4)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument1

:[3]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e -1
pop.v.i builtin.argument2

:[5]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e -1
pop.v.i builtin.argument3

:[7]
push.v arg.argument1
pushi.e -1
cmp.i.v EQ
bf [9]

:[8]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.stack
pop.v.v arg.argument1

:[9]
push.v arg.argument2
pushi.e -1
cmp.i.v EQ
bf [11]

:[10]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.amount
pop.v.v arg.argument2

:[11]
push.v arg.argument3
pushi.e -1
cmp.i.v EQ
bf [13]

:[12]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.chance
pop.v.v arg.argument3

:[13]
push.v arg.argument0
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
cmp.v.v EQ
bt [255]

:[14]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.manant
cmp.v.v EQ
bt [255]

:[15]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dynamite
cmp.v.v EQ
bt [255]

:[16]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.nudge
cmp.v.v EQ
bt [255]

:[17]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.greenPill
cmp.v.v EQ
bt [255]

:[18]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.aliveBox
cmp.v.v EQ
bt [255]

:[19]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.deadBox
cmp.v.v EQ
bt [255]

:[20]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pearlyPerl
cmp.v.v EQ
bt [255]

:[21]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.radiance
cmp.v.v EQ
bt [255]

:[22]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.straw
cmp.v.v EQ
bt [255]

:[23]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.zlataLiquor
cmp.v.v EQ
bt [255]

:[24]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dragonSkin
cmp.v.v EQ
bt [255]

:[25]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.rabbitFoot
cmp.v.v EQ
bt [255]

:[26]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magnyfyingGlass
cmp.v.v EQ
bt [255]

:[27]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bandage
cmp.v.v EQ
bt [255]

:[28]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.motherCurse
cmp.v.v EQ
bt [255]

:[29]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bellRevolt
cmp.v.v EQ
bt [255]

:[30]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ratTail
cmp.v.v EQ
bt [255]

:[31]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ladybug
cmp.v.v EQ
bt [255]

:[32]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.starShapedNose
cmp.v.v EQ
bt [255]

:[33]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.slimeBall
cmp.v.v EQ
bt [255]

:[34]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dictatorship
cmp.v.v EQ
bt [255]

:[35]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badBlood
cmp.v.v EQ
bt [255]

:[36]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.babyBottle
cmp.v.v EQ
bt [255]

:[37]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldTicket
cmp.v.v EQ
bt [255]

:[38]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldCoin
cmp.v.v EQ
bt [255]

:[39]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.grapeDrink
cmp.v.v EQ
bt [255]

:[40]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherStone
cmp.v.v EQ
bt [255]

:[41]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.uniqueGift
cmp.v.v EQ
bt [255]

:[42]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hazelnut
cmp.v.v EQ
bt [255]

:[43]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tapeworm
cmp.v.v EQ
bt [255]

:[44]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pigeonEgg
cmp.v.v EQ
bt [255]

:[45]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hazardousTransport
cmp.v.v EQ
bt [257]

:[46]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.lute
cmp.v.v EQ
bt [259]

:[47]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pigeonHead
cmp.v.v EQ
bt [261]

:[48]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.armor
cmp.v.v EQ
bt [263]

:[49]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.damagedShell
cmp.v.v EQ
bt [263]

:[50]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.sock
cmp.v.v EQ
bt [263]

:[51]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.feverishDefence
cmp.v.v EQ
bt [263]

:[52]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.powerlessShot
cmp.v.v EQ
bt [265]

:[53]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.predatoryInstinct
cmp.v.v EQ
bt [265]

:[54]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.magicStick
cmp.v.v EQ
bt [267]

:[55]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pieceOfCloth
cmp.v.v EQ
bt [267]

:[56]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.peacefulMind
cmp.v.v EQ
bt [269]

:[57]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.finalThread
cmp.v.v EQ
bt [271]

:[58]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.sweetDreams
cmp.v.v EQ
bt [271]

:[59]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.bluePill
cmp.v.v EQ
bt [273]

:[60]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.valor
cmp.v.v EQ
bt [273]

:[61]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.plague
cmp.v.v EQ
bt [273]

:[62]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.blessed
cmp.v.v EQ
bt [273]

:[63]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldenSap
cmp.v.v EQ
bt [273]

:[64]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.mother
cmp.v.v EQ
bt [273]

:[65]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loyalty
cmp.v.v EQ
bt [273]

:[66]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.thorn
cmp.v.v EQ
bt [275]

:[67]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.stoneLife
cmp.v.v EQ
bt [275]

:[68]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.oracleBlessing
cmp.v.v EQ
bt [277]

:[69]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
cmp.v.v EQ
bt [279]

:[70]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.gnomish
cmp.v.v EQ
bt [279]

:[71]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.loniless
cmp.v.v EQ
bt [279]

:[72]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.philosopherToken
cmp.v.v EQ
bt [279]

:[73]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tocanToken
cmp.v.v EQ
bt [279]

:[74]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.vulture
cmp.v.v EQ
bt [279]

:[75]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.calculatedRisk
cmp.v.v EQ
bt [279]

:[76]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.foreverKing
cmp.v.v EQ
bt [279]

:[77]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.cloverToken
cmp.v.v EQ
bt [279]

:[78]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.beeeh
cmp.v.v EQ
bt [279]

:[79]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.necrotic
cmp.v.v EQ
bt [279]

:[80]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.maybeSheepLeft
cmp.v.v EQ
bt [281]

:[81]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.maybeSheepMushroom
cmp.v.v EQ
bt [281]

:[82]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.snailLeft
cmp.v.v EQ
bt [281]

:[83]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.snailRight
cmp.v.v EQ
bt [281]

:[84]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.snailMushroom
cmp.v.v EQ
bt [281]

:[85]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shoeshinerLeft
cmp.v.v EQ
bt [281]

:[86]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shoeshinerRight
cmp.v.v EQ
bt [281]

:[87]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.motherLeft2
cmp.v.v EQ
bt [281]

:[88]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.motherRight2
cmp.v.v EQ
bt [281]

:[89]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.innkeeperLeft
cmp.v.v EQ
bt [281]

:[90]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.innkeeperRight
cmp.v.v EQ
bt [281]

:[91]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dollyLeft
cmp.v.v EQ
bt [291]

:[92]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dollyRight
cmp.v.v EQ
bt [291]

:[93]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialDead
cmp.v.v EQ
bt [301]

:[94]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowEmptyLeft
cmp.v.v EQ
bt [301]

:[95]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hedgehogLeft
cmp.v.v EQ
bt [301]

:[96]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hedgehogMushroom
cmp.v.v EQ
bt [301]

:[97]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lostTimeWatcherRight
cmp.v.v EQ
bt [301]

:[98]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lamplighterLeft
cmp.v.v EQ
bt [301]

:[99]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shepherdessMushroom
cmp.v.v EQ
bt [303]

:[100]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.creepyRabbitRight
cmp.v.v EQ
bt [305]

:[101]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mushroomKnightRight
cmp.v.v EQ
bt [305]

:[102]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unicornLeft
cmp.v.v EQ
bt [305]

:[103]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unicornRight
cmp.v.v EQ
bt [305]

:[104]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairPileOfGem
cmp.v.v EQ
bt [305]

:[105]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemPurse
cmp.v.v EQ
bt [305]

:[106]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemBag
cmp.v.v EQ
bt [305]

:[107]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.funFairGemPurse2
cmp.v.v EQ
bt [305]

:[108]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.wildBoarLeft
cmp.v.v EQ
bt [305]

:[109]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.wildBoarRight
cmp.v.v EQ
bt [305]

:[110]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.wildBoarMushroom
cmp.v.v EQ
bt [305]

:[111]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mommyLeft
cmp.v.v EQ
bt [305]

:[112]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.watcherLeft
cmp.v.v EQ
bt [305]

:[113]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.watcherRight
cmp.v.v EQ
bt [305]

:[114]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.slimeLeft
cmp.v.v EQ
bt [305]

:[115]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.slimeRight
cmp.v.v EQ
bt [305]

:[116]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dogHandLeft
cmp.v.v EQ
bt [305]

:[117]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dogHandRight
cmp.v.v EQ
bt [305]

:[118]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dogHandMushroom
cmp.v.v EQ
bt [305]

:[119]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lostTimeWatcherLeft
cmp.v.v EQ
bt [305]

:[120]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.squirrelKingLeft
cmp.v.v EQ
bt [305]

:[121]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.squirrelKingRight
cmp.v.v EQ
bt [305]

:[122]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.squirrelKingMushroom
cmp.v.v EQ
bt [305]

:[123]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.oracleLeft
cmp.v.v EQ
bt [305]

:[124]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.oracleRight
cmp.v.v EQ
bt [305]

:[125]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowLeft
cmp.v.v EQ
bt [305]

:[126]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shepherdessLeft
cmp.v.v EQ
bt [305]

:[127]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shepherdessRight
cmp.v.v EQ
bt [305]

:[128]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.babayagaStop
cmp.v.v EQ
bt [305]

:[129]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hunterLeft
cmp.v.v EQ
bt [305]

:[130]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hunterRight
cmp.v.v EQ
bt [305]

:[131]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hunterMushroom
cmp.v.v EQ
bt [305]

:[132]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialDamageLeft
cmp.v.v EQ
bt [305]

:[133]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialDamageRight
cmp.v.v EQ
bt [305]

:[134]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.magicStumpRight
cmp.v.v EQ
bt [305]

:[135]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.magicStumpLeft
cmp.v.v EQ
bt [305]

:[136]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialVoteLeft
cmp.v.v EQ
bt [305]

:[137]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialVoteRight
cmp.v.v EQ
bt [305]

:[138]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.tutorialReplayCenter
cmp.v.v EQ
bt [305]

:[139]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.starMoleRight
cmp.v.v EQ
bt [305]

:[140]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.starMoleLeft
cmp.v.v EQ
bt [305]

:[141]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hedgehogRight
cmp.v.v EQ
bt [305]

:[142]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.bellBoyLeft
cmp.v.v EQ
bt [305]

:[143]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.bellBoyRight
cmp.v.v EQ
bt [305]

:[144]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueRight
cmp.v.v EQ
bt [305]

:[145]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.bankerLeft
cmp.v.v EQ
bt [305]

:[146]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.operaGhostLeft
cmp.v.v EQ
bt [305]

:[147]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.operaGhostRight
cmp.v.v EQ
bt [305]

:[148]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.ocularistLeft
cmp.v.v EQ
bt [305]

:[149]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.ocularistRight
cmp.v.v EQ
bt [305]

:[150]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lamplighterRight
cmp.v.v EQ
bt [305]

:[151]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOnLeft
cmp.v.v EQ
bt [305]

:[152]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOnRight
cmp.v.v EQ
bt [305]

:[153]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOffLeft
cmp.v.v EQ
bt [305]

:[154]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lampostOffRight
cmp.v.v EQ
bt [305]

:[155]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.luckyChestLeft
cmp.v.v EQ
bt [305]

:[156]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.libarianRight
cmp.v.v EQ
bt [305]

:[157]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dictatorLeft
cmp.v.v EQ
bt [305]

:[158]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dictatorRight
cmp.v.v EQ
bt [305]

:[159]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.revolutionaryLeft
cmp.v.v EQ
bt [305]

:[160]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.carriageMadManLeft
cmp.v.v EQ
bt [305]

:[161]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.carriageMadManRight
cmp.v.v EQ
bt [305]

:[162]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sandwichManRight
cmp.v.v EQ
bt [305]

:[163]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueLeft
cmp.v.v EQ
bt [305]

:[164]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.creepyRabbitMushroom
cmp.v.v EQ
bt [305]

:[165]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frogMushroom
cmp.v.v EQ
bt [305]

:[166]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.starMoleMushroom
cmp.v.v EQ
bt [305]

:[167]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.luckyChestMushroom
cmp.v.v EQ
bt [305]

:[168]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.magicStumpMushroom
cmp.v.v EQ
bt [305]

:[169]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.motherMushroom
cmp.v.v EQ
bt [305]

:[170]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.watcherMushroom
cmp.v.v EQ
bt [305]

:[171]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.lostTimeWatcherMushroom
cmp.v.v EQ
bt [305]

:[172]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.maybeSheepRight
cmp.v.v EQ
bt [305]

:[173]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.motherLeft1
cmp.v.v EQ
bt [305]

:[174]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.motherRight1
cmp.v.v EQ
bt [305]

:[175]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.motherLeft3
cmp.v.v EQ
bt [305]

:[176]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.motherRight3
cmp.v.v EQ
bt [305]

:[177]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.twoHeadedFawnLeft
cmp.v.v EQ
bt [305]

:[178]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unconsolableFawnLeft
cmp.v.v EQ
bt [305]

:[179]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unconsolableFawnRight
cmp.v.v EQ
bt [305]

:[180]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unconsolableFawnMushroom
cmp.v.v EQ
bt [305]

:[181]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sheepRight
cmp.v.v EQ
bt [305]

:[182]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueForestLeft
cmp.v.v EQ
bt [305]

:[183]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.graveyardKeeperLeft
cmp.v.v EQ
bt [305]

:[184]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.costumerRight
cmp.v.v EQ
bt [305]

:[185]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keyMasterRight
cmp.v.v EQ
bt [305]

:[186]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keyMasterLeft
cmp.v.v EQ
bt [305]

:[187]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catDeadRight
cmp.v.v EQ
bt [305]

:[188]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catAliveRight
cmp.v.v EQ
bt [305]

:[189]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pupperteerRight
cmp.v.v EQ
bt [305]

:[190]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pigeonLeft
cmp.v.v EQ
bt [305]

:[191]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.prisonerChestLeft
cmp.v.v EQ
bt [307]

:[192]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.prisonerChestRight
cmp.v.v EQ
bt [307]

:[193]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.creepyRabbitLeft
cmp.v.v EQ
bt [307]

:[194]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keeperMushroom
cmp.v.v EQ
bt [307]

:[195]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.slimeMushroom
cmp.v.v EQ
bt [307]

:[196]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.costumerLeft
cmp.v.v EQ
bt [307]

:[197]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catAliveLeft
cmp.v.v EQ
bt [307]

:[198]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catDeadLeft
cmp.v.v EQ
bt [307]

:[199]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keeperLeft
cmp.v.v EQ
bt [309]

:[200]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sandwichManLeft
cmp.v.v EQ
bt [309]

:[201]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.keeperRight
cmp.v.v EQ
bt [311]

:[202]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.luckyChestRight
cmp.v.v EQ
bt [313]

:[203]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hybridLeft
cmp.v.v EQ
bt [313]

:[204]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.minstrelLeft
cmp.v.v EQ
bt [315]

:[205]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sleepParalysisLeft
cmp.v.v EQ
bt [317]

:[206]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sleepParalysisRight
cmp.v.v EQ
bt [317]

:[207]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.statueForestRight
cmp.v.v EQ
bt [317]

:[208]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sleepParalysisMushroom
cmp.v.v EQ
bt [317]

:[209]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.libarianLeft
cmp.v.v EQ
bt [317]

:[210]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.twoHeadedFawnRight
cmp.v.v EQ
bt [317]

:[211]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.twoHeadedFawnMushroom
cmp.v.v EQ
bt [317]

:[212]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pupperteerLeft
cmp.v.v EQ
bt [317]

:[213]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.butcherLeft
cmp.v.v EQ
bt [319]

:[214]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.butcherRight
cmp.v.v EQ
bt [319]

:[215]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.rattenLeft
cmp.v.v EQ
bt [321]

:[216]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.madScientistRight
cmp.v.v EQ
bt [321]

:[217]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.souillonLeft
cmp.v.v EQ
bt [321]

:[218]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.hybridMushroom
cmp.v.v EQ
bt [321]

:[219]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mommyMushroom
cmp.v.v EQ
bt [321]

:[220]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.guardRight
cmp.v.v EQ
bt [321]

:[221]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.fountainSorrowEmptyMushroom
cmp.v.v EQ
bt [323]

:[222]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mushroomKnightLeft
cmp.v.v EQ
bt [325]

:[223]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mushroomKnightMushroom
cmp.v.v EQ
bt [325]

:[224]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.madScientistLeft
cmp.v.v EQ
bt [325]

:[225]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.rattenRight
cmp.v.v EQ
bt [325]

:[226]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.animalBinderRight
cmp.v.v EQ
bt [325]

:[227]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.animalBinderLeft
cmp.v.v EQ
bt [325]

:[228]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.animalBinderMushroom
cmp.v.v EQ
bt [325]

:[229]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sheepLeft
cmp.v.v EQ
bt [325]

:[230]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.dollyMushroom
cmp.v.v EQ
bt [325]

:[231]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.mommyRight
cmp.v.v EQ
bt [325]

:[232]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.pigeonRight
cmp.v.v EQ
bt [325]

:[233]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.oracleMushroom
cmp.v.v EQ
bt [325]

:[234]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.sheepMushroom
cmp.v.v EQ
bt [325]

:[235]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frogLeft
cmp.v.v EQ
bt [325]

:[236]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frogRight
cmp.v.v EQ
bt [325]

:[237]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.townCrierRight
cmp.v.v EQ
bt [325]

:[238]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.townCrierLeft
cmp.v.v EQ
bt [325]

:[239]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.graveyardKeeperRight
cmp.v.v EQ
bt [325]

:[240]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.beggarLeft
cmp.v.v EQ
bt [325]

:[241]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.beggarRight
cmp.v.v EQ
bt [325]

:[242]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.souillonRight
cmp.v.v EQ
bt [325]

:[243]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.guardLeft
cmp.v.v EQ
bt [325]

:[244]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catUndeadLeft
cmp.v.v EQ
bt [325]

:[245]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.catUndeadRight
cmp.v.v EQ
bt [325]

:[246]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.frozenStatueRight
cmp.v.v EQ
bt [325]

:[247]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.commonPot
cmp.v.v EQ
bt [325]

:[248]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.unicornMushroom
cmp.v.v EQ
bt [327]

:[249]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem1
cmp.v.v EQ
bt [329]

:[250]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem2
cmp.v.v EQ
bt [329]

:[251]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem3
cmp.v.v EQ
bt [329]

:[252]
dup.v 0
pushglb.v global.cards
pushi.e -9
push.v [stacktop]self.shopItem4
cmp.v.v EQ
bt [329]

:[253]
b [331]

:[254]
b [333]

:[255]
push.v arg.argument1
pushi.e -15
pushi.e 0
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[256]
b [333]

:[257]
push.v arg.argument1
pushi.e -15
pushi.e 1
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
pushi.e -15
pushi.e 0
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=3)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[258]
b [333]

:[259]
push.v arg.argument1
pushi.e -15
pushi.e 0
push.v [array]self.argument2
mul.v.v
pushi.e 1
add.i.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[260]
b [333]

:[261]
push.v arg.argument1
pushi.e -15
pushi.e 2
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
pushi.e -15
pushi.e 1
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
pushi.e -15
pushi.e 0
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[262]
b [333]

:[263]
push.v arg.argument1
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument1
pushi.e -15
pushi.e 0
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=3)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[264]
b [333]

:[265]
push.v arg.argument1
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument1
pushi.e -15
pushi.e 1
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
pushi.e -15
pushi.e 0
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[266]
b [333]

:[267]
push.v arg.argument1
push.v arg.argument3
call.i gml_Script_get_stacking_percentage(argc=2)
call.i round(argc=1)
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[268]
b [333]

:[269]
pushi.e -15
pushi.e 0
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument1
push.v arg.argument3
call.i gml_Script_get_stacking_percentage(argc=2)
call.i round(argc=1)
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=3)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[270]
b [333]

:[271]
push.v arg.argument1
pushi.e -15
pushi.e 1
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument1
pushi.e -15
pushi.e 0
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=3)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[272]
b [333]

:[273]
pushi.e -15
pushi.e 1
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
pushi.e -15
pushi.e 0
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=3)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[274]
b [333]

:[275]
push.v arg.argument1
pushi.e -15
pushi.e 0
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument3
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=3)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[276]
b [333]

:[277]
push.v arg.argument1
pushi.e -15
pushi.e 1
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument3
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument1
pushi.e -15
pushi.e 0
push.v [array]self.argument2
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=4)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[278]
b [333]

:[279]
pushi.e -15
pushi.e 0
push.v [array]self.argument2
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[280]
b [333]

:[281]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
pop.v.v local._text
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 1
cmp.i.v EQ
bf [283]

:[282]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 0
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
b [289]

:[283]
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 2
cmp.i.v EQ
bf [285]

:[284]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 1
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 1
pushac.e
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#2"@4439
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
b [289]

:[285]
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 3
cmp.i.v EQ
bf [287]

:[286]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 2
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 2
pushac.e
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#2"@4439
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 2
pushac.e
pushi.e 2
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#3"@4440
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
b [289]

:[287]
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 4
cmp.i.v EQ
bf [289]

:[288]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 3
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 3
pushac.e
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#2"@4439
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 3
pushac.e
pushi.e 2
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#3"@4440
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 3
pushac.e
pushi.e 3
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#4"@4441
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text

:[289]
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
pushloc.v local._text
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[290]
b [333]

:[291]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
pop.v.v local._text
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 1
cmp.i.v EQ
bf [293]

:[292]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 0
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
b [299]

:[293]
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 2
cmp.i.v EQ
bf [295]

:[294]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 1
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 1
pushac.e
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#2"@4439
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
b [299]

:[295]
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 3
cmp.i.v EQ
bf [297]

:[296]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 2
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 2
pushac.e
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#2"@4439
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 2
pushac.e
pushi.e 2
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#3"@4440
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
b [299]

:[297]
pushref.i 22
pushi.e -9
push.v [stacktop]self.nbrFightersAtCardDraw
pushi.e 4
cmp.i.v EQ
bf [299]

:[298]
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 3
pushac.e
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#1"@4437
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 3
pushac.e
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#2"@4439
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 3
pushac.e
pushi.e 2
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#3"@4440
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text
push.v local._text
push.s "#\n"@4435
add.s.v
pop.v.v local._text
push.v local._text
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument1
pushi.e 3
pushac.e
pushi.e 3
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "player._damageForMultiplePlayers2#{0}#4"@4441
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
add.v.v
pop.v.v local._text

:[299]
push.v local._text
push.s "#"@3571
add.s.v
pop.v.v local._text
pushloc.v local._text
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[300]
b [333]

:[301]
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[302]
b [333]

:[303]
pushi.e -15
pushi.e 1
push.v [arraypushaf]self.argument2
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 1
push.v [arraypushaf]self.argument2
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [arraypushaf]self.argument2
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "#{0}#{1}#{2}#{3}"@4443
conv.s.v
call.i @@string@@(argc=5)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[304]
b [333]

:[305]
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
call.i round(argc=1)
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[306]
b [333]

:[307]
pushi.e -15
pushi.e 1
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[308]
b [333]

:[309]
pushi.e -15
pushi.e 1
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i round(argc=1)
push.s "#{0}#{1}#{2}"@4444
conv.s.v
call.i @@string@@(argc=4)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[310]
b [333]

:[311]
pushi.e -15
pushi.e 1
push.v [arraypushaf]self.argument2
pushi.e 1
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 1
push.v [arraypushaf]self.argument2
pushi.e 0
pushaf.e
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "#{0}#{1}#{2}"@4444
conv.s.v
call.i @@string@@(argc=4)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[312]
b [333]

:[313]
pushi.e -15
pushi.e 1
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument1
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i round(argc=1)
push.s "#{0}#{1}#{2}"@4444
conv.s.v
call.i @@string@@(argc=4)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[314]
b [333]

:[315]
pushi.e -15
pushi.e 1
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i round(argc=1)
push.s "#{0}#{1}#{2}"@4444
conv.s.v
call.i @@string@@(argc=4)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[316]
b [333]

:[317]
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i round(argc=1)
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[318]
b [333]

:[319]
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.v arg.argument0
pushi.e -9
pushi.e 0
push.v [array]self.damageTimes
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i round(argc=1)
push.s "#{0}#{1}#{2}"@4444
conv.s.v
call.i @@string@@(argc=4)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[320]
b [333]

:[321]
pushi.e -15
pushi.e 0
push.v [array]self.argument1
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i round(argc=1)
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[322]
b [333]

:[323]
pushi.e -15
pushi.e 0
push.v [array]self.argument3
call.i round(argc=1)
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[324]
b [333]

:[325]
pushi.e -15
pushi.e 0
push.v [array]self.argument1
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "#{0}"@4429
conv.s.v
call.i @@string@@(argc=2)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[326]
b [333]

:[327]
pushi.e -15
pushi.e 1
push.v [array]self.argument1
pushglb.v global.bloodMoonMultiplier
mul.v.v
pushi.e -15
pushi.e 0
push.v [array]self.argument2
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[328]
b [333]

:[329]
push.v arg.argument0
pushi.e -9
pushi.e 0
push.v [array]self.actionType
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_LocPreprocessor(argc=1)
pop.v.v local._name
pushloc.v local._name
pushi.e -15
pushi.e 0
push.v [array]self.argument1
pushglb.v global.bloodMoonMultiplier
mul.v.v
push.s "#{0}#{1}"@4442
conv.s.v
call.i @@string@@(argc=3)
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string_concat(argc=2)
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[330]
b [333]

:[331]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.desc
call.i string(argc=1)
pop.v.v local.$$$$temp$$$$
push.v local.$$$$temp$$$$
ret.v

:[332]
b [333]

:[333]
popz.v
exit.i

:[334]
push.i [function]gml_Script_add_var_to_text
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.add_var_to_text
popz.v

:[end]