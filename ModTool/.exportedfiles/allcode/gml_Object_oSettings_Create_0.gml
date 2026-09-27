scrollTo = 0;
scroll = 0;
depth = global.depthManager.get_depth("settings");
isVisible = false;

switch_state = function()
{
    isVisible = !isVisible;
    
    if (isVisible)
    {
        pause_settings(true);
        activate_instance();
    }
    else
    {
        switch_off();
    }
};

switch_off = function()
{
    isVisible = false;
    pause_settings(false);
    deactivate_instance();
};

activate_instance = function()
{
    for (var i = 0; i < array_length(settings); i++)
    {
        instance_activate_object(settings[i]);
        settings[i].set_paused(false);
    }
    
    alarm[0] = 1;
};

deactivate_instance = function()
{
    for (var i = 0; i < array_length(settings); i++)
    {
        settings[i].set_paused(true);
        instance_deactivate_object_hook(settings[i]);
    }
};

btnFullscreenNo = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});

if (!global.fullScreen)
    btnFullscreenNo.set_disabled(true);

btnFullscreenYes = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});

if (global.fullScreen)
    btnFullscreenYes.set_disabled(true);

videoScaleButtonUp = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});
videoScaleButtonDown = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});

if (global.zoom == global.zoomMin)
    videoScaleButtonDown.set_disabled(true);

if (global.fullScreen)
{
    videoScaleButtonUp.set_disabled(true);
    videoScaleButtonDown.set_disabled(true);
}

btnCRTNo = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});
btnCRTYes = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});

if (global.crtEffect)
{
    btnCRTYes.set_disabled(true);
    btnCRTNo.set_disabled(false);
}
else
{
    btnCRTYes.set_disabled(false);
    btnCRTNo.set_disabled(true);
}

langButtonLeft = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});
langButtonRight = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});
audioMusicButtonLeft = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});
audioMusicButtonRight = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});

if (global.musicVolume == 0)
    audioMusicButtonLeft.set_disabled(true);
else if (global.musicVolume == 100)
    audioMusicButtonRight.set_disabled(true);

var _musicCallback = function(arg0)
{
    global.musicVolume = clamp(global.musicVolume + arg0, 0, 100);
    g_change_music_volume();
    
    with (oSettings)
    {
        structElements.audioMusicVolumeValue.data.element = scribble($"{global.musicVolume}%", "audioMusicVolumeValue").align(2, 0);
        
        if (global.musicVolume == 0)
            audioMusicButtonLeft.set_disabled(true);
        else if (global.musicVolume != 0 && audioMusicButtonLeft.is_disabled())
            audioMusicButtonLeft.set_disabled(false);
        else if (global.musicVolume == 100)
            audioMusicButtonRight.set_disabled(true);
        else if (global.musicVolume != 100 && audioMusicButtonRight.is_disabled())
            audioMusicButtonRight.set_disabled(false);
    }
};

var _audioMusicButtonLeft = method(
{
    callback: _musicCallback,
    args: [-5]
}, function()
{
    method_call(callback, args);
});
var _audioMusicButtonRight = method(
{
    callback: _musicCallback,
    args: [5]
}, function()
{
    method_call(callback, args);
});
audioMusicButtonLeft.set_callback_on_click(_audioMusicButtonLeft);
audioMusicButtonRight.set_callback_on_click(_audioMusicButtonRight);
audioSfxButtonLeft = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});
audioSfxButtonRight = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});

if (global.sfxVolume == 0)
    audioSfxButtonLeft.set_disabled(true);
else if (global.sfxVolume == 100)
    audioSfxButtonRight.set_disabled(true);

audioSfxButtonLeft.set_sound_on_click([sndFunfairDialogue1, sndFunfairDialogue2, sndFunfairDialogue3, sndFunfairDialogue4]);
audioSfxButtonRight.set_sound_on_click([sndFunfairDialogue1, sndFunfairDialogue2, sndFunfairDialogue3, sndFunfairDialogue4]);

var _sfxCallback = function(arg0)
{
    global.sfxVolume = clamp(global.sfxVolume + arg0, 0, 100);
    g_change_sfx_volume();
    
    with (oSettings)
    {
        structElements.audioSfxVolumeValue.data.element = scribble($"{global.sfxVolume}%", "audioSfxVolumeValue").align(2, 0);
        
        if (global.sfxVolume == 0)
            audioSfxButtonLeft.set_disabled(true);
        else if (global.sfxVolume != 0 && audioSfxButtonLeft.is_disabled())
            audioSfxButtonLeft.set_disabled(false);
        else if (global.sfxVolume == 100)
            audioSfxButtonRight.set_disabled(true);
        else if (global.sfxVolume != 100 && audioSfxButtonRight.is_disabled())
            audioSfxButtonRight.set_disabled(false);
    }
};

var _audioSfxButtonLeft = method(
{
    callback: _sfxCallback,
    args: [-5]
}, function()
{
    method_call(callback, args);
});
var _audioSfxButtonRight = method(
{
    callback: _sfxCallback,
    args: [5]
}, function()
{
    method_call(callback, args);
});
audioSfxButtonLeft.set_callback_on_click(_audioSfxButtonLeft);
audioSfxButtonRight.set_callback_on_click(_audioSfxButtonRight);
textSizeButtonDown = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});
textSizeButtonDown.set_disabled(true);
textSizeButtonUp = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});
textSizeButtonUp.set_disabled(true);
textFontButtonDown = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});

if (global.fontStyle == 0)
    textFontButtonDown.set_disabled(true);

textFontButtonUp = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});

if (global.fontStyle == 1)
    textFontButtonUp.set_disabled(true);

gameplayTutorialLeft = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretLeft,
    persistent: true
});
gameplayTutorialRight = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonCaretRight,
    persistent: true
});

if (global.isTutorialDone)
    gameplayTutorialLeft.set_disabled(true);
else
    gameplayTutorialRight.set_disabled(true);

btnCloseMenu = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._return",
    persistent: true,
    heightFixed: 24
});
btnCloseMenuBottom = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._return",
    persistent: true,
    heightFixed: 24
});
btnLeaveParty = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._leaveGame",
    persistent: true,
    heightFixed: 24
});
btnLeaveParty.hide();
settings = [btnFullscreenNo, btnFullscreenYes, btnCRTNo, btnCRTYes, langButtonLeft, langButtonRight, btnCloseMenu, btnCloseMenuBottom, btnLeaveParty, videoScaleButtonDown, videoScaleButtonUp, textSizeButtonDown, textSizeButtonUp, textFontButtonDown, textFontButtonUp, audioMusicButtonLeft, audioMusicButtonRight, audioSfxButtonLeft, audioSfxButtonRight, gameplayTutorialLeft, gameplayTutorialRight];
deactivate_instance();
padTopPanel = 64;
heightPanel = 0;
minScroll = 0;
initMaxScroll = 156;

build_settings = function()
{
    var _settingsText = scribble("menu._settings").scale(global.fontScaleTitle).starting_format("ftAlkhemikalSh", global.color.grey1);
    var _videoTitle = scribble("settings._videoTitle").starting_format("ftMonobitSh", global.color.yellow1);
    var _videoFullscreen = scribble("settings._videoFullscreen");
    var _videoFullscreenValue = scribble((global.fullScreen == true) ? "settings._yes" : "settings._no").align(2, 0);
    var _videoScale = scribble("settings._videoScale");
    var _videoScaleValue = scribble(global.zoom).align(2, 0);
    var _videoCrtEffect = scribble("settings._crtEffect");
    var _videoCrtEffectValue = scribble((global.crtEffect == true) ? "settings._yes" : "settings._no").align(2, 0);
    var _langTitle = scribble("settings._textLanguage").starting_format("ftMonobitSh", global.color.yellow1);
    var _langLabel = scribble("settings._languageName");
    var _textTitle = scribble("settings._textTitle").starting_format("ftMonobitSh", global.color.yellow1);
    var _textSize = scribble("settings._textSize");
    var _textSizeValue = scribble($"{global.fontSize}%").align(2, 0);
    var _textFont = scribble("settings._textFont");
    var _textFontValue;
    
    switch (global.fontStyle)
    {
        case 0:
        default:
            _textFontValue = scribble("settings._fontStylePixel").align(2, 0);
            break;
        
        case 1:
            _textFontValue = scribble("settings._fontStyleHighRes").align(2, 0);
            break;
        
        case 2:
            _textFontValue = scribble("settings._fontStyleDyslexia").align(2, 0);
            break;
    }
    
    var _audioTitle = scribble("settings._audioTitle").starting_format("ftMonobitSh", global.color.yellow1);
    var _audioMusicVolume = scribble("settings._audioMusicVolume");
    var _audioMusicVolumeValue = scribble($"{global.musicVolume}%").align(2, 0);
    var _audioSfxVolume = scribble("settings._audioSfxVolume");
    var _audioSfxVolumeValue = scribble($"{global.sfxVolume}%").align(2, 0);
    var _gameplayTitle = scribble("settings._gameplayTitle").starting_format("ftMonobitSh", global.color.yellow1);
    var _gameplayTutorial = scribble("settings._gameplayTutorial");
    var _gameplayTutorialValue = scribble(global.isTutorialDone ? "settings._no" : "settings._yes").align(2, 0);
    structElements = 
    {
        settingTitle: new cFlexStruct("settingTitle", UnknownEnum.Value_1, _settingsText),
        videoTitle: new cFlexStruct("videoTitle", UnknownEnum.Value_1, _videoTitle),
        videoFullscreen: new cFlexStruct("videoFullscreen", UnknownEnum.Value_1, _videoFullscreen),
        videoFullscreenButtonNo: new cFlexStruct("videoFullscreenButtonNo", UnknownEnum.Value_3, btnFullscreenNo),
        videoFullscreenValue: new cFlexStruct("videoFullscreenValue", UnknownEnum.Value_1, _videoFullscreenValue, undefined, 1),
        videoFullscreenButtonYes: new cFlexStruct("videoFullscreenButtonYes", UnknownEnum.Value_3, btnFullscreenYes),
        videoScale: new cFlexStruct("videoScale", UnknownEnum.Value_1, _videoScale),
        videoScaleValue: new cFlexStruct("videoScaleValue", UnknownEnum.Value_1, _videoScaleValue, undefined, 1),
        videoScaleButtonDown: new cFlexStruct("videoScaleButtonDown", UnknownEnum.Value_3, videoScaleButtonDown),
        videoScaleButtonUp: new cFlexStruct("videoScaleButtonUp", UnknownEnum.Value_3, videoScaleButtonUp),
        videoCrtEffect: new cFlexStruct("videoCrtEffect", UnknownEnum.Value_1, _videoCrtEffect),
        videoCrtEffectValue: new cFlexStruct("videoCrtEffectValue", UnknownEnum.Value_1, _videoCrtEffectValue, undefined, 1),
        videoCrtEffectButtonNo: new cFlexStruct("videoCrtEffectButtonNo", UnknownEnum.Value_3, btnCRTNo),
        videoCrtEffectButtonYes: new cFlexStruct("videoCrtEffectButtonYes", UnknownEnum.Value_3, btnCRTYes),
        langTitle: new cFlexStruct("langTitle", UnknownEnum.Value_1, _langTitle),
        langLabel: new cFlexStruct("langLabel", UnknownEnum.Value_1, _langLabel),
        langButtonLeft: new cFlexStruct("langButtonLeft", UnknownEnum.Value_3, langButtonLeft),
        langButtonRight: new cFlexStruct("langButtonRight", UnknownEnum.Value_3, langButtonRight),
        textTitle: new cFlexStruct("textTitle", UnknownEnum.Value_1, _textTitle),
        textSize: new cFlexStruct("textSize", UnknownEnum.Value_1, _textSize),
        textSizeValue: new cFlexStruct("textSizeValue", UnknownEnum.Value_1, _textSizeValue, undefined, 1),
        textSizeButtonDown: new cFlexStruct("textSizeButtonDown", UnknownEnum.Value_3, textSizeButtonDown),
        textSizeButtonUp: new cFlexStruct("textSizeButtonUp", UnknownEnum.Value_3, textSizeButtonUp),
        textFont: new cFlexStruct("textFont", UnknownEnum.Value_1, _textFont),
        textFontButtonDown: new cFlexStruct("textFontButtonDown", UnknownEnum.Value_3, textFontButtonDown),
        textFontValue: new cFlexStruct("textFontValue", UnknownEnum.Value_1, _textFontValue, undefined, 1),
        textFontButtonUp: new cFlexStruct("textFontButtonUp", UnknownEnum.Value_3, textFontButtonUp),
        audioTitle: new cFlexStruct("audioTitle", UnknownEnum.Value_1, _audioTitle),
        audioMusicVolume: new cFlexStruct("audioMusicVolume", UnknownEnum.Value_1, _audioMusicVolume),
        audioMusicVolumeValue: new cFlexStruct("audioMusicVolumeValue", UnknownEnum.Value_1, _audioMusicVolumeValue, undefined, 1),
        audioMusicButtonLeft: new cFlexStruct("audioMusicButtonLeft", UnknownEnum.Value_3, audioMusicButtonLeft),
        audioMusicButtonRight: new cFlexStruct("audioMusicButtonRight", UnknownEnum.Value_3, audioMusicButtonRight),
        audioSfxVolume: new cFlexStruct("audioSfxVolume", UnknownEnum.Value_1, _audioSfxVolume),
        audioSfxVolumeValue: new cFlexStruct("audioSfxVolumeValue", UnknownEnum.Value_1, _audioSfxVolumeValue, undefined, 1),
        audioSfxButtonLeft: new cFlexStruct("audioSfxButtonLeft", UnknownEnum.Value_3, audioSfxButtonLeft),
        audioSfxButtonRight: new cFlexStruct("audioSfxButtonRight", UnknownEnum.Value_3, audioSfxButtonRight),
        gameplayTitle: new cFlexStruct("gameplayTitle", UnknownEnum.Value_1, _gameplayTitle),
        gameplayTutorial: new cFlexStruct("gameplayTutorial", UnknownEnum.Value_1, _gameplayTutorial),
        gameplayTutorialLeft: new cFlexStruct("gameplayTutorialLeft", UnknownEnum.Value_3, gameplayTutorialLeft),
        gameplayTutorialRight: new cFlexStruct("gameplayTutorialRight", UnknownEnum.Value_3, gameplayTutorialRight),
        gameplayTutorialValue: new cFlexStruct("gameplayTutorialValue", UnknownEnum.Value_1, _gameplayTutorialValue, undefined, 1),
        closeMenuButton: new cFlexStruct("closeMenuButton", UnknownEnum.Value_3, btnCloseMenu),
        closeMenuButtonBottom: new cFlexStruct("closeMenuButton", UnknownEnum.Value_3, btnCloseMenuBottom),
        btnLeaveParty: new cFlexStruct("btnLeaveParty", UnknownEnum.Value_3, btnLeaveParty)
    };
    n_root = flexpanel_create_node(
    {
        data: 
        {
            type: "node"
        },
        width: "auto",
        alignItems: "center",
        paddingTop: padTopPanel,
        nodes: [
        {
            data: 
            {
                type: UnknownEnum.Value_7,
                element: sprBgDialogue3
            },
            paddingTop: 24,
            paddingLeft: 24,
            paddingRight: 24,
            paddingBottom: 24,
            nodes: [
            {
                flexDirection: "row",
                data: 
                {
                    type: "node"
                },
                flexGrow: 1,
                alignItems: "center",
                width: 280,
                paddingBottom: 24,
                justifyContent: "space-between",
                nodes: [structElements.settingTitle, structElements.closeMenuButton]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                flexGrow: 1,
                width: 280,
                gap: 16,
                paddingBottom: 8,
                data: 
                {
                    type: "node"
                },
                nodes: [structElements.langTitle, 
                {
                    data: 
                    {
                        type: UnknownEnum.Value_7,
                        element: sprUiLineYellow
                    },
                    height: "1",
                    flexGrow: 1
                }]
            }, 
            {
                flexDirection: "row",
                width: 280,
                alignItems: "center",
                gap: 4,
                data: 
                {
                    type: "node"
                },
                nodes: [
                {
                    data: 
                    {
                        type: "node"
                    },
                    paddingRight: 4,
                    flexGrow: 1,
                    nodes: [structElements.langLabel]
                }, structElements.langButtonLeft, structElements.langButtonRight]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                flexGrow: 1,
                width: 280,
                gap: 16,
                marginTop: 32,
                paddingBottom: 8,
                data: 
                {
                    type: "node"
                },
                nodes: [structElements.videoTitle, 
                {
                    data: 
                    {
                        type: UnknownEnum.Value_7,
                        element: sprUiLineYellow
                    },
                    height: "1",
                    flexGrow: 1
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                marginBottom: 4,
                nodes: [structElements.videoFullscreen, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    justifyContent: "flex_end",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.videoFullscreenValue]
                    }, structElements.videoFullscreenButtonNo, structElements.videoFullscreenButtonYes]
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                marginBottom: 4,
                nodes: [structElements.videoScale, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.videoScaleValue]
                    }, structElements.videoScaleButtonDown, structElements.videoScaleButtonUp]
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                nodes: [structElements.videoCrtEffect, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.videoCrtEffectValue]
                    }, structElements.videoCrtEffectButtonNo, structElements.videoCrtEffectButtonYes]
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                flexGrow: 1,
                width: 280,
                gap: 16,
                marginTop: 32,
                paddingBottom: 8,
                data: 
                {
                    type: "node"
                },
                nodes: [structElements.textTitle, 
                {
                    data: 
                    {
                        type: UnknownEnum.Value_7,
                        element: sprUiLineYellow
                    },
                    height: "1",
                    flexGrow: 1
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                marginBottom: 4,
                nodes: [structElements.textSize, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.textSizeValue]
                    }, structElements.textSizeButtonDown, structElements.textSizeButtonUp]
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                nodes: [structElements.textFont, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.textFontValue]
                    }, structElements.textFontButtonDown, structElements.textFontButtonUp]
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                flexGrow: 1,
                width: 280,
                gap: 16,
                marginTop: 32,
                paddingBottom: 8,
                data: 
                {
                    type: "node"
                },
                nodes: [structElements.audioTitle, 
                {
                    data: 
                    {
                        type: UnknownEnum.Value_7,
                        element: sprUiLineYellow
                    },
                    height: "1",
                    flexGrow: 1
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                marginBottom: 4,
                nodes: [structElements.audioMusicVolume, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.audioMusicVolumeValue]
                    }, structElements.audioMusicButtonLeft, structElements.audioMusicButtonRight]
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                nodes: [structElements.audioSfxVolume, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.audioSfxVolumeValue]
                    }, structElements.audioSfxButtonLeft, structElements.audioSfxButtonRight]
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                flexGrow: 1,
                width: 280,
                paddingTop: 32,
                paddingBottom: 8,
                data: 
                {
                    type: "node"
                },
                nodes: [structElements.gameplayTitle, 
                {
                    data: 
                    {
                        type: UnknownEnum.Value_7,
                        element: sprUiLineYellow
                    },
                    height: "1",
                    flexGrow: 1,
                    marginLeft: 12
                }]
            }, 
            {
                flexDirection: "row",
                alignItems: "center",
                justifyContent: "space-between",
                data: 
                {
                    type: "node"
                },
                width: 280,
                marginBottom: 4,
                nodes: [structElements.gameplayTutorial, 
                {
                    flexDirection: "row",
                    alignItems: "center",
                    gap: 4,
                    data: 
                    {
                        type: "node"
                    },
                    nodes: [
                    {
                        data: 
                        {
                            type: "node"
                        },
                        paddingRight: 4,
                        nodes: [structElements.gameplayTutorialValue]
                    }, structElements.gameplayTutorialLeft, structElements.gameplayTutorialRight]
                }]
            }, 
            {
                paddingTop: 32,
                width: 280,
                justifyContent: "flex-end",
                flexDirection: "row",
                gap: 8,
                data: 
                {
                    type: "node"
                },
                nodes: [structElements.btnLeaveParty, structElements.closeMenuButtonBottom]
            }]
        }]
    });
    flexpanel_calculate_layout(n_root, room_width, room_height, 0);
    ik_flex_panel_generate_instance(n_root, 0, 0);
    var _panelSize = flexpanel_node_layout_get_position(flexpanel_node_get_child(n_root, 0)).height;
    heightPanel = _panelSize;
    maxScroll = (heightPanel - room_height) + initMaxScroll;
};

build_settings();

enum UnknownEnum
{
    Value_1 = 1,
    Value_3 = 3,
    Value_7 = 7
}
