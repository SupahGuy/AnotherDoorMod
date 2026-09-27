roomW = room_width;
effects = array_create(0);
effectByLine = 1;
effectW = 200;
effectH = 100;
effectOffsetX = (room_width - effectW) / 2;
effectSpacingY = 16;
var _effectOffsetY = 0;
var _effectKey = variable_struct_get_names(global.effect);
array_sort(_effectKey, true);

for (var i = 0; i < get_size(global.effect); i++)
{
    var _k = _effectKey[i];
    var _v = variable_struct_get(global.effect, _k);
    var _add = true;
    
    for (var _c = 0; _c < array_length(_v.condition); _c++)
    {
        if (_v.condition[_c] == UnknownEnum.Value_0)
            _add = false;
    }
    
    if (_add)
    {
        var _struct = 
        {
            name: scribble(_v.name).wrap(effectW),
            desc: scribble(_v.desc).wrap(effectW),
            sprite_index: _v.sprite,
            offsetY: _effectOffsetY
        };
        array_insert(effects, 0, _struct);
        _effectOffsetY += (_struct.name.get_height() + _struct.desc.get_height() + effectSpacingY);
    }
}

effectLength = get_size(effects);
currentMonster = undefined;
monstersArray = variable_struct_get_names(global.monsters);
array_sort(monstersArray, true);
monstersCounter = 0;

set_current_monster = function(arg0)
{
    with (oCardItem)
        instance_destroy();
    
    var _k = monstersArray[abs(arg0)];
    currentMonster = variable_struct_get(global.monsters, _k);
    currentMonsterSprite = asset_get_index($"spr{currentMonster.spriteName}Idle");
    
    for (var _c = 0; _c < array_length(currentMonster.cards[0]); _c++)
    {
        var _card = instance_create_depth(0, 0, global.depthManager.get_depth("cards"), oCardItem, 
        {
            item: currentMonster.cards[0][_c],
            cardNumber: _c,
            cardNumberTotal: array_length(currentMonster.cards),
            sprite_index: sprCardItemBg,
            cardType: UnknownEnum.Value_0,
            isDisabled: false
        });
    }
};

set_current_monster(monstersCounter);

enum UnknownEnum
{
    Value_0
}
