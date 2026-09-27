init_game = function()
{
    randomise();
    global.seed_number = random_get_seed();
    global.rng = minstd_create();
    minstd_set_seed(global.rng, global.seed_number);
    global.isGameLaunched = false;
    global.runCounter = 0;
    global.runMax = 3;
    global.biomeCur = 1;
    global.biomeNext = 1;
    global.winner = [];
    global.commonPotUsed = false;
    global.japetCounter = 0;
    global.pause = false;
    global.pauseController = false;
    global.pauseSettings = false;
    global.pauseChatbox = false;
    global.pauseDisconnected = false;
    global.dialogueValidated = array_create(4, false);
    global.dialogueCounter = 0;
    
    if (!variable_global_exists("gameEndReason"))
        global.gameEndReason = UnknownEnum.Value_5;
    
    window_set_cursor(cr_none);
    txtVersion = scribble($"{string_concat("DEMO v", global.gameVersion)}").align(1, 0);
    
    if (!variable_global_exists("shake"))
        global.shake = new c_shake();
    
    if (!instance_exists(oNetworking))
        global.networkingManager = instance_create_depth(0, 0, 0, oNetworking);
    else if (global.networkingManager.isNetworkGame && (global.lobbyTypeDefault == UnknownEnum.Value_2 || global.lobbyTypeDefault == UnknownEnum.Value_3))
        steam_lobby_set_joinable(true);
    
    if (!variable_global_exists("depthManager"))
        global.depthManager = new depth_manager();
    
    if (!instance_exists(oDebug))
        instance_create_depth(0, 0, global.depthManager.get_depth("cursor") + 1, oDebug);
    
    if (!instance_exists(oParticle))
        instance_create_depth(0, 0, depth, oParticle);
    else
        part_particles_clear(global.particlesSys);
    
    if (!instance_exists(oCamera))
        instance_create_depth(room_width / 2, room_height / 2, depth, oCamera);
    
    with (oEntitie)
        instance_destroy();
    
    with (oToken)
        instance_destroy();
    
    InputPartySetParams(-1, 1, 4, true, UnknownEnum.Value_12, undefined, false);
    
    if (!variable_global_exists("playersCount"))
        global.playersCount = 0;
    
    if (!variable_global_exists("playersManager"))
    {
        global.playersManager = new players_manager();
        global.playersManager.create_player(0);
        InputSetHotswap(true);
    }
    
    if (!variable_global_exists("waitingList"))
        global.waitingList = new waiting_list();
    
    global.waitingList.empty();
    
    if (!instance_exists(oLocalize))
        instance_create_depth(0, 0, depth, oLocalize);
    
    if (!instance_exists(oGUI))
        instance_create_depth(0, 0, depth, oGUI);
    else
        global.__ElementController.set(4);
    
    if (!instance_exists(oUi))
        instance_create_depth(0, 0, global.depthManager.get_depth("ui"), oUi);
    
    if (!instance_exists(oAudio))
    {
        g_change_music_volume();
        g_change_sfx_volume();
        instance_create_depth(0, 0, depth, oAudio);
    }
    
    if (!instance_exists(oSettings))
        instance_create_depth(0, 0, global.depthManager.get_depth("settings"), oSettings);
    
    if (!instance_exists(oControllerDisconnected))
        instance_create_depth(room_width / 2, room_height / 2, global.depthManager.get_depth("controllerDisconnected"), oControllerDisconnected);
    
    if (variable_global_exists("actionCards"))
        global.actionCards = undefined;
    
    global.actionCards = new cDeckItem();
    
    if (variable_global_exists("loopManager"))
        instance_destroy(global.loopManager);
    
    global.loopManager = instance_create_depth(0, 0, global.depthManager.get_depth("fightWindows"), oLoopManager);
    
    if (variable_global_exists("fightManager"))
        instance_destroy(global.fightManager);
    
    global.fightManager = instance_create_depth(0, 0, global.depthManager.get_depth("fightWindows"), oFightManager);
    
    if (variable_global_exists("mainScene"))
        instance_destroy(global.mainScene);
    
    global.mainScene = instance_create_depth(0, 0, global.depthManager.get_depth("mainScene"), oMainScene);
    
    if (!variable_global_exists("effectExecutionManager"))
        global.effectExecutionManager = undefined;
    
    global.effectExecutionManager = new effect_execution_manager();
    
    if (variable_global_exists("cardExecutionManager"))
        global.cardExecutionManager = undefined;
    
    global.cardExecutionManager = new card_execution_manager();
    
    if (variable_global_exists("doorExecutionManager"))
        global.doorExecutionManager = undefined;
    
    global.doorExecutionManager = new door_execution_manager();
    
    if (variable_global_exists("throwExecutionManager"))
        global.throwExecutionManager = undefined;
    
    global.throwExecutionManager = new token_execution_manager();
    
    if (variable_global_exists("deathExecutionManager"))
        global.deathExecutionManager = undefined;
    
    global.deathExecutionManager = new death_execution_manager();
    
    if (variable_global_exists("gemManager"))
        instance_destroy(global.gemManager);
    
    global.gemManager = instance_create_depth(0, 0, global.depthManager.get_depth("effect"), oGemManager);
    
    if (variable_global_exists("doorExit") || variable_global_exists("doorContinue"))
    {
        instance_destroy(global.doorExit);
        instance_destroy(global.doorContinue);
    }
    
    global.doorExit = instance_create_depth(0, 0, global.depthManager.get_depth("choice"), oGemDoor, 
    {
        doorType: UnknownEnum.Value_0
    });
    global.doorContinue = instance_create_depth(0, 0, global.depthManager.get_depth("choice"), oGemDoor, 
    {
        doorType: UnknownEnum.Value_1
    });
    
    if (!instance_exists(oSyncAnimation))
        instance_create_depth(0, 0, 0, oSyncAnimation);
    
    if (variable_global_exists("dayNightCycle"))
        instance_destroy(global.dayNightCycle);
    
    global.dayNightCycle = instance_create_depth(0, 0, global.depthManager.get_depth("dayNight"), oDayNightCycle);
    
    if (global.firstInit == true)
    {
        create_s_effect();
        create_s_entities();
        tutorial_replay();
        tutorial_damage();
        tutorial_dead();
        tutorial_vote();
        forest_faun();
        forest_animalBinder();
        forest_blindUnicorn();
        forest_babayaga();
        monster_banker();
        monster_beggar();
        monster_bellBoy();
        monster_blackMarket();
        monster_butcher();
        monster_carriageMadMan();
        monster_catUndead();
        monster_catAlive();
        monster_catDead();
        monster_costumer();
        forest_creepyRabbit();
        monster_dictator();
        forest_dolly();
        forest_dogHand();
        forest_forgottenSlime();
        forest_fountainSorrow();
        forest_fountainSorrowEmpty();
        forest_funfair();
        forest_frog();
        monster_graveyardKeeper();
        monster_guard();
        forest_hedgehog();
        forest_hybrid();
        forest_hunter();
        forest_innkeeper();
        forest_keeper();
        monster_keyMaster();
        monster_lampostOff();
        monster_lampostOn();
        forest_lamplighter();
        monster_libarian();
        monster_luckyChest();
        forest_maybeSheep();
        monster_madScientist();
        monster_minstrel();
        forest_magicStump();
        forest_mommy();
        forest_mother();
        forest_mushroomKnight();
        monster_ocularist();
        monster_operaGhost();
        forest_oracle();
        monster_pigeon();
        monster_platonia();
        monster_prisonerChest();
        forest_ratten();
        monster_revolutionary();
        monster_pupperteer();
        monster_sandwichMan();
        forest_sheep();
        forest_shepherdess();
        monster_shoeshiner();
        forest_shop();
        forest_snail();
        monster_souillon();
        forest_starMole();
        monster_statue();
        forest_squirrelKing();
        forest_sleepParalysis();
        forest_timeLostWatcher();
        monster_townCrier();
        forest_twoHeadedFawn();
        forest_unconsolableFawn();
        forest_watcher();
        forest_wildBoar();
        forest_statue();
        mountain_frozenStatue();
        global.cards.commonPot = new cCards("cards._commonPot", "cards._commonPotDesc", sprItemCommonPot, UnknownEnum.Value_2, [global.effect.manant, global.effect.commonPot], [UnknownEnum.Value_0, UnknownEnum.Value_0], undefined, [1, -1]);
        init_cards_action_variables();
        global.monsterList.init_monsters();
    }
    
    if (!variable_global_exists("shader"))
        global.shader = new c_shader();
    
    if (global.firstInit == true)
    {
        var _tvProps = [new generate_tv(142, 123, 0, 60, 60, 0, 2, 40, -7, 102, 79), new generate_tv(227, 133, 0, 20, 20, 0, -5, 30, -5, 71, 38), new generate_tv(320, 134, 0, 0, 0, 0, 0, 0, 0, 54, 38), new generate_tv(419, 128, 20, 0, 0, 20, 5, -16, 0, 65, 40), new generate_tv(515, 130, 80, 0, 0, 80, 3, -30, 10, 90, 71), new generate_tv(150, 217, 0, 90, 90, 0, -1, 38, -10, 82, 48), new generate_tv(320, 208, 0, 0, 0, 0, 0, 0, 0, 102, 68), new generate_tv(530, 242, 130, 0, 0, 130, 0, -30, 5, 96, 86)];
        
        for (var _tv = 0; _tv < array_length(_tvProps); _tv++)
        {
            var _inst = instance_create_depth(_tvProps[_tv].x, _tvProps[_tv].y, depth, oTv, 
            {
                z1: _tvProps[_tv].z1,
                z2: _tvProps[_tv].z2,
                z3: _tvProps[_tv].z3,
                z4: _tvProps[_tv].z4,
                objWidth: _tvProps[_tv].objWidth,
                objHeight: _tvProps[_tv].objHeight,
                angleX: _tvProps[_tv].angleX,
                angleY: _tvProps[_tv].angleY,
                angleZ: _tvProps[_tv].angleZ,
                number: _tv
            });
            
            if (_tv == 6)
                global.narratorTv = _inst;
        }
    }
    
    with (oRoomTransition)
        open();
};

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_5 = 5,
    Value_12 = 12
}
