function tutorial_vote()
{
    global.cards.tutorialVoteLeft = new cCards("cards._tutorialVoteLeft", "cards._tutorialVoteLeftDesc", sprItemTutorialDamageLeft, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_13], [40]);
    global.cards.tutorialVoteRight = new cCards("cards._tutorialVoteRight", "cards._tutorialVoteRightDesc", sprItemTutorialDamageRight, UnknownEnum.Value_1, [global.effect.attack], [UnknownEnum.Value_12], [40]);
    
    activate_dialogue = function(arg0 = -1)
    {
        var _alignY = UnknownEnum.Value_2;
        var _alignX = UnknownEnum.Value_2;
        var _newTooltipList = [new cDialogue("narrator._tutorialVoteDead1", _alignX, _alignY, UnknownEnum.Value_2), new cDialogue("narrator._tutorialVoteDead2", _alignX, _alignY, UnknownEnum.Value_2), new cDialogue("narrator._tutorialVoteDead3", _alignX, _alignY, UnknownEnum.Value_2)];
        set_list_of_tooltip(_newTooltipList);
        instance_create_depth(418, 145, 0, oDialogue, _newTooltipList[0]);
    };
    
    global.monsters.tutorialVote = new c_monster("tutorialVote", "monster._dummy", "monster._dummyDesc", "UtilityTutorial", UnknownEnum.Value_0, [[global.cards.tutorialVoteLeft, global.cards.tutorialVoteRight]], [], undefined, activate_dialogue);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_12 = 12,
    Value_13
}
