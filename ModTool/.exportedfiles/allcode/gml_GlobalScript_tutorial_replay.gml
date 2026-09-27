function tutorial_replay()
{
    global.cards.tutorialReplayLeft = new cCards("cards._tutorialReplayLeft", "cards._tutorialReplayLeftDesc", sprItemAcceptConditions, UnknownEnum.Value_1, [global.effect.nothing], [UnknownEnum.Value_0]);
    global.cards.tutorialReplayCenter = new cCards("cards._tutorialReplayCenter", "cards._tutorialReplayCenterDesc", sprItemFunfair1, UnknownEnum.Value_1, [global.effect.gem, global.effect.nothing], [UnknownEnum.Value_0, UnknownEnum.Value_0], [1, 1], [-1, -1], [UnknownEnum.Value_0, UnknownEnum.Value_0], [UnknownEnum.Value_0, UnknownEnum.Value_0], [100, 100]);
    global.cards.tutorialReplayRight = new cCards("cards._tutorialReplayRight", "cards._tutorialReplayRightDesc", sprItemAgainstAuthority, UnknownEnum.Value_1, [global.effect.tutorial], [UnknownEnum.Value_0], [-1], [1]);
    
    activate_dialogue = function(arg0 = -1)
    {
        var _tooltipDialogueList = [];
        
        if (arg0 == 0)
        {
            for (var _t = 0; _t < global.playersCount; _t++)
            {
                var _target = global.playersManager.get_characters(_t);
                
                if (_target != -4)
                {
                    var _hpMaxInit = _target.hpMaxInit;
                    _target.rezurrection(_hpMaxInit, _hpMaxInit, false);
                }
            }
        }
        
        switch (arg0)
        {
            case 0:
            case 28:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay1", "narrator._tutorialReplay2");
                break;
            
            case 1:
            case 29:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay3");
                break;
            
            case 2:
            case 30:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay4");
                break;
            
            case 3:
            case 31:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay5");
                break;
            
            case 5:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay6", "narrator._tutorialReplay7");
                break;
            
            case 7:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay8");
                break;
            
            case 8:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay9");
                break;
            
            case 9:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay10");
                break;
            
            case 12:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay11");
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayRight, global.cards.tutorialReplayLeft]];
                break;
            
            case 13:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay12");
                global.cards.tutorialReplayLeft.sprite = sprItemAgainstAuthority;
                global.cards.tutorialReplayRight.sprite = sprItemAcceptConditions;
                break;
            
            case 14:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay13", "narrator._tutorialReplay14");
                global.cards.tutorialReplayLeft.sprite = sprItemAcceptConditions;
                global.cards.tutorialReplayRight.sprite = sprItemAgainstAuthority;
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayLeft, global.cards.tutorialReplayRight]];
                break;
            
            case 15:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay15");
                break;
            
            case 16:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay16");
                break;
            
            case 17:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay17");
                break;
            
            case 19:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay18");
                break;
            
            case 20:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay19");
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayCenter, global.cards.tutorialReplayRight]];
                break;
            
            case 21:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay20");
                global.cards.tutorialReplayCenter.amount[0] = 2;
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayCenter, global.cards.tutorialReplayRight]];
                break;
            
            case 22:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay21");
                global.cards.tutorialReplayCenter.amount[0] = 4;
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayCenter, global.cards.tutorialReplayRight]];
                break;
            
            case 23:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay22", "narrator._tutorialReplay23");
                global.cards.tutorialReplayCenter.amount[0] = 8;
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayCenter, global.cards.tutorialReplayRight]];
                break;
            
            case 24:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay24");
                global.cards.tutorialReplayCenter.amount[0] = 16;
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayCenter, global.cards.tutorialReplayRight]];
                break;
            
            case 25:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay25");
                global.cards.tutorialReplayCenter.amount[0] = 1;
                global.fightManager.encounter.cards = [[global.cards.tutorialReplayLeft, global.cards.tutorialReplayRight]];
                break;
            
            case 33:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay26");
                break;
            
            case 34:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay27");
                break;
            
            case 35:
                array_push(_tooltipDialogueList, "narrator._tutorialReplay28");
                break;
            
            default:
                break;
        }
        
        var _tooltipDialogueListLength = array_length(_tooltipDialogueList);
        
        if (_tooltipDialogueListLength > 0)
        {
            var _alignY = UnknownEnum.Value_2;
            var _alignX = UnknownEnum.Value_2;
            var _close = UnknownEnum.Value_1;
            var _newTooltipList = [];
            
            for (var _i = 0; _i < _tooltipDialogueListLength; _i++)
            {
                if (_i == (_tooltipDialogueListLength - 1))
                    array_push(_newTooltipList, new cDialogue(_tooltipDialogueList[_i], _alignX, _alignY, UnknownEnum.Value_2, _close));
                else
                    array_push(_newTooltipList, new cDialogue(_tooltipDialogueList[_i], _alignX, _alignY, UnknownEnum.Value_2, _close));
            }
            
            set_list_of_tooltip(_newTooltipList);
            instance_create_depth(418, 145, 0, oDialogue, _newTooltipList[0]);
        }
    };
    
    global.monsters.tutorialReplay = new c_monster("tutorialReplay", "monster._dummy", "monster._dummyDesc", "UtilityTutorial", UnknownEnum.Value_0, [[global.cards.tutorialReplayLeft, global.cards.tutorialReplayRight]], [], undefined, activate_dialogue);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
