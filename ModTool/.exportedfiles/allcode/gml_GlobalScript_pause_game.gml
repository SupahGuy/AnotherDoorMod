function pause_game(arg0)
{
    if (arg0)
    {
        global.__ElementController.reset();
        global.pause = true;
        
        with (oGuiElement)
            set_paused(true);
    }
    else if (!is_paused_controller() && !is_paused_settings() && !is_paused_settings())
    {
        global.__ElementController.reset();
        global.pause = false;
        
        with (oGuiElement)
            set_paused(false);
        
        with (oCursor)
            check_hover();
    }
}

function pause_chatbox(arg0)
{
    global.pauseChatbox = arg0;
    pause_game(arg0);
}

function pause_controller(arg0)
{
    global.pauseController = arg0;
    pause_game(arg0);
}

function is_paused_controller()
{
    return global.pauseController;
}

function pause_settings(arg0)
{
    global.pauseSettings = arg0;
    pause_game(arg0);
}

function is_paused_settings()
{
    return global.pauseSettings;
}

function game_is_paused()
{
    return global.pause;
}
