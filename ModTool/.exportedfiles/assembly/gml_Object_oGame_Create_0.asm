:[0]
b [95]

> gml_Script_anon@14@gml_Object_oGame_Create_0 (locals=3, argc=0)
:[1]
call.i randomise(argc=0)
popz.v
call.i random_get_seed(argc=0)
pop.v.v global.seed_number
call.i gml_Script_minstd_create(argc=0)
pop.v.v global.rng
pushglb.v global.seed_number
pushglb.v global.rng
call.i gml_Script_minstd_set_seed(argc=2)
popz.v
pushi.e 0
pop.v.b global.isGameLaunched
pushi.e 0
pop.v.i global.runCounter
pushi.e 3
pop.v.i global.runMax
pushi.e 1
pop.v.i global.biomeCur
pushi.e 1
pop.v.i global.biomeNext
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.winner
pushi.e 0
pop.v.b global.commonPotUsed
pushi.e 0
pop.v.i global.japetCounter
pushi.e 0
pop.v.b global.pause
pushi.e 0
pop.v.b global.pauseController
pushi.e 0
pop.v.b global.pauseSettings
pushi.e 0
pop.v.b global.pauseChatbox
pushi.e 0
pop.v.b global.pauseDisconnected
pushi.e 0
conv.b.v
pushi.e 4
conv.i.v
call.i array_create(argc=2)
pop.v.v global.dialogueValidated
pushi.e 0
pop.v.i global.dialogueCounter
push.s "gameEndReason"@9286
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.l 5
pop.v.l global.gameEndReason

:[3]
pushi.e -1
conv.i.v
call.i window_set_cursor(argc=1)
popz.v
pushglb.v global.gameVersion
push.s "DEMO v"@9585
conv.s.v
call.i string_concat(argc=2)
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtVersion
push.s "shake"@4116
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.i [function]gml_Script_c_shake
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.shake

:[5]
pushref.i 48
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushref.i 48
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v global.networkingManager
b [15]

:[7]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [12]

:[8]
pushglb.v global.lobbyTypeDefault
push.l 2
cmp.l.v EQ
bt [10]

:[9]
pushglb.v global.lobbyTypeDefault
push.l 3
cmp.l.v EQ
b [11]

:[10]
push.e 1

:[11]
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
conv.b.v
call.i steam_lobby_set_joinable(argc=1)
popz.v

:[15]
push.s "depthManager"@4975
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
push.i [function]gml_Script_depth_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.depthManager

:[17]
pushref.i 13
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [19]

:[18]
pushref.i 13
pushglb.v global.depthManager
push.s "cursor"@4987
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 1
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[19]
pushref.i 50
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
pushref.i 50
push.v builtin.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
b [22]

:[21]
pushglb.v global.particlesSys
call.i part_particles_clear(argc=1)
popz.v

:[22]
pushref.i 5
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [24]

:[23]
pushref.i 5
push.v builtin.depth
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=4)
popz.v

:[24]
pushref.i 19
pushi.e -9
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
pushref.i 60
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
push.l 12
conv.l.v
pushi.e 1
conv.b.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i gml_Script_InputPartySetParams(argc=7)
popz.v
push.s "playersCount"@5064
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 0
pop.v.i global.playersCount

:[30]
push.s "playersManager"@4935
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [32]

:[31]
push.i [function]gml_Script_players_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.playersManager
pushglb.v global.playersManager
pushi.e 0
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.create_player
callv.v 1
popz.v
pushi.e 1
conv.b.v
call.i gml_Script_InputSetHotswap(argc=1)
popz.v

:[32]
push.s "waitingList"@4980
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [34]

:[33]
push.i [function]gml_Script_waiting_list
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.waitingList

:[34]
pushglb.v global.waitingList
dup.v 0 8
dup.v 0
push.v stacktop.empty
callv.v 0
popz.v
pushref.i 42
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [36]

:[35]
pushref.i 42
push.v builtin.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[36]
pushref.i 32
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [38]

:[37]
pushref.i 32
push.v builtin.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
b [39]

:[38]
pushglb.v global.__ElementController
pushi.e 4
conv.i.v
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v

:[39]
pushref.i 65
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [41]

:[40]
pushref.i 65
pushglb.v global.depthManager
push.s "ui"@5003
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[41]
pushref.i 2
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [43]

:[42]
call.i gml_Script_g_change_music_volume(argc=0)
popz.v
call.i gml_Script_g_change_sfx_volume(argc=0)
popz.v
pushref.i 2
push.v builtin.depth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[43]
pushref.i 54
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [45]

:[44]
pushref.i 54
pushglb.v global.depthManager
push.s "settings"@4990
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[45]
pushref.i 10
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [47]

:[46]
pushref.i 10
pushglb.v global.depthManager
push.s "controllerDisconnected"@4988
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i instance_create_depth(argc=4)
popz.v

:[47]
push.s "actionCards"@5328
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [49]

:[48]
pushbltn.v builtin.undefined
pop.v.v global.actionCards

:[49]
push.i [function]gml_Script_cDeckItem
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.actionCards
push.s "loopManager"@4945
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [51]

:[50]
pushglb.v global.loopManager
call.i instance_destroy(argc=1)
popz.v

:[51]
pushref.i 43
pushglb.v global.depthManager
push.s "fightWindows"@5006
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v global.loopManager
push.s "fightManager"@4942
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [53]

:[52]
pushglb.v global.fightManager
call.i instance_destroy(argc=1)
popz.v

:[53]
pushref.i 22
pushglb.v global.depthManager
push.s "fightWindows"@5006
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v global.fightManager
push.s "mainScene"@5015
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [55]

:[54]
pushglb.v global.mainScene
call.i instance_destroy(argc=1)
popz.v

:[55]
pushref.i 44
pushglb.v global.depthManager
push.s "mainScene"@5015
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v global.mainScene
push.s "effectExecutionManager"@9509
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [57]

:[56]
pushbltn.v builtin.undefined
pop.v.v global.effectExecutionManager

:[57]
push.i [function]gml_Script_effect_execution_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.effectExecutionManager
push.s "cardExecutionManager"@5187
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [59]

:[58]
pushbltn.v builtin.undefined
pop.v.v global.cardExecutionManager

:[59]
push.i [function]gml_Script_card_execution_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.cardExecutionManager
push.s "doorExecutionManager"@9511
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [61]

:[60]
pushbltn.v builtin.undefined
pop.v.v global.doorExecutionManager

:[61]
push.i [function]gml_Script_door_execution_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.doorExecutionManager
push.s "throwExecutionManager"@9518
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [63]

:[62]
pushbltn.v builtin.undefined
pop.v.v global.throwExecutionManager

:[63]
push.i [function]gml_Script_token_execution_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.throwExecutionManager
push.s "deathExecutionManager"@9510
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [65]

:[64]
pushbltn.v builtin.undefined
pop.v.v global.deathExecutionManager

:[65]
push.i [function]gml_Script_death_execution_manager
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.deathExecutionManager
push.s "gemManager"@5994
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [67]

:[66]
pushglb.v global.gemManager
call.i instance_destroy(argc=1)
popz.v

:[67]
pushref.i 30
pushglb.v global.depthManager
push.s "effect"@4187
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v global.gemManager
push.s "doorExit"@9588
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bt [69]

:[68]
push.s "doorContinue"@9589
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
b [70]

:[69]
push.e 1

:[70]
bf [72]

:[71]
pushglb.v global.doorExit
call.i instance_destroy(argc=1)
popz.v
pushglb.v global.doorContinue
call.i instance_destroy(argc=1)
popz.v

:[72]
push.l 0
conv.l.v
b [74]

> gml_Script____struct___367@anon@14@gml_Object_oGame_Create_0 (locals=0, argc=0)
:[73]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.doorType
exit.i

:[74]
push.i [function]gml_Script____struct___367@anon@14@gml_Object_oGame_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___367
call.i @@NewGMLObject@@(argc=2)
pushref.i 29
pushglb.v global.depthManager
push.s "choice"@5014
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v global.doorExit
push.l 1
conv.l.v
b [76]

> gml_Script____struct___368@anon@14@gml_Object_oGame_Create_0 (locals=0, argc=0)
:[75]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.doorType
exit.i

:[76]
push.i [function]gml_Script____struct___368@anon@14@gml_Object_oGame_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___368
call.i @@NewGMLObject@@(argc=2)
pushref.i 29
pushglb.v global.depthManager
push.s "choice"@5014
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v global.doorContinue
pushref.i 58
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [78]

:[77]
pushref.i 58
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[78]
push.s "dayNightCycle"@4957
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [80]

:[79]
pushglb.v global.dayNightCycle
call.i instance_destroy(argc=1)
popz.v

:[80]
pushref.i 12
pushglb.v global.depthManager
push.s "dayNight"@5000
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
pop.v.v global.dayNightCycle
pushglb.v global.firstInit
pushi.e 1
cmp.b.v EQ
bf [82]

:[81]
call.i gml_Script_create_s_effect(argc=0)
popz.v
call.i gml_Script_create_s_entities(argc=0)
popz.v
call.i gml_Script_tutorial_replay(argc=0)
popz.v
call.i gml_Script_tutorial_damage(argc=0)
popz.v
call.i gml_Script_tutorial_dead(argc=0)
popz.v
call.i gml_Script_tutorial_vote(argc=0)
popz.v
call.i gml_Script_forest_faun(argc=0)
popz.v
call.i gml_Script_forest_animalBinder(argc=0)
popz.v
call.i gml_Script_forest_blindUnicorn(argc=0)
popz.v
call.i gml_Script_forest_babayaga(argc=0)
popz.v
call.i gml_Script_monster_banker(argc=0)
popz.v
call.i gml_Script_monster_beggar(argc=0)
popz.v
call.i gml_Script_monster_bellBoy(argc=0)
popz.v
call.i gml_Script_monster_blackMarket(argc=0)
popz.v
call.i gml_Script_monster_butcher(argc=0)
popz.v
call.i gml_Script_monster_carriageMadMan(argc=0)
popz.v
call.i gml_Script_monster_catUndead(argc=0)
popz.v
call.i gml_Script_monster_catAlive(argc=0)
popz.v
call.i gml_Script_monster_catDead(argc=0)
popz.v
call.i gml_Script_monster_costumer(argc=0)
popz.v
call.i gml_Script_forest_creepyRabbit(argc=0)
popz.v
call.i gml_Script_monster_dictator(argc=0)
popz.v
call.i gml_Script_forest_dolly(argc=0)
popz.v
call.i gml_Script_forest_dogHand(argc=0)
popz.v
call.i gml_Script_forest_forgottenSlime(argc=0)
popz.v
call.i gml_Script_forest_fountainSorrow(argc=0)
popz.v
call.i gml_Script_forest_fountainSorrowEmpty(argc=0)
popz.v
call.i gml_Script_forest_funfair(argc=0)
popz.v
call.i gml_Script_forest_frog(argc=0)
popz.v
call.i gml_Script_monster_graveyardKeeper(argc=0)
popz.v
call.i gml_Script_monster_guard(argc=0)
popz.v
call.i gml_Script_forest_hedgehog(argc=0)
popz.v
call.i gml_Script_forest_hybrid(argc=0)
popz.v
call.i gml_Script_forest_hunter(argc=0)
popz.v
call.i gml_Script_forest_innkeeper(argc=0)
popz.v
call.i gml_Script_forest_keeper(argc=0)
popz.v
call.i gml_Script_monster_keyMaster(argc=0)
popz.v
call.i gml_Script_monster_lampostOff(argc=0)
popz.v
call.i gml_Script_monster_lampostOn(argc=0)
popz.v
call.i gml_Script_forest_lamplighter(argc=0)
popz.v
call.i gml_Script_monster_libarian(argc=0)
popz.v
call.i gml_Script_monster_luckyChest(argc=0)
popz.v
call.i gml_Script_forest_maybeSheep(argc=0)
popz.v
call.i gml_Script_monster_madScientist(argc=0)
popz.v
call.i gml_Script_monster_minstrel(argc=0)
popz.v
call.i gml_Script_forest_magicStump(argc=0)
popz.v
call.i gml_Script_forest_mommy(argc=0)
popz.v
call.i gml_Script_forest_mother(argc=0)
popz.v
call.i gml_Script_forest_mushroomKnight(argc=0)
popz.v
call.i gml_Script_monster_ocularist(argc=0)
popz.v
call.i gml_Script_monster_operaGhost(argc=0)
popz.v
call.i gml_Script_forest_oracle(argc=0)
popz.v
call.i gml_Script_monster_pigeon(argc=0)
popz.v
call.i gml_Script_monster_platonia(argc=0)
popz.v
call.i gml_Script_monster_prisonerChest(argc=0)
popz.v
call.i gml_Script_forest_ratten(argc=0)
popz.v
call.i gml_Script_monster_revolutionary(argc=0)
popz.v
call.i gml_Script_monster_pupperteer(argc=0)
popz.v
call.i gml_Script_monster_sandwichMan(argc=0)
popz.v
call.i gml_Script_forest_sheep(argc=0)
popz.v
call.i gml_Script_forest_shepherdess(argc=0)
popz.v
call.i gml_Script_monster_shoeshiner(argc=0)
popz.v
call.i gml_Script_forest_shop(argc=0)
popz.v
call.i gml_Script_forest_snail(argc=0)
popz.v
call.i gml_Script_monster_souillon(argc=0)
popz.v
call.i gml_Script_forest_starMole(argc=0)
popz.v
call.i gml_Script_monster_statue(argc=0)
popz.v
call.i gml_Script_forest_squirrelKing(argc=0)
popz.v
call.i gml_Script_forest_sleepParalysis(argc=0)
popz.v
call.i gml_Script_forest_timeLostWatcher(argc=0)
popz.v
call.i gml_Script_monster_townCrier(argc=0)
popz.v
call.i gml_Script_forest_twoHeadedFawn(argc=0)
popz.v
call.i gml_Script_forest_unconsolableFawn(argc=0)
popz.v
call.i gml_Script_forest_watcher(argc=0)
popz.v
call.i gml_Script_forest_wildBoar(argc=0)
popz.v
call.i gml_Script_forest_statue(argc=0)
popz.v
call.i gml_Script_mountain_frozenStatue(argc=0)
popz.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
push.l 0
conv.l.v
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.commonPot
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.manant
call.i @@NewGMLArray@@(argc=2)
push.l 2
conv.l.v
pushref.i 16777454
push.s "cards._commonPotDesc"@9595
conv.s.v
push.s "cards._commonPot"@9596
conv.s.v
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushglb.v global.cards
pushi.e -9
pop.v.v [stacktop]self.commonPot
call.i gml_Script_init_cards_action_variables(argc=0)
popz.v
pushglb.v global.monsterList
dup.v 0 8
dup.v 0
push.v stacktop.init_monsters
callv.v 0
popz.v

:[82]
push.s "shader"@9343
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [84]

:[83]
push.i [function]gml_Script_c_shader
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.shader

:[84]
pushglb.v global.firstInit
pushi.e 1
cmp.b.v EQ
bf [92]

:[85]
pushi.e 86
conv.i.v
pushi.e 96
conv.i.v
pushi.e 5
conv.i.v
pushi.e -30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 130
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 130
conv.i.v
pushi.e 242
conv.i.v
pushi.e 530
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushi.e 68
conv.i.v
pushi.e 102
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 208
conv.i.v
pushi.e 320
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushi.e 48
conv.i.v
pushi.e 82
conv.i.v
pushi.e -10
conv.i.v
pushi.e 38
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 90
conv.i.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e 217
conv.i.v
pushi.e 150
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushi.e 71
conv.i.v
pushi.e 90
conv.i.v
pushi.e 10
conv.i.v
pushi.e -30
conv.i.v
pushi.e 3
conv.i.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 80
conv.i.v
pushi.e 130
conv.i.v
pushi.e 515
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushi.e 40
conv.i.v
pushi.e 65
conv.i.v
pushi.e 0
conv.i.v
pushi.e -16
conv.i.v
pushi.e 5
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 128
conv.i.v
pushi.e 419
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushi.e 38
conv.i.v
pushi.e 54
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 134
conv.i.v
pushi.e 320
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushi.e 38
conv.i.v
pushi.e 71
conv.i.v
pushi.e -5
conv.i.v
pushi.e 30
conv.i.v
pushi.e -5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 133
conv.i.v
pushi.e 227
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
pushi.e 79
conv.i.v
pushi.e 102
conv.i.v
pushi.e -7
conv.i.v
pushi.e 40
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 123
conv.i.v
pushi.e 142
conv.i.v
push.i [function]gml_Script_generate_tv
conv.i.v
call.i @@NewGMLObject@@(argc=12)
call.i @@NewGMLArray@@(argc=8)
pop.v.v local._tvProps
pushi.e 0
pop.v.i local._tv

:[86]
pushloc.v local._tv
pushloc.v local._tvProps
call.i array_length(argc=1)
cmp.v.v LT
bf [92]

:[87]
pushloc.v local._tv
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.angleZ
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.angleY
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.angleX
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.objHeight
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.objWidth
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.z4
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.z3
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.z2
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.z1
b [89]

> gml_Script____struct___369@anon@14@gml_Object_oGame_Create_0 (locals=0, argc=0)
:[88]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.z1
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.z2
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.z3
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.z4
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.objWidth
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.objHeight
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.angleX
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.angleY
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.angleZ
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.number
exit.i

:[89]
push.i [function]gml_Script____struct___369@anon@14@gml_Object_oGame_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___369
call.i @@NewGMLObject@@(argc=11)
pushref.i 63
push.v builtin.depth
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.y
pushi.e -7
pushloc.v local._tv
conv.v.i
push.v [array]self._tvProps
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=5)
pop.v.v local._inst
pushloc.v local._tv
pushi.e 6
cmp.i.v EQ
bf [91]

:[90]
pushloc.v local._inst
pop.v.v global.narratorTv

:[91]
push.v local._tv
push.e 1
add.i.v
pop.v.v local._tv
b [86]

:[92]
pushref.i 53
pushi.e -9
pushenv [94]

:[93]
call.i @@This@@(argc=0)
push.v builtin.open
callv.v 0
popz.v

:[94]
popenv [93]
exit.i

:[95]
push.i [function]gml_Script_anon@14@gml_Object_oGame_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.init_game

:[end]