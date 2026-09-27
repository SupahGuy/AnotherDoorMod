function forest_shop()
{
    global.cards.shopItem1 = new cCards("", "", sprItemAcceptConditions, UnknownEnum.Value_9, [global.effect.heal], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.shopItem2 = new cCards("", "", sprItemAcceptConditions, UnknownEnum.Value_9, [global.effect.heal], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.shopItem3 = new cCards("", "", sprItemAcceptConditions, UnknownEnum.Value_9, [global.effect.heal], [UnknownEnum.Value_0], [-1], [1]);
    global.cards.shopItem4 = new cCards("", "", sprItemAcceptConditions, UnknownEnum.Value_9, [global.effect.heal], [UnknownEnum.Value_0], [-1], [1]);
    
    var _activate_dialogue = function()
    {
        if (global.japetCounter == 0)
        {
            global.japetCounter = 1;
            
            talk_finished = function()
            {
                with (oMonster)
                    draw_shop();
            };
            
            global.audio.fade_out(undefined, true);
            var _alignY = UnknownEnum.Value_2;
            var _alignX = UnknownEnum.Value_1;
            var _newTooltipList = [new cDialogue("shop._introductionMoon1", _alignX, _alignY, UnknownEnum.Value_4), new cDialogue("shop._introductionMoon2", _alignX, _alignY, UnknownEnum.Value_4), new cDialogue("shop._introductionMoon3", _alignX, _alignY, UnknownEnum.Value_4), new cDialogue("shop._introductionMoon4", _alignX, _alignY, UnknownEnum.Value_4), new cDialogue("shop._introductionMoon5", _alignX, _alignY, UnknownEnum.Value_4), new cDialogue("shop._introductionMoon6", _alignX, _alignY, UnknownEnum.Value_4), new cDialogue("shop._introductionMoon7", _alignX, _alignY, UnknownEnum.Value_4), new cDialogue("shop._introductionMoon8", _alignX, _alignY, UnknownEnum.Value_4, undefined, undefined, undefined, undefined, talk_finished)];
            set_list_of_tooltip(_newTooltipList);
            instance_create_depth(155, 70, 0, oDialogue, _newTooltipList[0]);
        }
        else
        {
            with (oMonster)
                draw_shop();
        }
    };
    
    global.monsters.shop = new c_monster("shop", "monster._shop", "monster._shopDesc", "UtilityShop", UnknownEnum.Value_7, [[global.cards.shopItem1, global.cards.shopItem2, global.cards.shopItem3, global.cards.shopItem4]], [], undefined, _activate_dialogue);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_4 = 4,
    Value_7 = 7,
    Value_9 = 9
}
