if (theCallbackTimer.is_finished())
{
    theCallbackTimer.reset();
    callbackSwitchScreen();
}

if (screenStatePrev != screenState)
    reset_var_to_draw();

if (screenState == UnknownEnum.Value_16)
{
    if (screenStatePrev != screenState)
        spriteToDraw = sprTvTurnOn;
}
else if (screenState == UnknownEnum.Value_18)
{
    if (screenStatePrev != screenState)
        spriteToDraw = sprTvTurnOff;
}
else if (screenState == UnknownEnum.Value_17)
{
    if (screenStatePrev != screenState)
        colorToDraw = global.color.blue6;
}
else if (screenState == UnknownEnum.Value_8)
{
    if (screenStatePrev != screenState)
        colorToDraw = global.color.grey8;
}
else if (screenState == UnknownEnum.Value_14)
{
    if (screenStatePrev != screenState)
        textLabel = number;
}
else if (screenState == UnknownEnum.Value_9)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.red1;
        textLabel = "global._error";
    }
}
else if (screenState == UnknownEnum.Value_10)
{
    if (screenStatePrev != screenState)
    {
        textFont = textTitleFont;
        textLabel = "player._p#1";
        colorToDraw = global.color.blue2;
    }
}
else if (screenState == UnknownEnum.Value_11)
{
    if (screenStatePrev != screenState)
    {
        textFont = textTitleFont;
        textLabel = "player._p#2";
        colorToDraw = global.color.orange1;
    }
}
else if (screenState == UnknownEnum.Value_12)
{
    if (screenStatePrev != screenState)
    {
        textFont = textTitleFont;
        textLabel = "player._p#3";
        colorToDraw = global.color.green2;
    }
}
else if (screenState == UnknownEnum.Value_13)
{
    if (screenStatePrev != screenState)
    {
        textFont = textTitleFont;
        textLabel = "player._p#4";
        colorToDraw = global.color.purple2;
    }
}
else if (screenState == UnknownEnum.Value_22)
{
    if (screenStatePrev != screenState)
        spriteToDraw = choose(sprTvNoise1, sprTvNoise2, sprTvNoise3, sprTvNoise4, sprTvNoise5, sprTvNoise6);
}
else if (screenState == UnknownEnum.Value_20)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.orange1;
        
        if (number == 0)
        {
            textLabel = global.loopManager.get_gem_reward();
            textScale = 2;
        }
        else if (number == 1 && global.displayControllerAsset != UnknownEnum.Value_0)
        {
            colorToDraw = global.color.blue6;
            spriteToDraw = sprBtnLeft;
        }
        
        if (global.loopManager.get_gem_reward() == 0)
        {
            numberOfGemParticles = 0;
        }
        else
        {
            var _reward = min(global.loopManager.gemRewardMax, global.loopManager.get_gem_reward());
            numberOfGemParticles = map_value(_reward, global.loopManager.gemRewardMin, global.loopManager.gemRewardMax, -60, -10);
        }
        
        part_emitter_stream(tvParticlesSys, tvEmmiter, pTvGemParticle, numberOfGemParticles);
    }
}
else if (screenState == UnknownEnum.Value_21)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.green2;
        
        if (number == 4)
        {
            textLabel = global.loopManager.get_gem_reward_next();
            textScale = 2;
        }
        else if (number == 3 && global.displayControllerAsset != UnknownEnum.Value_0)
        {
            colorToDraw = global.color.blue6;
            spriteToDraw = sprBtnRight;
        }
        
        var _reward = min(global.loopManager.gemRewardMax, global.loopManager.get_gem_reward_next());
        numberOfGemParticles = map_value(_reward, global.loopManager.gemRewardMin, global.loopManager.gemRewardMax, -60, -10);
        part_emitter_stream(tvParticlesSys, tvEmmiter, pTvGemParticle, numberOfGemParticles);
    }
}
else if (screenState == UnknownEnum.Value_23)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = choose(global.color.grey2);
        spriteToDraw = sprTvClap;
    }
}
else if (screenState == UnknownEnum.Value_24)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.blue2;
        
        switch (number)
        {
            case 6:
                var _char = global.playersManager.get_characters(0);
                
                if (_char != -4)
                    spriteToDraw = _char.spriteHead;
                
                break;
            
            case 1:
            case 3:
            case 5:
                spriteToDraw = sprTvClap;
                break;
            
            case 7:
                spriteToDraw = sprTvClapBig;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprTvSmile1;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_25)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.orange1;
        
        switch (number)
        {
            case 6:
                var _char = global.playersManager.get_characters(1);
                
                if (_char != -4)
                    spriteToDraw = _char.spriteHead;
                
                break;
            
            case 1:
            case 3:
            case 5:
                spriteToDraw = sprTvClap;
                break;
            
            case 7:
                spriteToDraw = sprTvClapBig;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprTvSmile2;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_26)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.green2;
        
        switch (number)
        {
            case 6:
                var _char = global.playersManager.get_characters(2);
                
                if (_char != -4)
                    spriteToDraw = _char.spriteHead;
                
                break;
            
            case 1:
            case 3:
            case 5:
                spriteToDraw = sprTvClap;
                break;
            
            case 7:
                spriteToDraw = sprTvClapBig;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprTvSmile3;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_27)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.purple2;
        
        switch (number)
        {
            case 6:
                var _char = global.playersManager.get_characters(3);
                
                if (_char != -4)
                    spriteToDraw = _char.spriteHead;
                
                break;
            
            case 1:
            case 3:
            case 5:
                spriteToDraw = sprTvClap;
                break;
            
            case 7:
                spriteToDraw = sprTvClapBig;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprTvSmile4;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_28)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 6:
                colorToDraw = global.color.blue5;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprImbolcAscii;
                break;
            
            case 1:
            case 3:
                spriteToDraw = sprImbolcEyeGrid;
                break;
            
            case 2:
            case 5:
                spriteToDraw = sprImbolcManyEye;
                break;
            
            case 7:
                spriteToDraw = sprImbolcEye;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_29)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 6:
                colorToDraw = global.color.red2;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprSaimanBlood;
                break;
            
            case 1:
            case 3:
                spriteToDraw = sprSaimanEye;
                break;
            
            case 2:
            case 5:
                spriteY = objHeight;
                spriteToDraw = sprSaimanThunder;
                break;
            
            case 7:
                spriteToDraw = sprSaimanSkull;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_31)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 6:
                colorToDraw = global.color.blue6;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprYulePlanet2;
                break;
            
            case 1:
            case 3:
                spriteToDraw = sprYuleStar;
                break;
            
            case 2:
            case 5:
                spriteToDraw = sprYuleTimer;
                break;
            
            case 7:
                spriteToDraw = sprYulePlanet;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_30)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 6:
                colorToDraw = global.color.blue3;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprBluescreenSmile;
                break;
            
            case 1:
            case 3:
                spriteToDraw = sprBluescreenCard;
                break;
            
            case 2:
            case 5:
                spriteToDraw = sprBluescreenGlitch;
                break;
            
            case 7:
                spriteToDraw = sprBluescreenHelp;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_32)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.blue6;
        spriteToDraw = sprUiTopCloneMoonAlpha;
    }
}
else if (screenState == UnknownEnum.Value_33)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 6:
                colorToDraw = global.color.purple4;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprLithaRorschach;
                colorToDraw = global.color.blue6;
                break;
            
            case 1:
            case 3:
                spriteToDraw = sprLithaShape;
                break;
            
            case 2:
            case 5:
                spriteToDraw = sprLithaCross;
                break;
            
            case 7:
                colorToDraw = global.color.purple2;
                spriteToDraw = sprLithaNumber;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_34)
{
    if (screenStatePrev != screenState)
    {
        spriteToDraw = sprNarrateur1;
        colorToDraw = global.color.grey1;
        spriteY = objHeight;
    }
}
else if (screenState == UnknownEnum.Value_35)
{
    if (screenStatePrev != screenState)
    {
        spriteToDraw = sprNarrateur1;
        colorToDraw = global.color.grey1;
        spriteY = objHeight;
    }
}
else if (screenState == UnknownEnum.Value_36)
{
    if (screenStatePrev != screenState)
    {
        spriteToDraw = sprNarrateur1;
        colorToDraw = global.color.grey1;
        spriteY = objHeight;
    }
}
else if (screenState == UnknownEnum.Value_37)
{
    if (screenStatePrev != screenState)
    {
        spriteToDraw = sprNarrateur1;
        colorToDraw = global.color.grey1;
        spriteY = objHeight;
    }
}
else if (screenState == UnknownEnum.Value_38)
{
    if (screenStatePrev != screenState)
    {
        spriteToDraw = sprNarrateur1;
        colorToDraw = global.color.grey1;
        spriteY = objHeight;
    }
}
else if (screenState == UnknownEnum.Value_39)
{
    if (screenStatePrev != screenState)
    {
        spriteToDraw = sprNarrateur2;
        colorToDraw = global.color.grey1;
        spriteY = objHeight;
    }
}
else if (screenState == UnknownEnum.Value_40)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.grey6;
        var _monsters = global.monsterList.encounters[global.loopManager.get_current_door()];
        var _monsterLength = array_length(_monsters);
        
        if (number <= (_monsterLength - 1))
        {
            var _monsterName = _monsters[number];
            
            if (variable_instance_exists(global.monsters, _monsterName))
            {
                var _monster = variable_instance_get(global.monsters, _monsterName);
                var _monsterSpriteName = _monster.spriteName;
                spriteToDraw = asset_get_index($"spr{_monsterSpriteName}Idle");
            }
        }
        else
        {
            screenStateNext = UnknownEnum.Value_22;
        }
    }
}
else if (screenState == UnknownEnum.Value_7)
{
    if (screenStatePrev != screenState)
    {
        update_monsters_number();
        colorToDraw = global.color.blue6;
    }
}
else if (screenState == UnknownEnum.Value_6)
{
    if (screenStatePrev != screenState)
    {
        spriteToDraw = sprTvCalibration;
        image_xscale = objWidth / sprite_get_width(sprTvCalibration);
        image_yscale = objHeight / sprite_get_width(sprTvCalibration);
        spriteX = 0;
        spriteY = 0;
    }
}
else if (screenState == UnknownEnum.Value_5)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.blue4;
        typistActivated = true;
        typist.in(4 * global.dialogueTextSpeed, 0);
        var _argsTxt = $"#{global.playersCount}";
        
        for (var _i = 0; _i < 4; _i++)
        {
            if (_i < global.playersCount)
            {
                if (global.networkingManager.isNetworkGame)
                    _argsTxt = string_concat(_argsTxt, $"#{global.playersManager.get_name(_i)}");
                else
                    _argsTxt = string_concat(_argsTxt, "#Ok");
            }
            else
            {
                _argsTxt = string_concat(_argsTxt, "#???");
            }
        }
        
        textLabel = $"secret._tvSetup{_argsTxt}";
        textAlignH = 0;
        textAlignV = 0;
    }
}
else if (screenState == UnknownEnum.Value_4)
{
    if (screenStatePrev != screenState)
    {
        if (screenStatePrev != screenState)
        {
            switch (number)
            {
                case 6:
                    spriteToDraw = sprTvReward;
                    break;
                
                case 0:
                case 4:
                    colorToDraw = global.color.orange1;
                    spriteToDraw = sprTvSmile6;
                    break;
                
                case 1:
                case 3:
                    colorToDraw = global.color.yellow1;
                    spriteToDraw = sprTvSmallHand1;
                    break;
                
                case 5:
                case 7:
                    spriteToDraw = sprTvRewardBg;
                    break;
            }
        }
    }
}
else if (screenState == UnknownEnum.Value_41)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 1:
                if (global.displayControllerAsset == UnknownEnum.Value_0)
                    spriteToDraw = sprTvBiomeForest3;
                else
                    spriteToDraw = sprBtnLeft;
                
                break;
            
            case 3:
                if (global.displayControllerAsset == UnknownEnum.Value_0)
                    spriteToDraw = sprTvBiomeForest3;
                else
                    spriteToDraw = sprBtnRight;
                
                break;
            
            case 6:
            case 0:
            case 4:
                spriteToDraw = sprTvBiomeForest1;
                break;
            
            case 5:
            case 7:
                spriteToDraw = sprTvBiomeForest2;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_3)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 1:
            case 3:
                spriteToDraw = sprTvWelcome3;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprTvWelcome2;
                break;
            
            case 6:
                spriteToDraw = sprTvLogoAnotherDoor;
                break;
            
            case 5:
                spriteToDraw = sprTvWelcome1;
                break;
            
            case 7:
                spriteToDraw = sprTvWelcome4;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_2)
{
    if (screenStatePrev != screenState)
    {
        colorToDraw = global.color.blue4;
        
        switch (number)
        {
            case 1:
            case 2:
            case 3:
                spriteToDraw = sprTvGemRuleBg;
                break;
            
            case 0:
            case 4:
                spriteToDraw = sprTvGemRuleHeart;
                break;
            
            case 5:
            case 7:
                spriteToDraw = sprTvSmile5;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_0)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 0:
                colorToDraw = global.color.red1;
                spriteToDraw = sprTvBigHand1;
                break;
            
            case 1:
                colorToDraw = global.color.red1;
                spriteToDraw = sprTvSmallHand2;
                break;
            
            case 5:
                colorToDraw = global.color.red1;
                spriteToDraw = sprTvSmallHand3;
                break;
        }
    }
}
else if (screenState == UnknownEnum.Value_1)
{
    if (screenStatePrev != screenState)
    {
        switch (number)
        {
            case 4:
                colorToDraw = global.color.green1;
                spriteToDraw = sprTvBigHand1;
                image_xscale = -1;
                break;
            
            case 3:
                colorToDraw = global.color.green1;
                spriteToDraw = sprTvSmallHand2;
                image_xscale = -1;
                break;
            
            case 7:
                colorToDraw = global.color.green1;
                spriteToDraw = sprTvBigHand2;
                image_xscale = -1;
                break;
        }
    }
}

if (screenStatePrev != screenState)
{
    if (screenStatePrev == UnknownEnum.Value_22)
    {
    }
    
    if (textLabel != "")
        textToDraw = scribble(textLabel, $"oTv{number}").starting_format(textFont, 16777215).blend(textColor, 1).align(textAlignH, textAlignV).scale(textScale).wrap(objWidth - 12);
    
    if (spriteToDraw != -1)
        sprite_index = spriteToDraw;
}

if (screenState == UnknownEnum.Value_24 || screenState == UnknownEnum.Value_25 || screenState == UnknownEnum.Value_26 || screenState == UnknownEnum.Value_27)
{
    if (number == 6)
        image_xscale = sign(cos(current_time / 250)) * 1;
    else if (number == 4 || number == 1 || number == 5)
        image_xscale = -1;
}
else if (screenState == UnknownEnum.Value_2)
{
    if (number == 7)
        image_xscale = -1;
}
else if (screenState == UnknownEnum.Value_4)
{
    if (number == 4 || number == 3 || number == 7)
        image_xscale = -1;
}

screenStatePrev = screenState;
screenState = screenStateNext;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_16 = 16,
    Value_17,
    Value_18,
    Value_20 = 20,
    Value_21,
    Value_22,
    Value_23,
    Value_24,
    Value_25,
    Value_26,
    Value_27,
    Value_28,
    Value_29,
    Value_30,
    Value_31,
    Value_32,
    Value_33,
    Value_34,
    Value_35,
    Value_36,
    Value_37,
    Value_38,
    Value_39,
    Value_40,
    Value_41
}
