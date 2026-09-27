if (is_paused_controller())
    exit;

if (is_paused_settings())
{
    if ((instance_exists(btnCloseMenu) && btnCloseMenu.is_released()) || (instance_exists(btnCloseMenuBottom) && btnCloseMenuBottom.is_released()))
    {
        switch_state();
        
        with (oMenu)
            stateNext = UnknownEnum.Value_0;
    }
    
    if (instance_exists(btnLeaveParty) && btnLeaveParty.is_released())
    {
        switch_state();
        
        if (global.networkingManager.isNetworkGame)
        {
            steam_lobby_leave();
            global.networkingManager.reset();
            global.gameEndReason = UnknownEnum.Value_3;
        }
        else
        {
            global.gameEndReason = UnknownEnum.Value_4;
        }
        
        room_goto(roomInit);
    }
    
    if (instance_exists(langButtonLeft) && langButtonLeft.is_released())
        g_switch_lang(-1);
    
    if (instance_exists(langButtonRight) && langButtonRight.is_released())
        g_switch_lang();
    
    if ((instance_exists(btnFullscreenYes) && btnFullscreenYes.is_released()) || (instance_exists(btnFullscreenNo) && btnFullscreenNo.is_released()))
    {
        if (btnFullscreenYes.is_disabled())
            btnFullscreenYes.set_disabled(false);
        
        if (btnFullscreenNo.is_disabled())
            btnFullscreenNo.set_disabled(false);
        
        if (btnFullscreenYes.is_released())
            global.camera.switch_full_screen(true);
        
        if (btnFullscreenNo.is_released())
            global.camera.switch_full_screen(false);
        
        if (global.fullScreen)
        {
            btnFullscreenYes.set_disabled(true);
            videoScaleButtonUp.set_disabled(true);
            videoScaleButtonDown.set_disabled(true);
        }
        
        if (!global.fullScreen)
        {
            btnFullscreenNo.set_disabled(true);
            
            if (global.zoom == global.zoomMin)
                videoScaleButtonDown.set_disabled(true);
            else
                videoScaleButtonDown.set_disabled(false);
            
            videoScaleButtonUp.set_disabled(false);
        }
        
        structElements.videoFullscreenValue.data.element = scribble(global.fullScreen ? "settings._yes" : "settings._no").align(2, 0);
        structElements.videoScaleValue.data.element = scribble(global.zoom).align(2, 0);
    }
    
    if (instance_exists(videoScaleButtonUp) && videoScaleButtonUp.is_released())
    {
        global.camera.switch_resolution(1);
        structElements.videoScaleValue.data.element = scribble(global.zoom).align(2, 0);
        
        if (videoScaleButtonDown.is_disabled())
            videoScaleButtonDown.set_disabled(false);
        
        if (global.zoom == global.zoomMax)
            videoScaleButtonUp.set_disabled(true);
    }
    
    if (instance_exists(videoScaleButtonDown) && videoScaleButtonDown.is_released())
    {
        global.camera.switch_resolution(-1);
        structElements.videoScaleValue.data.element = scribble(global.zoom).align(2, 0);
        
        if (videoScaleButtonUp.is_disabled())
            videoScaleButtonUp.set_disabled(false);
        
        if (global.zoom == global.zoomMin)
            videoScaleButtonDown.set_disabled(true);
    }
    
    if (instance_exists(btnCRTNo) && btnCRTNo.is_released())
    {
        global.crtEffect = 0;
        structElements.videoCrtEffectValue.data.element = scribble(global.crtEffect ? "settings._yes" : "settings._no").align(2, 0);
        btnCRTYes.set_disabled(false);
        btnCRTNo.set_disabled(true);
        ini_open("settings.ini");
        ini_write_real("display", "crtEffect", global.crtEffect);
        ini_close();
    }
    
    if (instance_exists(btnCRTYes) && btnCRTYes.is_released())
    {
        global.crtEffect = 1;
        structElements.videoCrtEffectValue.data.element = scribble(global.crtEffect ? "settings._yes" : "settings._no").align(2, 0);
        btnCRTYes.set_disabled(true);
        btnCRTNo.set_disabled(false);
        ini_open("settings.ini");
        ini_write_real("display", "crtEffect", global.crtEffect);
        ini_close();
    }
    
    if ((instance_exists(textSizeButtonDown) && textSizeButtonDown.is_released()) || (instance_exists(textSizeButtonUp) && textSizeButtonUp.is_released()))
    {
        if (textSizeButtonDown.is_disabled())
            textSizeButtonDown.set_disabled(false);
        
        if (textSizeButtonUp.is_disabled())
            textSizeButtonUp.set_disabled(false);
        
        if (textSizeButtonDown.is_released())
            global.fontSize = max(global.fontSize - 10, 100);
        
        if (textSizeButtonUp.is_released())
            global.fontSize = min(global.fontSize + 10, 150);
        
        if (global.fontSize == 100)
            textSizeButtonDown.set_disabled(true);
        
        if (global.fontSize == 150)
            textSizeButtonUp.set_disabled(true);
        
        change_font_size(global.fontSize);
        structElements.textSizeValue.data.element = scribble($"{global.fontSize}%").align(2, 0);
    }
    
    if ((instance_exists(textFontButtonDown) && textFontButtonDown.is_released()) || (instance_exists(textFontButtonUp) && textFontButtonUp.is_released()))
    {
        if (textFontButtonDown.is_disabled())
            textFontButtonDown.set_disabled(false);
        
        if (textFontButtonUp.is_disabled())
            textFontButtonUp.set_disabled(false);
        
        if (textFontButtonDown.is_released())
            global.fontStyle = max(global.fontStyle - 1, 0);
        
        if (textFontButtonUp.is_released())
            global.fontStyle = min(global.fontStyle + 1, 1);
        
        if (global.fontStyle == 0)
            textFontButtonDown.set_disabled(true);
        
        if (global.fontStyle == 1)
            textFontButtonUp.set_disabled(true);
        
        g_change_font_style();
    }
    
    if (instance_exists(gameplayTutorialLeft) && gameplayTutorialLeft.is_released())
    {
        global.isTutorialDone = true;
        gameplayTutorialLeft.set_disabled(true);
        gameplayTutorialRight.set_disabled(false);
        structElements.gameplayTutorialValue.data.element = scribble("settings._no").align(2, 0);
        ini_open("settings.ini");
        ini_write_real("tutorial", "done", global.isTutorialDone);
        ini_close();
    }
    
    if (instance_exists(gameplayTutorialRight) && gameplayTutorialRight.is_released())
    {
        global.isTutorialDone = false;
        gameplayTutorialLeft.set_disabled(false);
        gameplayTutorialRight.set_disabled(true);
        structElements.gameplayTutorialValue.data.element = scribble("settings._yes").align(2, 0);
        ini_open("settings.ini");
        ini_write_real("tutorial", "done", global.isTutorialDone);
        ini_close();
    }
    
    with (oCursor)
    {
        if (is_verb_active(UnknownEnum.Value_0, UnknownEnum.Value_2))
            other.scrollTo = clamp(other.scrollTo - (InputPlayerUsingKbm(number) ? 20 : 5), other.minScroll, other.maxScroll);
        else if (is_verb_active(UnknownEnum.Value_1, UnknownEnum.Value_2))
            other.scrollTo = clamp(other.scrollTo + (InputPlayerUsingKbm(number) ? 20 : 5), other.minScroll, other.maxScroll);
    }
    
    scroll = round(lerp(scroll, scrollTo, 0.1));
    
    if (scroll != scrollTo)
    {
        for (var _i = 0; _i < array_length(settings); _i++)
            settings[_i].y = settings[_i].yInit - scroll;
        
        if (abs(scroll - scrollTo) < 0.1)
            scroll = scrollTo;
        
        with (oCursor)
            check_hover();
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4
}
