depth = global.depthManager.get_depth("choice") - 1;
timerLaunched = false;

var _callback = function()
{
    var _callbackRoom = function()
    {
        with (oCamera)
        {
            ini_open("settings.ini");
            global.zoom = ini_read_real("display", "zoom", global.zoomDefault);
            
            with (oSettings)
            {
                if (global.zoom == global.zoomMax || global.fullScreen)
                    videoScaleButtonUp.set_disabled(true);
                else
                    videoScaleButtonUp.set_disabled(false);
                
                if (global.zoom == global.zoomMin || global.fullScreen)
                    videoScaleButtonDown.set_disabled(true);
                else
                    videoScaleButtonDown.set_disabled(false);
                
                structElements.videoScaleValue.data.element = scribble(global.zoom).align(2, 0);
            }
            
            ini_close();
            
            if (global.fullScreen)
            {
                window_set_showborder(false);
                window_set_fullscreen(true);
                global.zoom = display_get_width() / global.gameWidth;
                alarm[0] = 11;
            }
            else
            {
                resize();
            }
        }
        
        room_goto(roomStart);
    };
    
    instance_create_depth(0, 0, global.depthManager.get_depth("roomTransition"), oRoomTransition, 
    {
        leaveCallback: _callbackRoom
    });
};

timerLogoAD = new myTimer(id, 2, 0, 1, undefined, undefined, undefined, _callback);
