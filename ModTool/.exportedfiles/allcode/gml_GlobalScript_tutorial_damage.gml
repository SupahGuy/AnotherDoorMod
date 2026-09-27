function tutorial_damage()
{
    global.cards.tutorialDamageLeft = new cCards("cards._tutorialDamageLeft", "cards._tutorialDamageLeftDesc", sprItemTutorialDamageLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_0], [25]);
    global.cards.tutorialDamageRight = new cCards("cards._tutorialDamageRight", "cards._tutorialDamageRightDesc", sprItemTutorialDamageRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_8], [50]);
    
    activate_dialogue = function(arg0 = -1)
    {
        var _alignY = UnknownEnum.Value_2;
        var _alignX = UnknownEnum.Value_2;
        var _close = UnknownEnum.Value_1;
        var _newTooltipList = [new cDialogue("narrator._tutorialDamage1", _alignX, _alignY, UnknownEnum.Value_2, _close), new cDialogue("narrator._tutorialDamage2", _alignX, _alignY, UnknownEnum.Value_2, _close)];
        set_list_of_tooltip(_newTooltipList);
        instance_create_depth(418, 145, 0, oDialogue, _newTooltipList[0]);
    };
    
    global.monsters.tutorialDamage = new c_monster("tutorialDamage", "monster._dummy", "monster._dummyDesc", "UtilityTutorial", UnknownEnum.Value_0, [[global.cards.tutorialDamageLeft, global.cards.tutorialDamageRight]], [], undefined, activate_dialogue);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_8 = 8
}
