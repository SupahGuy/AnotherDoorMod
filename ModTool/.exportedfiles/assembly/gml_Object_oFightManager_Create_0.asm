:[0]
pushi.e 0
pop.v.i builtin.executeCounter
pushi.e 0
pop.v.i builtin.executeCounterMax
pushi.e 0
pop.v.b builtin.executeCounterFinished
pushi.e -4
pop.v.i builtin.encounter
pushbltn.v builtin.undefined
pop.v.v builtin.state
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
pushbltn.v builtin.undefined
pop.v.v builtin.stateNext
push.s ""@61
pop.v.s builtin.stateLabel
pushi.e 0
pop.v.i builtin.fightCounter
b [2]

> gml_Script_anon@321@gml_Object_oFightManager_Create_0 (locals=0, argc=0)
:[1]
push.v builtin.fightCounter
push.e 1
add.i.v
pop.v.v builtin.fightCounter
exit.i

:[2]
push.i [function]gml_Script_anon@321@gml_Object_oFightManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.incr_fight_counter
b [5]

> gml_Script_anon@378@gml_Object_oFightManager_Create_0 (locals=0, argc=0)
:[3]
push.v builtin.fightCounter
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_anon@378@gml_Object_oFightManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_fight_counter
b [7]

> gml_Script_anon@442@gml_Object_oFightManager_Create_0 (locals=0, argc=0)
:[6]
pushi.e 0
pop.v.i builtin.fightCounter
exit.i

:[7]
push.i [function]gml_Script_anon@442@gml_Object_oFightManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_fight_counter
pushglb.v global.depthManager
push.s "fightWindows"@5006
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
b [10]

> gml_Script_anon@586@gml_Object_oFightManager_Create_0 (locals=0, argc=0)
:[8]
push.v builtin.encounter
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_anon@586@gml_Object_oFightManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_encounter
b [14]

> gml_Script_anon@806@gml_Object_oFightManager_Create_0 (locals=2, argc=1)
:[11]
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mob
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._x
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.mob
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._y
push.v arg.argument0
b [13]

> gml_Script____struct___364@anon@806@gml_Object_oFightManager_Create_0 (locals=0, argc=0)
:[12]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.structMonster
exit.i

:[13]
push.i [function]gml_Script____struct___364@anon@806@gml_Object_oFightManager_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___364
call.i @@NewGMLObject@@(argc=2)
pushref.i 47
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
pop.v.v builtin.encounter
exit.i

:[14]
push.i [function]gml_Script_anon@806@gml_Object_oFightManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.fill_encounter
pushi.e 0
pop.v.i builtin.nbrFightersAtCardDraw
pushi.e 16
pop.v.i builtin.blocSpacing
pushi.e 4
pop.v.i builtin.titleSpacing
pushi.e 38
pop.v.i builtin.counterStartW
pushi.e 17
pop.v.i builtin.counterMidW
pushi.e 0
pop.v.i builtin.counterTotal
pushi.e 0
pop.v.i builtin.counterWidth
pushi.e 0
pop.v.i builtin.counterX
pushi.e 210
pop.v.i builtin.counterY
pushi.e 1
pop.v.b builtin.firstRun
pushi.e 0
pop.v.b builtin.isFightActive
b [42]

> gml_Script_anon@1519@gml_Object_oFightManager_Create_0 (locals=5, argc=0)
:[15]
pushglb.v global.audio
dup.v 0 8
dup.v 0
push.v stacktop.reset_effect
callv.v 0
popz.v
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_current_monster
callv.v 0
pop.v.v local._nextEncounter
pushloc.v local._nextEncounter
pushi.e -9
push.v [stacktop]self.data
dup.v 0 8
dup.v 0
push.v stacktop.incr_appearance
callv.v 0
popz.v
pushloc.v local._nextEncounter
call.i @@This@@(argc=0)
push.v builtin.fill_encounter
callv.v 1
popz.v
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_current_door_length
callv.v 0
pop.v.v builtin.counterTotal
push.v builtin.counterStartW
pushi.e 2
mul.i.v
push.v builtin.counterTotal
pushi.e 1
sub.i.v
push.v builtin.counterMidW
mul.v.v
add.v.v
pop.v.v builtin.counterWidth
pushi.e 107
push.v builtin.counterWidth
pushi.e 2
conv.i.d
div.d.v
sub.v.i
call.i round(argc=1)
pop.v.v builtin.counterX
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.counterArray
pushi.e 0
pop.v.i local._i

:[16]
pushloc.v local._i
push.v builtin.counterTotal
cmp.v.v LT
bf [38]

:[17]
pushglb.v global.loopManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_monster_at_position
callv.v 1
pushi.e -9
push.v [stacktop]self.category
dup.v 0
push.l 0
cmp.l.v EQ
bt [26]

:[18]
dup.v 0
push.l 1
cmp.l.v EQ
bt [30]

:[19]
dup.v 0
push.l 7
cmp.l.v EQ
bt [31]

:[20]
dup.v 0
push.l 5
cmp.l.v EQ
bt [32]

:[21]
dup.v 0
push.l 4
cmp.l.v EQ
bt [33]

:[22]
dup.v 0
push.l 6
cmp.l.v EQ
bt [34]

:[23]
dup.v 0
push.l 3
cmp.l.v EQ
bt [35]

:[24]
b [36]

:[25]
b [37]

:[26]
pushglb.v global.loopManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_monster_at_position
callv.v 1
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.statueForest
cmp.v.v EQ
bf [28]

:[27]
pushref.i 16777409
pop.v.v local._spriteIcon
b [29]

:[28]
pushref.i 16777402
pop.v.v local._spriteIcon

:[29]
b [37]

:[30]
pushref.i 16777399
pop.v.v local._spriteIcon
b [37]

:[31]
pushref.i 16777408
pop.v.v local._spriteIcon
b [37]

:[32]
pushref.i 16777398
pop.v.v local._spriteIcon
b [37]

:[33]
pushref.i 16777405
pop.v.v local._spriteIcon
b [37]

:[34]
pushref.i 16777401
pop.v.v local._spriteIcon
b [37]

:[35]
pushref.i 16777404
pop.v.v local._spriteIcon
b [37]

:[36]
pushref.i 16777402
pop.v.v local._spriteIcon
b [37]

:[37]
popz.v
pushloc.v local._spriteIcon
push.v builtin.counterArray
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [16]

:[38]
pushglb.v global.playersManager
dup.v 0 8
dup.v 0
push.v stacktop.get_characters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._f

:[39]
pushloc.v local._f
pushloc.v local._fighters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [41]

:[40]
pushi.e 0
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
pushi.e -9
pop.v.i [stacktop]self.hpLostDuringTheMonster
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._fighters
dup.v 0 8
dup.v 0
push.v stacktop.save_hp_previous_turn
callv.v 0
popz.v
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [39]

:[41]
call.i @@This@@(argc=0)
push.v builtin.incr_fight_counter
callv.v 0
popz.v
pushi.e 1
pop.v.b builtin.isFightActive
exit.i

:[42]
push.i [function]gml_Script_anon@1519@gml_Object_oFightManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_room

:[end]