function __InputGamepadDiscover(arg0)
{
    static _system = __InputSystem();
    static _typeLookupStruct = __InputCreateTypeLookup();
    
    with (arg0)
    {
        var _device = __gamepadIndex;
        __InputTrace("Discovering gamepad ", _device, ", desc=\"", gamepad_get_description(_device), "\", GUID=\"", gamepad_get_guid(_device), "\", buttons = ", gamepad_button_count(_device), ", axes = ", gamepad_axis_count(_device), ", hats = ", gamepad_hat_count(_device));
        __guid = gamepad_get_guid(_device);
        __description = gamepad_get_description(_device);
        __type = 1;
        var _result = __InputGamepadGUIDParse(__guid);
        __vendor = _result.__vendor;
        __product = _result.__product;
        __xinput = true && _device < 4 && !__InputStringContains(__guid, "000000007801");
        
        if (__xinput)
        {
            __description = "XInput";
            __type = 2;
        }
        else
        {
            __InputTrace("Identifying gamepad type using VID + PID \"", __vendor + __product, "\"");
            __type = variable_struct_get(_typeLookupStruct, __vendor + __product);
            
            if (__type == undefined)
            {
                __InputTrace("Unsuccessful; identifying gamepad using description \"", __description, "\"");
                __type = __InputGamepadIdentifyDescriptionType(__description);
                
                if (__type == undefined)
                {
                    __InputTrace("Unsuccessful; using fallback type");
                    __type = 2;
                }
            }
            
            __InputTrace("Gamepad type decided as ", __type);
        }
        
        __InputGamepadTransformSteam(self);
        __InputGamepadTransformQuirks(self);
    }
}
