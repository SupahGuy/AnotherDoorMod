global.vfxEffectSpeed = 1;
ini_open("settings.ini");
global.gameVersion = "0.5.24";
global.botMode = false;
global.debugSpeedMult = 1;
global.firstInit = true;
global.isTutorialDone = ini_read_real("tutorial", "done", false);
global.musicVolume = ini_read_real("audio", "musicVolume", 50);
global.sfxVolume = ini_read_real("audio", "sfxVolume", 50);
global.nextMusic = Down_The_Rabbit_Hole;
global.displayControllerAsset = UnknownEnum.Value_0;

function set_display_controller_asset()
{
    var _hasMouse = false;
    var _hasController = false;
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        if (InputPlayerGetGhost(_i))
            continue;
        
        if (InputPlayerUsingGamepad(_i))
            _hasController = true;
        else if (InputPlayerUsingKbm(_i))
            _hasMouse = true;
    }
    
    if (_hasMouse && _hasController)
        global.displayControllerAsset = UnknownEnum.Value_2;
    else if (_hasController)
        global.displayControllerAsset = UnknownEnum.Value_1;
    else
        global.displayControllerAsset = UnknownEnum.Value_0;
}

global.currentLanguage = ini_read_real("language", "currentLanguage", -1);

if (global.currentLanguage == -1)
{
    switch (os_get_language())
    {
        case "en":
            global.currentLanguage = 0;
            break;
        
        case "fr":
            global.currentLanguage = 1;
            break;
        
        case "de":
            global.currentLanguage = 2;
            break;
        
        case "jp":
            global.currentLanguage = 3;
            break;
        
        case "zh":
            global.currentLanguage = 4;
            break;
        
        case "es":
            global.currentLanguage = 5;
            break;
        
        case "pt":
            global.currentLanguage = 6;
            break;
        
        case "ru":
            global.currentLanguage = 7;
            break;
        
        case "it":
            global.currentLanguage = 8;
            break;
        
        default:
            global.currentLanguage = 0;
            break;
    }
}

ini_write_real("language", "currentLanguage", global.currentLanguage);
g_setup_lang();
global.fontSize = ini_read_real("font", "size", 100);
global.fontStyle = ini_read_real("font", "style", 0);
global.fontScaleTitle = 1;
global.fontShadowAlpha = (global.fontStyle == 0) ? 0 : 1;
global.fontBorderThickness = (global.fontStyle == 0) ? 0 : 1;
global.fullScreen = ini_read_real("display", "fullScreen", 0);
global.zoomDefault = 2;
global.zoom = global.zoomDefault;
global.zoomMax = 3;
global.zoomMin = 2;
global.zoomPrevious = global.zoom;
global.gameWidth = 640;
global.gameHeight = 360;
global.guiWidth = global.gameWidth;
global.guiHeight = global.gameHeight;
global.guiWQuarter = global.gameWidth / 4;
global.gameDrawWidth = global.gameWidth * global.zoom;
global.gameDrawHeight = global.gameHeight * global.zoom;
global.gameDrawOffsetX = 0;
global.gameDrawOffsetY = 0;
global.windowWidth = global.gameWidth * global.zoom;
global.windowHeight = global.gameHeight * global.zoom;
global.aspectRatio = global.windowWidth / global.windowHeight;
display_set_gui_size(global.gameDrawWidth, global.gameDrawHeight);
global.crtEffect = ini_read_real("display", "crtEffect", 1);
global.upscaleMatrix = -1;
global.lobbyNameChanged = ini_read_real("lobby", "nameChanged", false);
global.lobbyNameDefault = ini_read_string("lobby", "name", "");
global.lobbyTypeDefault = ini_read_real("lobby", "type", UnknownEnum.Value_2);
global.lobbyNbrPlayersDefault = ini_read_real("lobby", "nbrPlayers", 4);
global.gameCount = ini_read_real("gameplay", "counter", 1);
global.tokens = [
{
    type: UnknownEnum.Value_3,
    sprite: sprTokenLostInTime
}, 
{
    type: UnknownEnum.Value_4,
    sprite: sprTokenFourLeaf
}, 
{
    type: UnknownEnum.Value_5,
    sprite: sprTokenForeverKing
}, 
{
    type: UnknownEnum.Value_6,
    sprite: sprTokenGnomish
}, 
{
    type: UnknownEnum.Value_10,
    sprite: sprTokenCalculatedRisk
}, 
{
    type: UnknownEnum.Value_9,
    sprite: sprTokenAutocracy
}, 
{
    type: UnknownEnum.Value_18,
    sprite: sprTokenVulture
}, 
{
    type: UnknownEnum.Value_20,
    sprite: sprTokenCan
}, 
{
    type: UnknownEnum.Value_11,
    sprite: sprTokenValor
}, 
{
    type: UnknownEnum.Value_12,
    sprite: sprTokenBlessed
}, 
{
    type: UnknownEnum.Value_13,
    sprite: sprTokenLoniless
}, 
{
    type: UnknownEnum.Value_14,
    sprite: sprTokenUnstable
}, 
{
    type: UnknownEnum.Value_15,
    sprite: sprTokenPhilosopher
}, 
{
    type: UnknownEnum.Value_16,
    sprite: sprTokenMasterKey
}, 
{
    type: UnknownEnum.Value_17,
    sprite: sprTokenNecrotic
}, 
{
    type: UnknownEnum.Value_19,
    sprite: sprTokenDonkeyCap
}, 
{
    type: UnknownEnum.Value_21,
    sprite: sprTokenWerewolf
}];
ini_close();
global.disabledCharacters = ["[", "]", "#"];
global.color = 
{
    blue1: 13884832,
    blue2: 12038255,
    blue3: 10321751,
    blue4: 8804170,
    blue5: 6699838,
    blue6: 4532537,
    grey8: 3087917,
    grey7: 4140613,
    grey6: 5260637,
    grey5: 6840955,
    grey4: 8290460,
    grey3: 10266563,
    grey2: 11848155,
    grey1: 13757692,
    green1: 9820074,
    green2: 8564836,
    green3: 8751176,
    green4: 7625535,
    brown1: 10995947,
    brown2: 8691923,
    brown3: 7110328,
    brown4: 5395087,
    brown5: 4733290,
    purple1: 7962565,
    purple2: 8214955,
    purple3: 6569340,
    purple4: 4533070,
    red2: 5192570,
    red1: 5524393,
    orange2: 6189784,
    orange1: 7446512,
    yellow1: 9555959
};
global.color.player1 = global.color.blue1;
global.color.player2 = global.color.orange1;
global.color.player3 = global.color.green1;
global.color.player4 = global.color.purple2;
scribble_glyph_set("ftMonobit", " ", UnknownEnum.Value_8, 3, false);
scribble_glyph_set("ftMonobit", " ", UnknownEnum.Value_7, 9, false);
scribble_glyph_set("ftPixeloidSans", " ", UnknownEnum.Value_7, 10, false);
scribble_glyph_set("ftAlkhemikal", " ", UnknownEnum.Value_6, 12, false);
global.fontScaleLatin = 1;
global.fontScaleCjk = 1;
global.fontScaleOpenEnded = global.fontScaleLatin;
font_add_enable_aa(false);
global.fntLatinPixelart = font_add(working_directory + "monobit.ttf", 11, false, false, 32, 128);
global.fntJPixelart = font_add(working_directory + "fusion-pixel-10px-monospaced-ja.ttf", 7.5, false, false, 32, 128);
global.fntCPixelart = font_add(working_directory + "fusion-pixel-10px-monospaced-zh_hans.ttf", 7.5, false, false, 32, 128);
global.fntCYPixelart = font_add(working_directory + "PixeloidSans.ttf", 7, false, false, 32, 128);
font_add_enable_aa(true);
global.fntLatin = font_add(working_directory + "NotoSans-ExtraBold.ttf", 32, false, false, 32, 128);
font_enable_sdf(global.fntLatin, true);
font_sdf_spread(global.fntLatin, 8);
font_enable_effects(global.fntLatin, true, 
{
    outlineEnable: true,
    outlineAlpha: 1,
    outlineDistance: 2,
    outlineColour: global.color.grey8
});
global.fntCjk = font_add(working_directory + "NotoSansSC-Medium.ttf", 32, false, false, 32, 128);
font_enable_sdf(global.fntCjk, true);
font_sdf_spread(global.fntCjk, 8);
font_enable_effects(global.fntCjk, true, 
{
    outlineEnable: true,
    outlineAlpha: 1,
    outlineDistance: 2,
    outlineColour: global.color.grey8
});
global.fontOpenEnded = global.fntLatinPixelart;
scribble_color_set("grey1", global.color.grey1);
scribble_color_set("grey8", global.color.grey8);
scribble_color_set("blue1", global.color.blue1);
scribble_color_set("p0", global.color.blue1);
scribble_color_set("yellow1", global.color.yellow1);
scribble_color_set("p1", global.color.yellow1);
scribble_color_set("green1", global.color.green1);
scribble_color_set("p2", global.color.green1);
scribble_color_set("red1", global.color.red1);
scribble_color_set("p3", global.color.purple1);
scribble_color_set("purple1", global.color.purple1);
scribble_font_bake_outline_and_shadow("ftAlkhemikal", "ftAlkhemikalSh", 0, 0, UnknownEnum.Value_2, 0, false);
scribble_font_bake_outline_and_shadow("ftMonobit", "ftMonobitSh", 0, 0, UnknownEnum.Value_2, 0, false);
scribble_font_bake_outline_and_shadow("ftPixeloidSans", "ftPixeloidSansSh", 0, 0, UnknownEnum.Value_2, 0, false);
scribble_font_bake_outline_and_shadow("ftFusionJP", "ftFusionJPSh", 0, 0, UnknownEnum.Value_2, 0, false);
scribble_font_bake_outline_and_shadow("ftFusionJPTitle", "ftFusionJPTitleSh", 0, 0, UnknownEnum.Value_2, 0, false);
scribble_font_bake_outline_and_shadow("ftFusionSC", "ftFusionSCSh", 0, 0, UnknownEnum.Value_2, 0, false);
scribble_font_bake_outline_and_shadow("ftFusionSCTitle", "ftFusionSCTitleSh", 0, 0, UnknownEnum.Value_2, 0, false);
scribble_font_duplicate("ftAlkhemikalSh", "ftNbrBig");
scribble_font_duplicate("ftMonobitSh", "ftNbrSmall");
scribble_font_set_default("ftMonobitSh");
scribble_font_scale("ftAlkhemikalSh", global.zoom);
scribble_font_scale("ftMonobitSh", global.zoom);
scribble_font_scale("ftPixeloidSansSh", global.zoom);
scribble_font_scale("ftFusionJPSh", global.zoom);
scribble_font_scale("ftFusionJPTitleSh", global.zoom);
scribble_font_scale("ftFusionSCSh", global.zoom);
scribble_font_scale("ftFusionSCTitleSh", global.zoom);
scribble_font_scale("ftNbrBig", global.zoom);
scribble_font_scale("ftNbrSmall", global.zoom);
rescale_font();
g_change_font_style();
global.uiPos = {};
global.uiPos.stopGem = [
{
    x: 218,
    y: 164
}, 
{
    x: 218,
    y: 190
}, 
{
    x: 218,
    y: 216
}, 
{
    x: 218,
    y: 242
}];
global.uiPos.continueGem = [
{
    x: 420,
    y: 164
}, 
{
    x: 420,
    y: 190
}, 
{
    x: 420,
    y: 216
}, 
{
    x: 420,
    y: 242
}];
global.uiPos.cardItem = 
{
    x: 426,
    y: round(140 - (sprite_get_height(sprCardItemBg) / 2))
};
global.uiPos.cardItemName = 
{
    x: 0,
    y: 69
};
global.uiPos.cardItemDesc = 
{
    x: 0,
    y: 126
};
global.uiPos.mob = 
{
    x: 106,
    y: 130
};
global.uiPos.mobTxt = 
{
    x: 106,
    y: 257
};
global.uiPos.monsterScene = 
{
    x: 427,
    y: 146
};
global.uiPos.gemInUi = 
{
    x: 44,
    y: 52
};
global.uiPos.tokenInUi = 
{
    x: 127,
    y: 40
};
global.uiPos.tokenChain = [
{
    x: 371,
    y: 37,
    theSprite: sprChain1
}, 
{
    x: 368,
    y: 86,
    theSprite: sprChain6
}, 
{
    x: 396,
    y: 29,
    theSprite: sprChain2
}, 
{
    x: 428,
    y: 37,
    theSprite: sprChain3
}, 
{
    x: 460,
    y: 24,
    theSprite: sprChain4
}, 
{
    x: 485,
    y: 30,
    theSprite: sprChain5
}, 
{
    x: 484,
    y: 85,
    theSprite: sprChain7
}];
global.uiPos.optionDead = 
{
    x: 426,
    y: 252
};
global.uiPos.platoniaFace = [
{
    x: 427,
    y: 100
}, 
{
    x: 427,
    y: 120
}, 
{
    x: 427,
    y: 140
}, 
{
    x: 427,
    y: 160
}];
global.uiPos.platoniaPrice = [
{
    x: global.uiPos.monsterScene.x - 67,
    y: global.uiPos.monsterScene.y - 1
}, 
{
    x: global.uiPos.monsterScene.x - 33,
    y: global.uiPos.monsterScene.y - 1
}, 
{
    x: global.uiPos.monsterScene.x + 1,
    y: global.uiPos.monsterScene.y - 1
}, 
{
    x: global.uiPos.monsterScene.x + 35,
    y: global.uiPos.monsterScene.y - 1
}];
global.uiPos.platoniaSlotTickerNbr = [
{
    x: global.uiPos.monsterScene.x - 114,
    y: global.uiPos.monsterScene.y - 45
}, 
{
    x: global.uiPos.monsterScene.x - 49,
    y: global.uiPos.monsterScene.y - 45
}, 
{
    x: global.uiPos.monsterScene.x + 16,
    y: global.uiPos.monsterScene.y - 45
}, 
{
    x: global.uiPos.monsterScene.x + 81,
    y: global.uiPos.monsterScene.y - 45
}];
global.uiPos.platoniaButtons = [
{
    x: global.uiPos.monsterScene.x - 118,
    y: global.uiPos.monsterScene.y + 46
}, 
{
    x: global.uiPos.monsterScene.x - 39,
    y: global.uiPos.monsterScene.y + 52
}, 
{
    x: global.uiPos.monsterScene.x + 38,
    y: global.uiPos.monsterScene.y + 52
}, 
{
    x: global.uiPos.monsterScene.x + 117,
    y: global.uiPos.monsterScene.y + 46
}];
global.uiPos.platoniaBgReveal = [
{
    x: global.uiPos.monsterScene.x - 126,
    y: global.uiPos.monsterScene.y - 97
}, 
{
    x: global.uiPos.monsterScene.x - 61,
    y: global.uiPos.monsterScene.y - 97
}, 
{
    x: global.uiPos.monsterScene.x + 4,
    y: global.uiPos.monsterScene.y - 97
}, 
{
    x: global.uiPos.monsterScene.x + 69,
    y: global.uiPos.monsterScene.y - 97
}];
global.uiPos.platoniaFaces = [
{
    x: global.uiPos.monsterScene.x - 97,
    y: global.uiPos.monsterScene.y - 64
}, 
{
    x: global.uiPos.monsterScene.x - 32,
    y: global.uiPos.monsterScene.y - 64
}, 
{
    x: global.uiPos.monsterScene.x + 33,
    y: global.uiPos.monsterScene.y - 64
}, 
{
    x: global.uiPos.monsterScene.x + 98,
    y: global.uiPos.monsterScene.y - 64
}];
global.uiPos.platoniaClock = [
{
    x: global.uiPos.monsterScene.x - 137,
    y: global.uiPos.monsterScene.y - 1
}, 
{
    x: global.uiPos.monsterScene.x + 104,
    y: global.uiPos.monsterScene.y - 1
}];
global.uiPos.mainSceneDoors = 
{
    bgExit: 
    {
        x: 215,
        y: 199
    },
    bgForest: 
    {
        x: 424,
        y: 203
    },
    bgCity: 
    {
        x: 425,
        y: 204
    },
    doorExitOffset: 
    {
        x: 2,
        y: 5
    },
    doorForestOffset: 
    {
        x: -2,
        y: 2
    },
    doorCityOffset: 
    {
        x: -2,
        y: 1
    }
};
global.uiPos.menuBtn = [
{
    x: 32,
    y: global.gameHeight - 160
}, 
{
    x: 32,
    y: global.gameHeight - 128
}, 
{
    x: 32,
    y: global.gameHeight - 96
}, 
{
    x: 32,
    y: global.gameHeight - 64
}, 
{
    x: 32,
    y: global.gameHeight - 32
}];
global.uiPos.gemSecured = [
{
    x: 310,
    y: 9
}, 
{
    x: 374,
    y: 9
}, 
{
    x: 438,
    y: 9
}, 
{
    x: 502,
    y: 9
}];

function counterStats(arg0 = 0, arg1 = 0) constructor
{
    leftChoice = arg0;
    rightChoice = arg1;
    
    get_left_choice = function()
    {
        return leftChoice;
    };
    
    get_left_choice = function()
    {
        return rightChoice;
    };
}

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
    Value_15,
    Value_16,
    Value_17,
    Value_18,
    Value_19,
    Value_20,
    Value_21
}
