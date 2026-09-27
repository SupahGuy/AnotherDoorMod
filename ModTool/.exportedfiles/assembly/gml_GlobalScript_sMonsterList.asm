:[0]
b [247]

> gml_Script_c_monster_list (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.monstersForest
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.monstersCity
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.monstersForestHeal
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.monstersGem
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.encounters
pushi.e 1
pop.v.i builtin.totalBiomeCount
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=11)
pop.v.v builtin.allDoorLength
push.v builtin.allDoorLength
call.i array_length(argc=1)
push.v builtin.totalBiomeCount
mul.v.v
pop.v.v builtin.totalNbrDoor
push.v builtin.totalNbrDoor
push.v builtin.totalBiomeCount
div.v.v
call.i round(argc=1)
pop.v.v builtin.equalPartDoor
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.tokenList
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.cloverPosition
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.moonPosition
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.moonType
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.encounters
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.encounterNbrByDoor
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.newBiomePosition
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.moonDisabledPosition
b [3]

> gml_Script_anon@596@c_monster_list@sMonsterList (locals=0, argc=0)
:[2]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.moonPosition
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.moonType
exit.i

:[3]
push.i [function]gml_Script_anon@596@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_moon
b [17]

> gml_Script_anon@743@c_monster_list@sMonsterList (locals=5, argc=0)
:[4]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.moonDisabledPosition
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.encounters
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.encounterNbrByDoor
pushi.e 0
pop.v.i local._b

:[5]
pushloc.v local._b
push.v builtin.totalBiomeCount
cmp.v.v LT
bf [10]

:[6]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._nbrOfMonsters
push.v builtin.allDoorLength
call.i array_length(argc=1)
pushi.e 0
conv.i.v
push.v builtin.allDoorLength
pushi.e 0
conv.i.v
pushloc.v local._nbrOfMonsters
call.i array_copy(argc=5)
popz.v

:[7]
pushloc.v local._nbrOfMonsters
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushloc.v local._nbrOfMonsters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._pickNumberRandom
pushi.e -7
pushloc.v local._pickNumberRandom
conv.v.i
push.v [array]self._nbrOfMonsters
push.v builtin.encounterNbrByDoor
call.i array_push(argc=2)
popz.v
pushi.e 1
conv.i.v
pushloc.v local._pickNumberRandom
pushloc.v local._nbrOfMonsters
call.i array_delete(argc=3)
popz.v
b [7]

:[9]
push.v local._b
push.e 1
add.i.v
pop.v.v local._b
b [5]

:[10]
pushi.e 0
pop.v.i local._i

:[11]
pushloc.v local._i
push.v builtin.encounterNbrByDoor
call.i array_length(argc=1)
cmp.v.v LT
bf [16]

:[12]
call.i @@NewGMLArray@@(argc=0)
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.encounters
pushi.e 0
pop.v.i local._j

:[13]
pushloc.v local._j
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounterNbrByDoor
cmp.v.v LT
bf [15]

:[14]
pushi.e -1
conv.i.v
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounters
call.i array_push(argc=2)
popz.v
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [13]

:[15]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [11]

:[16]
exit.i

:[17]
push.i [function]gml_Script_anon@743@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_list
b [19]

> gml_Script_anon@1764@c_monster_list@sMonsterList (locals=0, argc=0)
:[18]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.cloverPosition
exit.i

:[19]
push.i [function]gml_Script_anon@1764@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_clover
b [21]

> gml_Script_anon@1824@c_monster_list@sMonsterList (locals=0, argc=0)
:[20]
pushi.e 0
pop.v.b global.commonPotUsed
exit.i

:[21]
push.i [function]gml_Script_anon@1824@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_cards
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.newBiomePosition
b [23]

> gml_Script_anon@1985@c_monster_list@sMonsterList (locals=0, argc=2)
:[22]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.percentageCompletion
push.v arg.argument1
pop.v.v builtin.isNewBiome
exit.i

:[23]
push.i [function]gml_Script_anon@1985@c_monster_list@sMonsterList
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
pop.v.v builtin.doorCompletion
b [39]

> gml_Script_anon@2163@c_monster_list@sMonsterList (locals=5, argc=0)
:[24]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.newBiomePosition
pushi.e 0
pop.v.i local._biomeCompletion
pushi.e 0
pop.v.i local._i

:[25]
pushloc.v local._i
push.v builtin.encounterNbrByDoor
call.i array_length(argc=1)
cmp.v.v LT
bf [36]

:[26]
pushi.e 0
conv.b.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.equalPartDoor
pushi.e 0
conv.i.v
pushloc.v local._i
push.v builtin.equalPartDoor
mod.v.v
call.i gml_Script_map_value(argc=5)
call.i round(argc=1)
push.v builtin.doorCompletion
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._struct
pushloc.v local._i
push.v builtin.equalPartDoor
mod.v.v
pushi.e 0
cmp.i.v EQ
bf [30]

:[27]
pushloc.v local._i
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pushloc.v local._struct
pushi.e -9
pop.v.i [stacktop]self.percentageCompletion
b [30]

:[29]
pushi.e 100
pushloc.v local._struct
pushi.e -9
pop.v.i [stacktop]self.percentageCompletion
pushi.e 1
pushloc.v local._struct
pushi.e -9
pop.v.b [stacktop]self.isNewBiome

:[30]
pushloc.v local._struct
push.v builtin.newBiomePosition
call.i array_push(argc=2)
popz.v
pushloc.v local._i
push.v builtin.equalPartDoor
mod.v.v
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushloc.v local._i
pushi.e 0
cmp.i.v NEQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v local._biomeCompletion
push.e 1
add.i.v
pop.v.v local._biomeCompletion

:[35]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [25]

:[36]
pushglb.v global.isTutorialDone
conv.v.b
not.b
bf [38]

:[37]
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.v builtin.doorCompletion
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._structTutoDoor
pushloc.v local._structTutoDoor
pushi.e 0
conv.i.v
push.v builtin.newBiomePosition
call.i array_insert(argc=3)
popz.v

:[38]
pushi.e 0
conv.b.v
pushi.e 100
conv.i.v
push.v builtin.doorCompletion
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._structLastDoor
pushloc.v local._structLastDoor
push.v builtin.newBiomePosition
call.i array_push(argc=2)
popz.v
exit.i

:[39]
push.i [function]gml_Script_anon@2163@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.calculate_door_completion
b [53]

> gml_Script_anon@3417@c_monster_list@sMonsterList (locals=7, argc=0)
:[40]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
call.i gml_Script_choose_rng(argc=2)
pop.v.v local._willHaveLover
pushi.e -1
pop.v.i local._loverLeftPosition
pushi.e -1
pop.v.i local._loverRightPosition
pushloc.v local._willHaveLover
conv.v.b
bf [44]

:[41]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.tokenChain
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._loverLeftPosition
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.tokenChain
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._loverRightPosition

:[42]
pushloc.v local._loverLeftPosition
pushloc.v local._loverRightPosition
cmp.v.v EQ
bf [44]

:[43]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.tokenChain
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._loverRightPosition
b [42]

:[44]
push.l 15
conv.l.v
push.l 13
conv.l.v
push.l 12
conv.l.v
push.l 11
conv.l.v
push.l 20
conv.l.v
push.l 18
conv.l.v
push.l 9
conv.l.v
push.l 10
conv.l.v
push.l 4
conv.l.v
push.l 3
conv.l.v
call.i @@NewGMLArray@@(argc=10)
pop.v.v local._everyToken
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.tokenList
pushi.e 0
pop.v.i local._i

:[45]
pushloc.v local._i
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.tokenChain
call.i array_length(argc=1)
cmp.v.v LT
bf [52]

:[46]
pushloc.v local._i
pushloc.v local._loverLeftPosition
cmp.v.v EQ
bf [48]

:[47]
push.l 7
pop.v.l local._theTokenType
b [51]

:[48]
pushloc.v local._i
pushloc.v local._loverRightPosition
cmp.v.v EQ
bf [50]

:[49]
push.l 8
pop.v.l local._theTokenType
b [51]

:[50]
pushloc.v local._everyToken
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._arrayIndex
pushi.e -7
pushloc.v local._arrayIndex
conv.v.i
push.v [array]self._everyToken
pop.v.v local._theTokenType
pushi.e 1
conv.i.v
pushloc.v local._arrayIndex
pushloc.v local._everyToken
call.i array_delete(argc=3)
popz.v

:[51]
pushloc.v local._theTokenType
push.v builtin.tokenList
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [45]

:[52]
exit.i

:[53]
push.i [function]gml_Script_anon@3417@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.generate_token
b [100]

> gml_Script_anon@5547@c_monster_list@sMonsterList (locals=11, argc=4)
:[54]
pushi.e -1
pop.v.i local._afterDoorNbr
pushi.e -1
pop.v.i local._afterSlotNbr
push.v arg.argument3
pushi.e 1
sub.i.v
pop.v.v local._i

:[55]
pushloc.v local._i
push.v arg.argument2
cmp.v.v GTE
bf [64]

:[56]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._j

:[57]
pushloc.v local._j
pushi.e 0
cmp.i.v GTE
bf [61]

:[58]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._j
conv.v.i
pushaf.e
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.structName
cmp.v.v EQ
bf [60]

:[59]
pushloc.v local._j
pop.v.v local._afterSlotNbr
pushloc.v local._i
pop.v.v local._afterDoorNbr
b [61]

:[60]
push.v local._j
push.e 1
sub.i.v
pop.v.v local._j
b [57]

:[61]
pushloc.v local._afterDoorNbr
pushi.e -1
cmp.i.v NEQ
bf [63]

:[62]
b [64]

:[63]
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
b [55]

:[64]
pushloc.v local._afterDoorNbr
pushi.e -1
cmp.i.v NEQ
bf [98]

:[65]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayNbrDoor
pushloc.v local._afterDoorNbr
pop.v.v local._door

:[66]
pushloc.v local._door
push.v builtin.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [82]

:[67]
pushi.e 0
pop.v.i local._j

:[68]
pushloc.v local._j
pushi.e -6
pushloc.v local._door
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [81]

:[69]
pushi.e -6
pushloc.v local._door
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._j
conv.v.i
pushaf.e
pushi.e -1
cmp.i.v EQ
bf [77]

:[70]
pushloc.v local._j
pushloc.v local._afterSlotNbr
cmp.v.v GT
bf [72]

:[71]
pushloc.v local._door
pushloc.v local._afterDoorNbr
cmp.v.v EQ
b [73]

:[72]
push.e 0

:[73]
bt [75]

:[74]
pushloc.v local._door
pushloc.v local._afterDoorNbr
cmp.v.v NEQ
b [76]

:[75]
push.e 1

:[76]
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushloc.v local._door
pushloc.v local._arrayNbrDoor
call.i array_push(argc=2)
popz.v
b [81]

:[80]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [68]

:[81]
push.v local._door
push.e 1
add.i.v
pop.v.v local._door
b [66]

:[82]
pushloc.v local._arrayNbrDoor
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [98]

:[83]
pushloc.v local._arrayNbrDoor
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomDoor
pushi.e -7
pushloc.v local._randomDoor
conv.v.i
push.v [array]self._arrayNbrDoor
pop.v.v local._nbrDoor
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayNbrSlot
pushi.e 0
pop.v.i local._slot

:[84]
pushloc.v local._slot
pushi.e -6
pushloc.v local._nbrDoor
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [97]

:[85]
pushi.e -6
pushloc.v local._nbrDoor
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._slot
conv.v.i
pushaf.e
pushi.e -1
cmp.i.v EQ
bf [93]

:[86]
pushloc.v local._slot
pushloc.v local._afterSlotNbr
cmp.v.v GT
bf [88]

:[87]
pushloc.v local._afterDoorNbr
pushloc.v local._nbrDoor
cmp.v.v EQ
b [89]

:[88]
push.e 0

:[89]
bt [91]

:[90]
pushloc.v local._afterDoorNbr
pushloc.v local._nbrDoor
cmp.v.v NEQ
b [92]

:[91]
push.e 1

:[92]
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushloc.v local._slot
pushloc.v local._arrayNbrSlot
call.i array_push(argc=2)
popz.v

:[96]
push.v local._slot
push.e 1
add.i.v
pop.v.v local._slot
b [84]

:[97]
pushloc.v local._arrayNbrSlot
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomSlot
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.structName
pushi.e -6
pushloc.v local._nbrDoor
conv.v.i
push.v [arraypopaf]self.encounters
pushi.e -7
pushloc.v local._randomSlot
conv.v.i
push.v [array]self._arrayNbrSlot
conv.v.i
popaf.e
pushi.e 1
conv.b.v
ret.v

:[98]
pushi.e 0
conv.b.v
ret.v

:[99]
exit.i

:[100]
push.i [function]gml_Script_anon@5547@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_after
b [119]

> gml_Script_anon@7604@c_monster_list@sMonsterList (locals=10, argc=4)
:[101]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [103]

:[102]
pushi.e 1
pop.v.b builtin.argument3

:[103]
push.v arg.argument0
call.i is_array(argc=1)
conv.v.b
not.b
bf [105]

:[104]
push.v arg.argument0
call.i @@NewGMLArray@@(argc=1)
pop.v.v arg.argument0

:[105]
push.v arg.argument0
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [107]

:[106]
exit.i

:[107]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayEverySlot
push.v arg.argument1
pop.v.v local._i

:[108]
pushloc.v local._i
push.v arg.argument2
cmp.v.v LT
bf [115]

:[109]
pushi.e 0
pop.v.i local._j

:[110]
pushloc.v local._j
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [114]

:[111]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._j
conv.v.i
pushaf.e
pushi.e -1
cmp.i.v EQ
bf [113]

:[112]
pushloc.v local._j
pushloc.v local._i
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._arrayEverySlot
call.i array_push(argc=2)
popz.v

:[113]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [110]

:[114]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [108]

:[115]
pushloc.v local._arrayEverySlot
call.i array_length(argc=1)
pop.v.v local._lengthSlot
push.v arg.argument0
call.i array_length(argc=1)
pushloc.v local._lengthSlot
call.i gml_Script_g_distribute(argc=2)
pop.v.v local._resultDistribute
pushi.e 0
pop.v.i local._indexStart
pushi.e 0
pop.v.i local._e

:[116]
pushloc.v local._e
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [118]

:[117]
pushloc.v local._indexStart
pop.v.v local._start
pushloc.v local._indexStart
pushi.e -7
pushloc.v local._e
conv.v.i
push.v [array]self._resultDistribute
add.v.v
pushi.e 1
sub.i.v
pop.v.v local._end
pushloc.v local._end
pushloc.v local._start
pushglb.v global.rng
call.i gml_Script_minstd_int_range(argc=3)
pop.v.v local._randomSlot
pushi.e -15
pushloc.v local._e
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.structName
pushi.e -6
pushi.e -7
pushloc.v local._randomSlot
conv.v.i
push.v [arraypushaf]self._arrayEverySlot
pushi.e 0
pushaf.e
conv.v.i
push.v [arraypopaf]self.encounters
pushi.e -7
pushloc.v local._randomSlot
conv.v.i
push.v [arraypushaf]self._arrayEverySlot
pushi.e 1
pushaf.e
conv.v.i
popaf.e
push.v local._indexStart
pushi.e -7
pushloc.v local._e
conv.v.i
push.v [array]self._resultDistribute
add.v.v
pop.v.v local._indexStart
push.v local._e
push.e 1
add.i.v
pop.v.v local._e
b [116]

:[118]
exit.i

:[119]
push.i [function]gml_Script_anon@7604@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_in_list
b [137]

> gml_Script_anon@8804@c_monster_list@sMonsterList (locals=6, argc=4)
:[120]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [122]

:[121]
push.l 0
pop.v.l builtin.argument3

:[122]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayEverySlot
push.v arg.argument1
pop.v.v local._i

:[123]
pushloc.v local._i
push.v arg.argument2
cmp.v.v LT
bf [130]

:[124]
pushi.e 0
pop.v.i local._j

:[125]
pushloc.v local._j
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [129]

:[126]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._j
conv.v.i
pushaf.e
pushi.e -1
cmp.i.v EQ
bf [128]

:[127]
pushloc.v local._j
pushloc.v local._i
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._arrayEverySlot
call.i array_push(argc=2)
popz.v

:[128]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [125]

:[129]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [123]

:[130]
pushloc.v local._arrayEverySlot
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomDoor1
pushloc.v local._arrayEverySlot
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._randomDoor2
push.v arg.argument3
push.l 1
cmp.l.v EQ
bf [132]

:[131]
pushloc.v local._randomDoor2
pushloc.v local._randomDoor1
call.i min(argc=2)
pop.v.v local._randomDoorFinal
b [135]

:[132]
push.v arg.argument3
push.l 2
cmp.l.v EQ
bf [134]

:[133]
pushloc.v local._randomDoor2
pushloc.v local._randomDoor1
call.i max(argc=2)
pop.v.v local._randomDoorFinal
b [135]

:[134]
pushloc.v local._randomDoor1
pop.v.v local._randomDoorFinal

:[135]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.structName
pushi.e -6
pushi.e -7
pushloc.v local._randomDoorFinal
conv.v.i
push.v [arraypushaf]self._arrayEverySlot
pushi.e 0
pushaf.e
conv.v.i
push.v [arraypopaf]self.encounters
pushi.e -7
pushloc.v local._randomDoorFinal
conv.v.i
push.v [arraypushaf]self._arrayEverySlot
pushi.e 1
pushaf.e
conv.v.i
popaf.e
pushi.e -7
pushloc.v local._randomDoorFinal
conv.v.i
push.v [arraypushaf]self._arrayEverySlot
pushi.e 0
pushaf.e
ret.v

:[136]
exit.i

:[137]
push.i [function]gml_Script_anon@8804@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_in_random_door
b [148]

> gml_Script_anon@10118@c_monster_list@sMonsterList (locals=1, argc=3)
:[138]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [140]

:[139]
pushi.e -1
pop.v.i builtin.argument2

:[140]
push.v arg.argument1
push.v builtin.encounters
call.i array_length(argc=1)
cmp.v.v GTE
bf [142]

:[141]
exit.i

:[142]
push.v arg.argument2
pushi.e -1
cmp.i.v EQ
bf [144]

:[143]
pushi.e -6
push.v arg.argument1
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._theSlot
b [145]

:[144]
push.v arg.argument2
pop.v.v local._theSlot

:[145]
pushloc.v local._theSlot
pushi.e -6
push.v arg.argument1
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v GTE
bf [147]

:[146]
exit.i

:[147]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.structName
pushi.e -6
push.v arg.argument1
conv.v.i
push.v [arraypopaf]self.encounters
pushloc.v local._theSlot
conv.v.i
popaf.e
exit.i

:[148]
push.i [function]gml_Script_anon@10118@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_in_custom_position
b [161]

> gml_Script_anon@10719@c_monster_list@sMonsterList (locals=5, argc=0)
:[149]
call.i @@This@@(argc=0)
push.v builtin.reset_clover
callv.v 0
popz.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shop
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.funfair
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
pushi.e -9
push.v [stacktop]self.structName
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._unavailableMonsters
pushi.e 0
pop.v.i local._i

:[150]
pushloc.v local._i
push.v builtin.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [160]

:[151]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._posAvailable
pushi.e 0
pop.v.i local._j

:[152]
pushloc.v local._j
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [156]

:[153]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._j
conv.v.i
pushaf.e
pushloc.v local._unavailableMonsters
call.i array_contains(argc=2)
conv.v.b
not.b
bf [155]

:[154]
pushloc.v local._j
pushloc.v local._posAvailable
call.i array_push(argc=2)
popz.v

:[155]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [152]

:[156]
pushloc.v local._posAvailable
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [158]

:[157]
pushi.e -7
pushloc.v local._posAvailable
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
conv.v.i
push.v [array]self._posAvailable
pop.v.v local._position
b [159]

:[158]
pushi.e -1
pop.v.i local._position

:[159]
pushloc.v local._position
push.v builtin.cloverPosition
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [150]

:[160]
exit.i

:[161]
push.i [function]gml_Script_anon@10719@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.define_clover_position
b [175]

> gml_Script_anon@11852@c_monster_list@sMonsterList (locals=6, argc=0)
:[162]
call.i @@This@@(argc=0)
push.v builtin.reset_moon
callv.v 0
popz.v
pushglb.v global.isTutorialDone
conv.v.b
not.b
bf [164]

:[163]
exit.i

:[164]
pushi.e 0
pop.v.i local._m

:[165]
pushloc.v local._m
push.v builtin.totalBiomeCount
cmp.v.v LT
bf [174]

:[166]
push.v builtin.equalPartDoor
pushloc.v local._m
mul.v.v
pop.v.v local._doorMin
pushloc.v local._doorMin
push.v builtin.equalPartDoor
add.v.v
pop.v.v local._doorMax
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayOfPossibility
pushloc.v local._doorMin
pop.v.v local._md

:[167]
pushloc.v local._md
pushloc.v local._doorMax
cmp.v.v LT
bf [171]

:[168]
pushloc.v local._md
push.v builtin.moonDisabledPosition
call.i array_contains(argc=2)
pushi.e 0
cmp.b.v EQ
bf [170]

:[169]
pushloc.v local._md
pushloc.v local._arrayOfPossibility
call.i array_push(argc=2)
popz.v

:[170]
push.v local._md
push.e 1
add.i.v
pop.v.v local._md
b [167]

:[171]
pushloc.v local._arrayOfPossibility
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [173]

:[172]
pushloc.v local._arrayOfPossibility
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._resultMoon
pushi.e -7
pushloc.v local._resultMoon
conv.v.i
push.v [array]self._arrayOfPossibility
pushi.e -6
pushloc.v local._m
conv.v.i
pop.v.v [array]self.moonPosition
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_choose_rng(argc=3)
pushi.e -6
pushloc.v local._m
conv.v.i
pop.v.v [array]self.moonType

:[173]
push.v local._m
push.e 1
add.i.v
pop.v.v local._m
b [165]

:[174]
exit.i

:[175]
push.i [function]gml_Script_anon@11852@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.define_moon
b [189]

> gml_Script_anon@13215@c_monster_list@sMonsterList (locals=5, argc=3)
:[176]
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [178]

:[177]
push.v builtin.monstersForest
pop.v.v local._arrayToCopy
b [180]

:[178]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [180]

:[179]
push.v builtin.monstersCity
pop.v.v local._arrayToCopy

:[180]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._copyOfMonsters
pushloc.v local._arrayToCopy
call.i array_length(argc=1)
pushi.e 0
conv.i.v
pushloc.v local._arrayToCopy
pushi.e 0
conv.i.v
pushloc.v local._copyOfMonsters
call.i array_copy(argc=5)
popz.v
push.v arg.argument1
pop.v.v local._i

:[181]
pushloc.v local._i
push.v arg.argument2
cmp.v.v LT
bf [188]

:[182]
pushi.e 0
pop.v.i local._j

:[183]
pushloc.v local._j
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [187]

:[184]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._j
conv.v.i
pushaf.e
pushi.e -1
cmp.i.v EQ
bf [186]

:[185]
pushloc.v local._copyOfMonsters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pop.v.v local._theMonsterNbr
pushi.e -7
pushloc.v local._theMonsterNbr
conv.v.i
push.v [array]self._copyOfMonsters
pushi.e -9
push.v [stacktop]self.structName
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypopaf]self.encounters
pushloc.v local._j
conv.v.i
popaf.e
pushi.e 1
conv.i.v
pushloc.v local._theMonsterNbr
pushloc.v local._copyOfMonsters
call.i array_delete(argc=3)
popz.v

:[186]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [183]

:[187]
pushloc.v local._arrayToCopy
call.i array_length(argc=1)
pushi.e 0
conv.i.v
pushloc.v local._arrayToCopy
pushi.e 0
conv.i.v
pushloc.v local._copyOfMonsters
call.i array_copy(argc=5)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [181]

:[188]
exit.i

:[189]
push.i [function]gml_Script_anon@13215@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.fill_with_random_encounters
b [199]

> gml_Script_anon@14227@c_monster_list@sMonsterList (locals=2, argc=2)
:[190]
pushi.e 0
pop.v.i local._i

:[191]
pushloc.v local._i
push.v builtin.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [198]

:[192]
pushi.e 0
pop.v.i local._j

:[193]
pushloc.v local._j
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
cmp.v.v LT
bf [197]

:[194]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypushaf]self.encounters
pushloc.v local._j
conv.v.i
pushaf.e
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.structName
cmp.v.v EQ
bf [196]

:[195]
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.structName
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [arraypopaf]self.encounters
pushloc.v local._j
conv.v.i
popaf.e

:[196]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [193]

:[197]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [191]

:[198]
exit.i

:[199]
push.i [function]gml_Script_anon@14227@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.replace_monster
b [242]

> gml_Script_anon@14659@c_monster_list@sMonsterList (locals=16, argc=1)
:[200]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [202]

:[201]
pushi.e 0
pop.v.i builtin.argument0

:[202]
call.i @@This@@(argc=0)
push.v builtin.reset_list
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.generate_token
callv.v 0
popz.v
pushi.e 0
pop.v.i local._b

:[203]
pushloc.v local._b
push.v builtin.totalBiomeCount
cmp.v.v LT
bf [236]

:[204]
push.v builtin.equalPartDoor
pushloc.v local._b
mul.v.v
pop.v.v local._doorMin
pushloc.v local._doorMin
push.v builtin.equalPartDoor
add.v.v
pop.v.v local._doorMax
push.v arg.argument0
pushi.e 0
cmp.i.v NEQ
bf [206]

:[205]
pushloc.v local._b
pushi.e 0
cmp.i.v EQ
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.faun
call.i @@This@@(argc=0)
push.v builtin.add_in_custom_position
callv.v 3
popz.v
pushi.e 0
conv.i.v
push.v builtin.moonDisabledPosition
call.i array_push(argc=2)
popz.v

:[209]
pushi.e 2
pushloc.v local._doorMin
add.v.i
pushi.e 1
pushloc.v local._doorMin
add.v.i
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shop
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
pop.v.v local._shopNbr1
pushi.e 5
pushloc.v local._doorMin
add.v.i
pushi.e 4
pushloc.v local._doorMin
add.v.i
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shop
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
pop.v.v local._shopNbr2
pushi.e 8
pushloc.v local._doorMin
add.v.i
pushi.e 7
pushloc.v local._doorMin
add.v.i
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shop
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
pop.v.v local._shopNbr3
pushloc.v local._shopNbr1
push.v builtin.moonDisabledPosition
call.i array_push(argc=2)
popz.v
pushloc.v local._shopNbr2
push.v builtin.moonDisabledPosition
call.i array_push(argc=2)
popz.v
pushloc.v local._shopNbr3
push.v builtin.moonDisabledPosition
call.i array_push(argc=2)
popz.v
pushloc.v local._b
pushi.e 0
cmp.i.v EQ
bf [222]

:[210]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushi.e 2
add.i.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.squirrelKing
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
popz.v
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.funfair
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
call.i gml_Script_choose_rng(argc=2)
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
pop.v.v local._newMiniGamePos
pushloc.v local._newMiniGamePos
push.v builtin.moonDisabledPosition
call.i array_push(argc=2)
popz.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.magicStump
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.fountainSorrowEmpty
call.i gml_Script_choose_rng(argc=2)
pop.v.v local._whichHeal
pushi.e -6
pushi.e 2
pushloc.v local._doorMin
add.v.i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pushi.e 2
pushloc.v local._doorMin
add.v.i
pushloc.v local._whichHeal
call.i @@This@@(argc=0)
push.v builtin.add_in_custom_position
callv.v 3
popz.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.lostTimeWatcher
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.watcher
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.watcher
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.watcher
call.i gml_Script_choose_rng(argc=4)
pop.v.v local._whichWatcher
pushloc.v local._whichHeal
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.fountainSorrowEmpty
cmp.v.v EQ
bf [212]

:[211]
pushloc.v local._whichWatcher
b [213]

:[212]
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.magicStump

:[213]
pop.v.v local._whichSecondHeal
pushi.e -6
pushi.e 5
pushloc.v local._doorMin
add.v.i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pushi.e 5
pushloc.v local._doorMin
add.v.i
pushloc.v local._whichSecondHeal
call.i @@This@@(argc=0)
push.v builtin.add_in_custom_position
callv.v 3
popz.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_choose_rng(argc=7)
pop.v.v local._mommyNbr
pushi.e 0
pop.v.i local._i

:[214]
pushloc.v local._i
pushloc.v local._mommyNbr
cmp.v.v LT
bf [216]

:[215]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.mommy
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [214]

:[216]
push.l 2
conv.l.v
pushloc.v local._doorMax
pushi.e 2
sub.i.v
pushloc.v local._doorMin
pushi.e 2
add.i.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.statueForest
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 4
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_choose_rng(argc=2)
pop.v.v local._biomeCategory
pushloc.v local._biomeCategory
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [219]

:[217]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [220]

:[218]
b [221]

:[219]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.unconsolableFawn
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.mother
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.hunter
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.dogHand
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.twoHeadedFawn
call.i @@NewGMLArray@@(argc=5)
call.i @@This@@(argc=0)
push.v builtin.add_in_list
callv.v 3
popz.v
b [221]

:[220]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shepherdess
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.hybrid
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.dolly
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.sheep
call.i @@NewGMLArray@@(argc=4)
call.i @@This@@(argc=0)
push.v builtin.add_in_list
callv.v 3
popz.v
push.l 2
conv.l.v
pushloc.v local._doorMax
pushi.e 2
sub.i.v
pushloc.v local._doorMin
pushi.e 2
add.i.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.maybeSheep
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 4
popz.v
b [221]

:[221]
popz.v
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.mushroomKnight
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
popz.v
b [235]

:[222]
pushloc.v local._b
pushi.e 1
cmp.i.v EQ
bf [235]

:[223]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushi.e 2
add.i.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.innkeeper
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
popz.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.lampostOff
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.lamplighter
call.i gml_Script_choose_rng(argc=2)
pop.v.v local._whichHeal
pushi.e -6
pushi.e 2
pushloc.v local._doorMin
add.v.i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pushi.e 2
pushloc.v local._doorMin
add.v.i
pushloc.v local._whichHeal
call.i @@This@@(argc=0)
push.v builtin.add_in_custom_position
callv.v 3
popz.v
pushloc.v local._whichHeal
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.lamplighter
cmp.v.v EQ
bf [225]

:[224]
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.lampostOn
b [226]

:[225]
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.lamplighter

:[226]
pop.v.v local._whichSecondHeal
pushi.e -6
pushi.e 5
pushloc.v local._doorMin
add.v.i
conv.v.i
push.v [array]self.encounters
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushglb.v global.rng
call.i gml_Script_minstd_int(argc=2)
pushi.e 5
pushloc.v local._doorMin
add.v.i
pushloc.v local._whichSecondHeal
call.i @@This@@(argc=0)
push.v builtin.add_in_custom_position
callv.v 3
popz.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_choose_rng(argc=7)
pop.v.v local._pigeonNbr
pushi.e 0
pop.v.i local._i

:[227]
pushloc.v local._i
pushloc.v local._pigeonNbr
cmp.v.v LT
bf [229]

:[228]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.pigeon
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [227]

:[229]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_choose_rng(argc=2)
pop.v.v local._biomeCategory
pushloc.v local._biomeCategory
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [232]

:[230]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [233]

:[231]
b [234]

:[232]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.dictator
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.guard
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.souillon
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.beggar
call.i @@NewGMLArray@@(argc=4)
call.i @@This@@(argc=0)
push.v builtin.add_in_list
callv.v 3
popz.v
push.l 2
conv.l.v
pushloc.v local._doorMax
pushi.e 2
sub.i.v
pushloc.v local._doorMin
pushi.e 2
add.i.v
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.revolutionary
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 4
popz.v
b [234]

:[233]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.banker
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.sandwichMan
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.minstrel
call.i @@NewGMLArray@@(argc=3)
call.i @@This@@(argc=0)
push.v builtin.add_in_list
callv.v 3
popz.v
b [234]

:[234]
popz.v
pushloc.v local._doorMax
pushloc.v local._doorMin
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.statue
call.i @@This@@(argc=0)
push.v builtin.add_in_random_door
callv.v 3
popz.v

:[235]
pushloc.v local._doorMax
pushloc.v local._doorMin
pushloc.v local._b
call.i @@This@@(argc=0)
push.v builtin.fill_with_random_encounters
callv.v 3
popz.v
push.v local._b
push.e 1
add.i.v
pop.v.v local._b
b [203]

:[236]
pushglb.v global.isTutorialDone
conv.v.b
not.b
bf [241]

:[237]
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.tutorialReplay
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.tutorialVote
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.tutorialDead
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.tutorialDamage
pushi.e -9
push.v [stacktop]self.structName
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._arrayTutorial
pushloc.v local._arrayTutorial
pushi.e 0
conv.i.v
push.v builtin.encounters
call.i array_insert(argc=3)
popz.v
pushi.e 0
pop.v.i local._t

:[238]
pushloc.v local._t
push.v builtin.moonDisabledPosition
call.i array_length(argc=1)
cmp.v.v LT
bf [240]

:[239]
pushi.e -6
pushloc.v local._t
conv.v.i
dup.i 1
push.v [array]self.moonDisabledPosition
push.e 1
add.i.v
pop.i.v [array]self.moonDisabledPosition
push.v local._t
push.e 1
add.i.v
pop.v.v local._t
b [238]

:[240]
pushi.e 0
conv.i.v
push.v builtin.moonDisabledPosition
call.i array_push(argc=2)
popz.v

:[241]
exit.i

:[242]
push.i [function]gml_Script_anon@14659@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.define_list
b [244]

> gml_Script_anon@21583@c_monster_list@sMonsterList (locals=0, argc=0)
:[243]
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.luckyChest
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.starMole
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.hedgehog
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.snail
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.frog
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.keeper
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.sleepParalysis
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.oracle
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.wildBoar
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.ratten
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.forgottenSlime
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.unicorn
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.creepyRabbit
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.animalBinder
call.i @@NewGMLArray@@(argc=14)
pop.v.v builtin.monstersForest
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.catDead
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.catAlive
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.catUndead
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.carriageMadMan
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.costumer
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.pupperteer
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.keyMaster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.libarian
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.graveyardKeeper
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.prisonerChest
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.shoeshiner
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.ocularist
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.operaGhost
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.townCrier
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.butcher
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.bellBoy
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.madScientist
call.i @@NewGMLArray@@(argc=17)
pop.v.v builtin.monstersCity
exit.i

:[244]
push.i [function]gml_Script_anon@21583@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.init_monsters
b [246]

> gml_Script_anon@22652@c_monster_list@sMonsterList (locals=0, argc=0)
:[245]
pushglb.v global.runCounter
call.i @@This@@(argc=0)
push.v builtin.define_list
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.define_clover_position
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.define_moon
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.reset_cards
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.calculate_door_completion
callv.v 0
popz.v
exit.i

:[246]
push.i [function]gml_Script_anon@22652@c_monster_list@sMonsterList
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.generate_data
exit.i

:[247]
push.i [function]gml_Script_c_monster_list
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.c_monster_list
popz.v
push.i [function]gml_Script_c_monster_list
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.monsterList

:[end]