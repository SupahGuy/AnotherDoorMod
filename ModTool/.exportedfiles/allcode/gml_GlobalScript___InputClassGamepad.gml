function __InputClassGamepad(arg0) constructor
{
    static _genericReadArray = __InputSystem().__genericReadArray;
    
    static __UpdatePrevValues = function()
    {
        if (false || __blocked || !gamepad_is_connected(__gamepadIndex))
        {
            __prevValueArray[0] = 0;
            __prevValueArray[1] = 0;
            __prevValueArray[2] = 0;
            __prevValueArray[3] = 0;
            exit;
        }
        
        array_copy(__prevValueArray, 0, __valueArray, 0, 4);
        __valueArray[0] = __readArray[16](__gamepadIndex, 32785);
        __valueArray[1] = __readArray[17](__gamepadIndex, 32786);
        __valueArray[2] = __readArray[18](__gamepadIndex, 32787);
        __valueArray[3] = __readArray[19](__gamepadIndex, 32788);
    };
    
    __gamepadIndex = arg0;
    __blocked = false;
    __lastConnectedTime = current_time;
    __guid = undefined;
    __vendor = "";
    __product = "";
    __description = "Generic Gamepad";
    __type = 2;
    __xinput = false;
    __xinput = false;
    __steamHandle = undefined;
    __steamHandleIndex = undefined;
    __readArray = variable_clone(_genericReadArray, 1);
    __prevValueArray = array_create(4, 0);
    __valueArray = array_create(4, 0);
}
