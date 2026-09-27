function c_mercenary(arg0, arg1, arg2 = 0, arg3, arg4) constructor
{
    className = arg0;
    desc = arg1;
    hpMax = arg2;
    spriteName = arg3;
    charType = arg4;
}

function c_monster_data() constructor
{
    numberOfAppearances = 0;
    
    get_appearance = function()
    {
        return numberOfAppearances;
    };
    
    incr_appearance = function()
    {
        numberOfAppearances++;
    };
    
    reset = function()
    {
        numberOfAppearances = 0;
    };
}

function c_monster(arg0, arg1, arg2, arg3, arg4, arg5 = [], arg6 = [], arg7 = undefined, arg8 = undefined) constructor
{
    structName = arg0;
    className = arg1;
    desc = arg2;
    spriteName = arg3;
    category = arg4;
    cards = arg5;
    mushroomCards = arg6;
    monster_script_end = arg7;
    activate_dialogue = arg8;
    data = new c_monster_data();
}

global.mercenaries = [];
global.monsters = {};

function create_s_entities()
{
    var _shadow = new c_mercenary("mercenary._shadowName", "mercenary._shadowDesc", 100, "Rogue", UnknownEnum.Value_1);
    var _flynt = new c_mercenary("mercenary._flyntName", "mercenary._flyntDesc", 100, "Knight", UnknownEnum.Value_0);
    var _simone = new c_mercenary("mercenary._simoneName", "mercenary._simoneDesc", 100, "Necromancer", UnknownEnum.Value_2);
    var _aise = new c_mercenary("mercenary._aiseName", "mercenary._aiseDesc", 100, "Aise", UnknownEnum.Value_3);
    var _basalt = new c_mercenary("mercenary._basaltName", "mercenary._basaltDesc", 100, "Basalt", UnknownEnum.Value_4);
    var _winslet = new c_mercenary("mercenary._winsletName", "mercenary._winsletDesc", 100, "Winslet", UnknownEnum.Value_5);
    array_push(global.mercenaries, _shadow, _flynt, _winslet, _basalt, _simone, _aise);
    global.mercenariesCount = array_length(global.mercenaries);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5
}
