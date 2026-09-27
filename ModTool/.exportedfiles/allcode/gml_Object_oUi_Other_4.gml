if (room == roomStage)
{
    btnCursor = instance_create_layer(583, 1, "Ui", oGuiButton, 
    {
        sprite_index: sprUiTopCursor,
        depth: global.depthManager.get_depth("ui") - 1
    });
    var _structTooltip = new cTooltip(id, undefined, "global._topCursorShow", UnknownEnum.Value_2, UnknownEnum.Value_1);
    var _tooltipCursor = instance_create_depth(btnCursor.x + round(sprite_get_width(sprUiTopCursor) / 2), btnCursor.y + sprite_get_height(sprUiTopCursor) + 2, global.depthManager.get_depth("tooltip"), oTooltip, _structTooltip);
    btnCursor.set_tooltip(_tooltipCursor);
    btnSettings = instance_create_layer(605, 1, "Ui", oGuiButton, 
    {
        sprite_index: sprUiTopSettings,
        depth: global.depthManager.get_depth("ui") - 1
    });
    _structTooltip = new cTooltip(id, undefined, "global._topSettings", UnknownEnum.Value_2, UnknownEnum.Value_1);
    var _tooltipSettings = instance_create_depth(btnSettings.x + round(sprite_get_width(sprUiTopSettings) / 2), btnSettings.y + sprite_get_height(sprUiTopSettings) + 2, global.depthManager.get_depth("tooltip"), oTooltip, _structTooltip);
    btnSettings.set_tooltip(_tooltipSettings);
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_2
}
