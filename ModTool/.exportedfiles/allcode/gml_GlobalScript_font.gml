function change_font_size(arg0)
{
    global.fontSize = arg0;
    ini_open("settings.ini");
    ini_write_real("font", "size", global.fontSize);
    ini_close();
}

function g_change_font_style(arg0 = global.fontStyle)
{
    global.fontStyle = arg0;
    global.fontScaleTitle = 1.25;
    global.fontShadowAlpha = (global.fontStyle == 0) ? 0 : 1;
    global.fontBorderThickness = (global.fontStyle == 0) ? 0 : 1;
    global.fontOpenEnded = global.fntLatinPixelart;
    scribble_font_set_remap("ftAlkhemikalSh", undefined);
    scribble_font_set_remap("ftMonobitSh", undefined);
    scribble_font_set_remap("ftNbrBig", undefined);
    scribble_font_set_remap("ftNbrSmall", undefined);
    
    if (global.fontStyle == 0)
    {
        if (scribble_font_exists("ftNotoSansSh"))
            scribble_font_delete("ftNotoSansSh");
        
        if (scribble_font_exists("ftNotoSansSCSh"))
            scribble_font_delete("ftNotoSansSCSh");
        
        if (global.currentLanguage == 3)
        {
            scribble_font_set_remap("ftAlkhemikalSh", "ftFusionJPTitleSh");
            scribble_font_set_remap("ftMonobitSh", "ftFusionJPSh");
            global.fontOpenEnded = global.fntJPixelart;
        }
        else if (global.currentLanguage == 4)
        {
            scribble_font_set_remap("ftAlkhemikalSh", "ftFusionSCTitleSh");
            scribble_font_set_remap("ftMonobitSh", "ftFusionSCSh");
            global.fontOpenEnded = global.fntCPixelart;
        }
        else if (global.currentLanguage == 7)
        {
            scribble_font_set_remap("ftAlkhemikalSh", "ftPixeloidSansSh");
            scribble_font_set_remap("ftMonobitSh", "ftPixeloidSansSh");
            global.fontOpenEnded = global.fntCYPixelart;
        }
        
        global.fontScaleTitle = 1;
        global.fontScaleOpenEnded = global.zoom;
    }
    else if (global.currentLanguage == 3 || global.currentLanguage == 4)
    {
        if (!scribble_font_exists("ftNotoSansSCSh"))
        {
            scribble_font_duplicate("ftNotoSansSC", "ftNotoSansSCSh");
            scribble_font_scale("ftNotoSansSCSh", global.fontScaleCjk);
        }
        
        if (scribble_font_exists("ftNotoSansSh"))
            scribble_font_delete("ftNotoSansSh");
        
        scribble_font_set_remap("ftAlkhemikalSh", "ftNotoSansSCSh");
        scribble_font_set_remap("ftMonobitSh", "ftNotoSansSCSh");
        scribble_font_set_remap("ftNbrBig", "ftNotoSansSCSh");
        scribble_font_set_remap("ftNbrSmall", "ftNotoSansSCSh");
        global.fontScaleOpenEnded = global.fontScaleCjk;
        global.fontOpenEnded = global.fntCjk;
    }
    else
    {
        if (!scribble_font_exists("ftNotoSansSh"))
        {
            scribble_font_duplicate("ftNotoSans", "ftNotoSansSh");
            scribble_font_scale("ftNotoSansSh", global.fontScaleLatin);
        }
        
        if (scribble_font_exists("ftNotoSansSCSh"))
            scribble_font_delete("ftNotoSansSCSh");
        
        scribble_font_set_remap("ftAlkhemikalSh", "ftNotoSansSh");
        scribble_font_set_remap("ftMonobitSh", "ftNotoSansSh");
        scribble_font_set_remap("ftNbrBig", "ftNotoSansSh");
        scribble_font_set_remap("ftNbrSmall", "ftNotoSansSh");
        global.fontScaleOpenEnded = global.fontScaleLatin;
        global.fontOpenEnded = global.fntLatin;
    }
    
    g_font_update_offset();
    
    with (oSettings)
    {
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
        
        structElements.textFontValue.data.element = _textFontValue;
        structElements.langLabel.data.element = scribble("settings._languageName");
    }
    
    g_update_text();
    
    with (oSettings)
        build_settings();
    
    ini_open("settings.ini");
    ini_write_real("font", "style", global.fontStyle);
    ini_close();
}

function g_setup_lang()
{
    switch (global.currentLanguage)
    {
        case 0:
        case 1:
        case 2:
        case 5:
        case 6:
        case 7:
        case 8:
        default:
            global.dialogueTextSpeed = 1;
            break;
        
        case 3:
        case 4:
            global.dialogueTextSpeed = 0.5;
            break;
    }
}

function g_switch_lang(arg0 = 1)
{
    if (sign(arg0))
        global.currentLanguage = (global.currentLanguage + arg0) % 9;
    else
        global.currentLanguage = (((global.currentLanguage + arg0) % 9) + 9) % 9;
    
    ini_open("settings.ini");
    ini_write_real("language", "currentLanguage", global.currentLanguage);
    ini_close();
    set_language();
    g_setup_lang();
    g_change_font_style();
}

function rescale_font()
{
    var _scale = g_get_scale_factor_font();
    global.fontScaleCjk = _scale.cjk;
    global.fontScaleLatin = _scale.latin;
    
    if (global.fontStyle == 0)
        global.fontScaleOpenEnded = global.zoom;
    else if (global.currentLanguage == 3 || global.currentLanguage == 4)
        global.fontScaleOpenEnded = global.fontScaleCjk;
    else
        global.fontScaleOpenEnded = global.fontScaleLatin;
    
    var _diffZoom = global.zoom / global.zoomPrevious;
    
    if (sign(_diffZoom) != 0)
    {
        if (scribble_font_exists("ftAlkhemikalSh"))
            scribble_font_scale("ftAlkhemikalSh", _diffZoom);
        
        if (scribble_font_exists("ftMonobitSh"))
            scribble_font_scale("ftMonobitSh", _diffZoom);
        
        if (scribble_font_exists("ftPixeloidSansSh"))
            scribble_font_scale("ftPixeloidSansSh", _diffZoom);
        
        if (scribble_font_exists("ftFusionJPSh"))
            scribble_font_scale("ftFusionJPSh", _diffZoom);
        
        if (scribble_font_exists("ftFusionSCSh"))
            scribble_font_scale("ftFusionSCSh", _diffZoom);
        
        if (scribble_font_exists("ftFusionJPTitleSh"))
            scribble_font_scale("ftFusionJPTitleSh", _diffZoom);
        
        if (scribble_font_exists("ftFusionSCTitleSh"))
            scribble_font_scale("ftFusionSCTitleSh", _diffZoom);
        
        if (scribble_font_exists("ftNotoSansSh"))
            scribble_font_scale("ftNotoSansSh", _diffZoom);
        
        if (scribble_font_exists("ftNotoSansSCSh"))
            scribble_font_scale("ftNotoSansSCSh", _diffZoom);
        
        if (scribble_font_exists("ftNbrBig"))
            scribble_font_scale("ftNbrBig", _diffZoom);
        
        if (scribble_font_exists("ftNbrSmall"))
            scribble_font_scale("ftNbrSmall", _diffZoom);
        
        g_font_update_offset();
        g_update_text();
    }
}

function g_font_update_offset()
{
    if (scribble_font_exists("ftMonobitSh"))
    {
        scribble_font_set_valign_offset("ftMonobitSh", 0, -2 * global.zoom);
        scribble_font_set_valign_offset("ftMonobitSh", 1, -2 * global.zoom);
        scribble_font_set_valign_offset("ftMonobitSh", 2, -2 * global.zoom);
    }
    
    if (scribble_font_exists("ftNotoSansSCSh"))
    {
        scribble_font_set_valign_offset("ftNotoSansSCSh", 0, -1.5 * global.zoom);
        scribble_font_set_valign_offset("ftNotoSansSCSh", 1, -0.5 * global.zoom);
        scribble_font_set_valign_offset("ftNotoSansSCSh", 2, 1.5 * global.zoom);
    }
    
    if (scribble_font_exists("ftAlkhemikalSh"))
    {
        scribble_font_set_valign_offset("ftAlkhemikalSh", 0, -2 * global.zoom);
        scribble_font_set_valign_offset("ftAlkhemikalSh", 1, -2 * global.zoom);
        scribble_font_set_valign_offset("ftAlkhemikalSh", 2, -2 * global.zoom);
    }
}

function g_update_text()
{
    scribble_refresh_everything();
    
    with (oEffect)
        update_txt();
    
    with (oTooltip)
    {
        if (effect == -1)
            updateTxt();
    }
    
    with (oDialogue)
        updateTxt();
    
    with (oGuiButton)
        update_label();
    
    with (oLoopManager)
        update_level_name();
    
    with (oEntitie)
        update_text_gem();
    
    with (oCardItem)
        update_desc();
    
    with (oGuiFormElement)
        update_label();
    
    with (oEntitie)
    {
        update_hp_txt();
        update_text_gem();
    }
    
    if (variable_global_exists("playersManager"))
        global.playersManager.update_text();
}

function g_get_scale_factor_font()
{
    var _originalHighresSize = 32;
    var _baseFontSizeLatin = 6;
    var _baseFontSizeCJK = 7;
    var _baseZoom = 1;
    var _pixelSizeTargetLatin = _baseFontSizeLatin * global.zoom;
    var _pixelSizeTargetCJK = _baseFontSizeCJK * global.zoom;
    var _scaleFactorLatin = _pixelSizeTargetLatin / _originalHighresSize;
    var _scaleFactorCJK = _pixelSizeTargetCJK / _originalHighresSize;
    return 
    {
        latin: _scaleFactorLatin,
        cjk: _scaleFactorCJK
    };
}
