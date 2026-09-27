function tv_function(arg0, arg1 = [], arg2 = [], arg3 = false)
{
    arg1 = is_array(arg1) ? arg1 : [arg1];
    arg2 = is_array(arg2) ? arg2 : [arg2];
    
    with (oTv)
    {
        if (array_length(arg1) != 0)
        {
            if (array_get_index(arg1, number) == -1)
                continue;
        }
        
        if (array_length(arg2) != 0)
        {
            if (array_get_index(arg2, number) != -1)
                continue;
        }
        
        if (screenState == UnknownEnum.Value_17 || screenState == UnknownEnum.Value_18)
        {
            if (arg0 == UnknownEnum.Value_18)
            {
                continue;
            }
            else
            {
                if (theCallbackTimer.is_running())
                {
                    theCallbackTimer.stop();
                    theCallbackTimer.reset();
                }
                
                screenAfterTurnOn = arg0;
                screenFromCallback = UnknownEnum.Value_16;
                
                if (arg3)
                {
                    callbackSwitchScreen();
                }
                else
                {
                    theCallbackTimer.change_param(random_range(0.1, 0.3), undefined, 1);
                    theCallbackTimer.reset();
                    theCallbackTimer.run();
                }
            }
        }
        else
        {
            if (theCallbackTimer.is_running())
            {
                theCallbackTimer.stop();
                theCallbackTimer.reset();
            }
            
            screenFromCallback = arg0;
            
            if (arg3)
            {
                callbackSwitchScreen();
            }
            else
            {
                theCallbackTimer.change_param(random_range(0.1, 0.3), undefined, 1);
                theCallbackTimer.reset();
                theCallbackTimer.run();
            }
        }
    }
}

function tv_state() constructor
{
    debug = function()
    {
        tv_function(UnknownEnum.Value_14);
    };
    
    blackout = function()
    {
        tv_function(UnknownEnum.Value_8);
    };
    
    lobby_error = function()
    {
        tv_function(UnknownEnum.Value_9);
    };
    
    lobbyP1 = function(arg0 = [2], arg1 = [])
    {
        tv_function(UnknownEnum.Value_10, arg0, arg1);
    };
    
    lobbyP2 = function(arg0 = [3], arg1 = [])
    {
        tv_function(UnknownEnum.Value_11, arg0, arg1);
    };
    
    lobbyP3 = function(arg0 = [4], arg1 = [])
    {
        tv_function(UnknownEnum.Value_12, arg0, arg1);
    };
    
    lobbyP4 = function(arg0 = [7], arg1 = [])
    {
        tv_function(UnknownEnum.Value_13, arg0, arg1);
    };
    
    neutral = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_34, arg0, arg1);
    };
    
    suspicious = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_39, arg0, arg1);
    };
    
    laughing = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_38, arg0, arg1);
    };
    
    evil = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_37, arg0, arg1);
    };
    
    afraid = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_35, arg0, arg1);
    };
    
    applause = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_23, arg0, arg1);
    };
    
    noise = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_22, arg0, arg1);
    };
    
    gem = function(arg0 = [0], arg1 = [])
    {
        tv_function(UnknownEnum.Value_20, arg0, arg1);
    };
    
    door = function(arg0 = [4], arg1 = [])
    {
        tv_function(UnknownEnum.Value_21, arg0, arg1);
    };
    
    imbolc_moon = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_28, arg0, arg1);
    };
    
    samain_moon = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_29, arg0, arg1);
    };
    
    yule_moon = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_31, arg0, arg1);
    };
    
    blue_screen = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_30, arg0, arg1);
    };
    
    mabon_moon = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_32, arg0, arg1);
    };
    
    litha_moon = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_33, arg0, arg1);
    };
    
    p1 = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_24, arg0, arg1);
    };
    
    p2 = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_25, arg0, arg1);
    };
    
    p3 = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_26, arg0, arg1);
    };
    
    p4 = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_27, arg0, arg1);
    };
    
    off = function()
    {
        tv_function(UnknownEnum.Value_17);
    };
    
    turn_off = function(arg0 = false)
    {
        tv_function(UnknownEnum.Value_18, undefined, undefined, arg0);
    };
    
    token_master_key = function()
    {
        tv_function(UnknownEnum.Value_40);
    };
    
    monsters_announcement = function(arg0 = [global.narratorTv.number], arg1 = [])
    {
        tv_function(UnknownEnum.Value_7, arg0, arg1);
    };
    
    calibration = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_6, arg0, arg1);
    };
    
    bios = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_5, arg0, arg1);
    };
    
    reward = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_4, arg0, arg1);
    };
    
    biome_forest = function(arg0 = [], arg1 = [global.narratorTv.number])
    {
        tv_function(UnknownEnum.Value_41, arg0, arg1);
    };
    
    welcome = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_3, arg0, arg1);
    };
    
    rule_gem = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_2, arg0, arg1);
    };
    
    rule_exit = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_0, arg0, arg1);
    };
    
    rule_continue = function(arg0 = [], arg1 = [])
    {
        tv_function(UnknownEnum.Value_1, arg0, arg1);
    };
}

global.tvState = new tv_state();

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
    Value_37 = 37,
    Value_38,
    Value_39,
    Value_40,
    Value_41
}
