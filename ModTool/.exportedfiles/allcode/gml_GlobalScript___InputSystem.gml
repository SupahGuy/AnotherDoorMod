__InputSystem();

function __InputSystem()
{
    static _system = undefined;
    
    if (_system != undefined)
        return _system;
    
    __InputTrace("Welcome to Input by Juju Adams, Alynne Keith, and friends! This is version 10.2.2, 2025-09-20 (GM version 2026.0.0.23)");
    device_mouse_dbclick_enable(false);
    _system = {};
    
    with (_system)
    {
        __InputInitializeSteam();
        __deviceMap = ds_map_create();
        __frame = 0;
        __time = 0;
        __lowestConnectedPlayerIndex = undefined;
        __hotswap = 1;
        __hotswapCallback = undefined;
        __rebindingMap = ds_map_create();
        __rebindingArray = [];
        __gamepadArray = array_create(gamepad_get_device_count(), undefined);
        __androidEnumerationTime = -infinity;
        __restartTime = -infinity;
        __verbDefineAllowed = false;
        __verbDefinitionArray = [];
        __verbDefIndexArray = [];
        __verbExportNameDict = {};
        __verbCount = 0;
        __clusterDefinitionArray = [];
        __clusterCount = 0;
        __kbmBindingNameMap = __InputCreateKbmBindingNameMap();
        __gamepadButtonNameLookup = __InputCreateGamepadBindingNameLookup();
        __playerArray = undefined;
        __pointerBlockedByUser = false;
        __pointerBlockedByUserThisFrame = false;
        __pointerBlocked = false;
        __pointerMoved = false;
        __prevPointerDeviceX = 0;
        __prevPointerDeviceY = 0;
        __pointerDeviceX = 0;
        __pointerDeviceY = 0;
        __pointerRoomX = 0;
        __pointerRoomY = 0;
        __pointerGuiX = 0;
        __pointerGuiY = 0;
        __tapClick = false;
        __tapPresses = 0;
        __tapReleases = 0;
        __windowFocus = true;
        __pointerBlockedByWindowDefocus = false;
        __virtualOrderDirty = false;
        __virtualButtonArray = [];
        __plugInsInitializeState = 0;
        __plugInArray = [];
        __plugInDict = {};
        __plugInCurrentCallback = undefined;
        __plugInCallbackArray = __InputSystemCallbackArray();
        __InputRegisterCollect();
        __InputRegisterCollectPlayer();
        __InputRegisterUpdate();
        __InputRegisterUpdatePlayer();
        __InputRegisterGamepadDisconnected();
        __InputRegisterGamepadConnected();
        __InputRegisterPlayerDeviceChanged();
        __InputRegisterFindBindingCollisions();
        
        var _returnNull = function()
        {
            return 0;
        };
        
        __genericReadArray = [gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_axis_value, gamepad_axis_value, gamepad_axis_value, gamepad_axis_value, _returnNull, _returnNull, _returnNull, _returnNull, _returnNull, _returnNull, _returnNull, _returnNull, _returnNull, _returnNull, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value, gamepad_button_value];
        __verbDefineAllowed = true;
        __InputConfigVerbs();
        __verbDefineAllowed = false;
        keyboard_virtual_hide();
        time_source_start(time_source_create(time_source_global, 1, time_source_units_frames, function()
        {
            static _created = false;
            
            if (!instance_exists(__InputUpdateController))
            {
                instance_activate_object(__InputUpdateController);
                
                if (instance_exists(__InputUpdateController))
                {
                    __InputTrace("Warning! __InputUpdateController has been deactivated. Please ensure that __InputUpdateController is never deactivated. You may need to use instance_activate_object(__InputUpdateController)");
                }
                else
                {
                    if (!_created)
                        _created = true;
                    else if (__restartTime == __time)
                        __InputTrace("Warning! Please consider an alternative method to reset game state: avoid using \"game_restart()\"");
                    else
                        __InputTrace("Warning! __InputUpdateController has been destroyed. Please ensure that __InputUpdateController is never destroyed");
                    
                    instance_create_depth(0, -16001, 16001, __InputUpdateController);
                }
            }
            
            if (!__InputUpdateController.persistent)
            {
                __InputTrace("Warning! __InputUpdateController has been set as non-persistent. Please ensure that __InputUpdateController is always persistent");
                __InputUpdateController.persistent = true;
            }
            
            if (__InputUpdateController.depth != 16001)
            {
                __InputTrace("Warning! __InputUpdateController depth has been changed (expected ", 16001, ", got ", __InputUpdateController.depth, ")\nPlease ensure that __InputUpdateController is never manually created and depth is not manually set");
                __InputUpdateController.depth = 16001;
            }
        }, [], -1));
    }
    
    return _system;
}
