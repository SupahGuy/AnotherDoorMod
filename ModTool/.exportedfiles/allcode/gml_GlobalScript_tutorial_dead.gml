function tutorial_dead()
{
    global.cards.tutorialDead = new cCards("cards._tutorialDead", "cards._tutorialDeadDesc", sprItemTutorialDead, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [[1, 100]], undefined, [UnknownEnum.Value_7]);
    
    activate_dialogue = function(arg0 = -1)
    {
        var _alignY = UnknownEnum.Value_2;
        var _alignX = UnknownEnum.Value_2;
        var _close = UnknownEnum.Value_1;
        var _newTooltipList = [new cDialogue("narrator._tutorialDead1", _alignX, _alignY, UnknownEnum.Value_2, _close)];
        set_list_of_tooltip(_newTooltipList);
        instance_create_depth(418, 145, 0, oDialogue, _newTooltipList[0]);
    };
    
    global.monsters.tutorialDead = new c_monster("tutorialDead", "monster._dummy", "monster._dummyDesc", "UtilityTutorial", UnknownEnum.Value_0, [[global.cards.tutorialDead]], [], undefined, activate_dialogue);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_7 = 7
}
