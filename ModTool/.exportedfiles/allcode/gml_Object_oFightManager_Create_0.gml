executeCounter = 0;
executeCounterMax = 0;
executeCounterFinished = false;
encounter = -4;
state = undefined;
statePrev = undefined;
stateNext = undefined;
stateLabel = "";
fightCounter = 0;

incr_fight_counter = function()
{
    fightCounter++;
};

get_fight_counter = function()
{
    return fightCounter;
};

reset_fight_counter = function()
{
    fightCounter = 0;
};

depth = global.depthManager.get_depth("fightWindows");

get_encounter = function()
{
    return encounter;
};

fill_encounter = function(arg0)
{
    var _x = global.uiPos.mob.x;
    var _y = global.uiPos.mob.y;
    encounter = instance_create_depth(_x, _y, global.depthManager.get_depth("fighters"), oMonster, 
    {
        structMonster: arg0
    });
};

nbrFightersAtCardDraw = 0;
blocSpacing = 16;
titleSpacing = 4;
counterStartW = 38;
counterMidW = 17;
counterTotal = 0;
counterWidth = 0;
counterX = 0;
counterY = 210;
firstRun = true;
isFightActive = false;

set_room = function()
{
    global.audio.reset_effect();
    var _nextEncounter = global.loopManager.get_current_monster();
    _nextEncounter.data.incr_appearance();
    fill_encounter(_nextEncounter);
    counterTotal = global.loopManager.get_current_door_length();
    counterWidth = (counterStartW * 2) + ((counterTotal - 1) * counterMidW);
    counterX = round(107 - (counterWidth / 2));
    counterArray = [];
    
    for (var _i = 0; _i < counterTotal; _i++)
    {
        var _spriteIcon;
        
        switch (global.loopManager.get_monster_at_position(_i).category)
        {
            case UnknownEnum.Value_0:
                if (global.loopManager.get_monster_at_position(_i) == global.monsters.statueForest)
                    _spriteIcon = sprFightWindowStatue;
                else
                    _spriteIcon = sprFightWindowForest;
                
                break;
            
            case UnknownEnum.Value_1:
                _spriteIcon = sprFightWindowCity;
                break;
            
            case UnknownEnum.Value_7:
                _spriteIcon = sprFightWindowShop;
                break;
            
            case UnknownEnum.Value_5:
                _spriteIcon = sprFightWindowBaba;
                break;
            
            case UnknownEnum.Value_4:
                _spriteIcon = sprFightWindowHenry;
                break;
            
            case UnknownEnum.Value_6:
                _spriteIcon = sprFightWindowFaun;
                break;
            
            case UnknownEnum.Value_3:
                _spriteIcon = sprFightWindowHeal;
                break;
            
            default:
                _spriteIcon = sprFightWindowForest;
                break;
        }
        
        array_push(counterArray, _spriteIcon);
    }
    
    var _fighters = global.playersManager.get_characters();
    
    for (var _f = 0; _f < get_size(_fighters); _f++)
    {
        _fighters[_f].hpLostDuringTheMonster = 0;
        _fighters[_f].save_hp_previous_turn();
    }
    
    incr_fight_counter();
    isFightActive = true;
};

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_4,
    Value_5,
    Value_6,
    Value_7
}
