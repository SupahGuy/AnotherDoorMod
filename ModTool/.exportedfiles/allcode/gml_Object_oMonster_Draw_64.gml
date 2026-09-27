upscale_pixelart_start();
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (structMonster == global.monsters.funfair && global.fightManager.state >= UnknownEnum.Value_3)
{
    draw_sprite(sprWheel, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y);
    var _fighters = global.playersManager.get_characters();
    
    for (var _p = 0; _p < get_size(_fighters); _p++)
    {
        if (_fighters[_p].is_in_fight())
        {
            draw_sprite_ext(animArrow.get_sprite(), animArrow.get_current_frame(), (global.uiPos.monsterScene.x - 1) + 34, global.uiPos.monsterScene.y, 1, 1, global.playersManager.get_cursor(_fighters[_p].number).angleFunfair - 90, c_white, global.playersManager.get_cursor(_fighters[_p].number).alphaFunfair);
            draw_sprite_ext(asset_get_index($"sprWheelArrow{_fighters[_p].number + 1}"), 0, (global.uiPos.monsterScene.x - 1) + 34, global.uiPos.monsterScene.y, 1, 1, global.playersManager.get_cursor(_fighters[_p].number).angleFunfair - 90, c_white, global.playersManager.get_cursor(_fighters[_p].number).alphaFunfair);
        }
    }
    
    draw_sprite(sprWheelTop, 0, (global.uiPos.monsterScene.x - 1) + 34, global.uiPos.monsterScene.y);
}
else if (structMonster == global.monsters.babayaga)
{
    draw_sprite_ext(sprBabaYagaScene, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprBabaYagaBell, 0, global.uiPos.monsterScene.x - 1, (global.uiPos.monsterScene.y - 30) + bellOffset, 1, 1, 0, c_white, 1);
    
    if (global.displayControllerAsset != UnknownEnum.Value_0)
    {
        draw_sprite_ext(sprCardItemButton, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y - 90, 1, 1, 0, c_white, 1);
        draw_sprite_ext(animBtnStop.get_sprite(), animBtnStop.get_current_frame(), global.uiPos.monsterScene.x, global.uiPos.monsterScene.y - 90, 1, 1, 0, c_white, 1);
    }
    
    for (var _i = 0; _i < array_length(babaHands); _i++)
    {
        if (babaHands[_i].alpha == 0)
            continue;
        
        draw_sprite_ext(babaHands[_i].sprite, 0, babaHands[_i].x, babaHands[_i].y, 1, 1, 0, c_white, babaHands[_i].alpha);
    }
}
else if (structMonster == global.monsters.faun)
{
    draw_sprite_ext(sprFaunScene, 3, global.uiPos.monsterScene.x, 146, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprFaunScene, 0, global.uiPos.monsterScene.x, 146, 1, 1, 0, c_white, (cos(current_time / 300) + 1) / 2);
}
else if (structMonster == global.monsters.platonia)
{
    draw_sprite_ext(sprPlatoniaScene, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y, 1, 1, 0, c_white, 1);
    draw_sprite(sprPlatoniaClock, clockCurrentImage, global.uiPos.platoniaClock[0].x, global.uiPos.platoniaClock[0].y);
    draw_sprite(sprPlatoniaClock, clockCurrentImage, global.uiPos.platoniaClock[1].x, global.uiPos.platoniaClock[1].y);
}
else if (structMonster == global.monsters.blackMarket)
{
    draw_sprite_ext(sprBlackMarketScene, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y, 1, 1, 0, c_white, 1);
}
else if (structMonster == global.monsters.shop)
{
    draw_sprite(sprShopMoonBg, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y);
    draw_sprite(sprShopMoonWheel, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y);
    draw_sprite(sprShopMoonTop, 0, global.uiPos.monsterScene.x, global.uiPos.monsterScene.y);
}

upscale_pixelart_end();

if (txtName != undefined)
    txtName.blend(16777215, image_alpha).draw(global.uiPos.mobTxt.x * global.zoom, global.uiPos.mobTxt.y * global.zoom);

if (structMonster == global.monsters.babayaga && global.fightManager.state >= UnknownEnum.Value_4)
{
    if (global.displayControllerAsset != UnknownEnum.Value_0)
        txtStop.draw(global.uiPos.monsterScene.x * global.zoom, 22 * global.zoom);
}
else if (structMonster == global.monsters.blackMarket)
{
    txtPendulumValue.draw(global.uiPos.monsterScene.x * global.zoom, (global.uiPos.monsterScene.y - 56) * global.zoom);
}

upscale_pixelart_start();

if (structMonster == global.monsters.blackMarket)
    draw_sprite_ext(hidePriceSprite.get_sprite(), hidePriceSprite.get_current_frame(), global.uiPos.monsterScene.x, global.uiPos.monsterScene.y - 53, 1, 1, 0, c_white, 1);

upscale_pixelart_end();

enum UnknownEnum
{
    Value_0,
    Value_3 = 3,
    Value_4
}
