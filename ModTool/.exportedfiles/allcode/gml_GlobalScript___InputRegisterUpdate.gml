function __InputRegisterUpdate()
{
    __InputPlugInRegisterCallbackInternal(UnknownEnum.Value_1, 0, function()
    {
        static _playerArray = __InputSystemPlayerArray();
        static _virtualButtonArray = __virtualButtonArray;
        
        __time += (delta_time / 1000);
        __frame++;
        __pointerBlockedByUserThisFrame = false;
        
        if ((true || (false && !__InputOnOperaGXMobile())) && 1)
        {
            if (os_is_paused())
            {
                __windowFocus = false;
                __pointerBlockedByWindowDefocus = true;
                keyboard_virtual_show(undefined, undefined, undefined, undefined);
                __InputPlugInExecuteCallbacks(UnknownEnum.Value_7);
            }
            else if (__windowFocus)
            {
                if (__pointerBlockedByWindowDefocus)
                {
                    __pointerBlockedByWindowDefocus = false;
                    __pointerBlockedByWindowDefocus = __InputGetMouseOutput() != undefined;
                }
            }
            else if (keyboard_key != vk_nokey || mouse_button != mb_none || (true && window_has_focus()) || (false && __pointerMoved))
            {
                __windowFocus = true;
                __pointerBlockedByWindowDefocus = true;
                __pointerBlockedByUserThisFrame = true;
                keyboard_virtual_hide();
                __InputPlugInExecuteCallbacks(UnknownEnum.Value_8);
            }
        }
        
        __prevPointerDeviceX = __pointerDeviceX;
        __prevPointerDeviceY = __pointerDeviceY;
        
        if (__pointerBlockedByUser || (__pointerBlockedByWindowDefocus && 1) || (!!(true || (false && !__InputOnOperaGXMobile())) && InputDeviceGetRebinding(-1)))
        {
            __pointerBlocked = true;
        }
        else
        {
            __pointerBlocked = false;
            __pointerRoomX = device_mouse_x(0);
            __pointerRoomY = device_mouse_y(0);
            __pointerGuiX = device_mouse_x_to_gui(0);
            __pointerGuiY = device_mouse_y_to_gui(0);
            __pointerDeviceX = display_mouse_get_x() - window_get_x();
            __pointerDeviceY = display_mouse_get_y() - window_get_y();
        }
        
        __pointerMoved = point_distance(__prevPointerDeviceX, __prevPointerDeviceY, __pointerDeviceX, __pointerDeviceY) > 2;
        __tapPresses += device_mouse_check_button_pressed(0, mb_left);
        __tapReleases += device_mouse_check_button_released(0, mb_left);
        
        if (__tapReleases >= __tapPresses)
        {
            __tapClick = __tapReleases > __tapPresses;
            __tapPresses = 0;
            __tapReleases = 0;
        }
        else
        {
            __tapClick = false;
        }
        
        if (__virtualOrderDirty)
        {
            __virtualOrderDirty = false;
            _i = 0;
            
            repeat (array_length(_virtualButtonArray))
            {
                if (_virtualButtonArray[_i].__destroyed)
                    array_delete(_virtualButtonArray, _i, 1);
                else
                    _i++;
            }
            
            array_sort(_virtualButtonArray, function(arg0, arg1)
            {
                return sign(arg1.__priority - arg0.__priority);
            });
        }
        
        __lowestConnectedPlayerIndex = undefined;
        var _i = 0;
        
        repeat (4)
        {
            _playerArray[_i].__Update();
            
            if (__lowestConnectedPlayerIndex == undefined)
            {
                if (InputPlayerIsConnected(_i))
                    __lowestConnectedPlayerIndex = _i;
            }
            
            _i++;
        }
    });
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_7 = 7,
    Value_8
}
