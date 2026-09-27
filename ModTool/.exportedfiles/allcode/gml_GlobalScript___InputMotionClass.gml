function __InputMotionClass(arg0) constructor
{
    static __Clear = function()
    {
        accelerationX = 0;
        accelerationY = -1;
        accelerationZ = 0;
        angularVelocityX = 0;
        angularVelocityY = 0;
        angularVelocityZ = 0;
        quatDeviceX = 0;
        quatDeviceY = 0;
        quatDeviceZ = 0;
        quatDeviceW = 1;
        quatRoll = 0;
        quatPitch = 0;
        quatYaw = 0;
    };
    
    static __Calibrate = function()
    {
        quatCalibratedX = quatDeviceX;
        quatCalibratedY = quatDeviceY;
        quatCalibratedZ = quatDeviceZ;
        quatCalibratedW = quatDeviceW;
        __isCalibrated = true;
    };
    
    static __Update = function()
    {
        if (!InputGameHasFocus())
            exit;
        
        switch (0)
        {
            case 21:
                var _axisX = 0;
                var _axisZ = 1;
                var _signX = 1;
                var _signZ = 1;
                var _sensor = 0;
                var _type = InputDeviceGetGamepadType(__device);
                
                if (_type == 5)
                {
                    if (InputDeviceGetDescription(__device) == "SwitchJoyConPair")
                        _sensor = 1;
                }
                else if (_type == 6)
                {
                    _axisX = 1;
                    _axisZ = 0;
                    _signX = -1;
                }
                else if (_type == 7)
                {
                    _axisX = 1;
                    _axisZ = 0;
                    _signZ = -1;
                }
                
                accelerationX = _signX * switch_controller_acceleration(__device, _axisX, _sensor);
                accelerationY = -switch_controller_acceleration(__device, 2, _sensor);
                accelerationZ = _signZ * switch_controller_acceleration(__device, _axisZ, _sensor);
                angularVelocityX = _signX * degtorad(switch_controller_angular_velocity(__device, _axisX, _sensor) / 5) * 570.6;
                angularVelocityY = -degtorad(switch_controller_angular_velocity(__device, 2, _sensor) / 5) * 570.6;
                angularVelocityZ = _signZ * degtorad(switch_controller_angular_velocity(__device, _axisZ, _sensor) / 5) * 570.6;
                break;
            
            case 14:
            case 22:
                accelerationX = gamepad_axis_value(__device, gp_axis_acceleration_x);
                accelerationY = -gamepad_axis_value(__device, gp_axis_acceleration_y);
                accelerationZ = -gamepad_axis_value(__device, gp_axis_acceleration_z);
                angularVelocityX = gamepad_axis_value(__device, gp_axis_angular_velocity_x) / pi;
                angularVelocityY = -gamepad_axis_value(__device, gp_axis_angular_velocity_y) / pi;
                angularVelocityZ = -gamepad_axis_value(__device, gp_axis_angular_velocity_z) / pi;
                break;
            
            case 0:
            case 6:
                var _steamHandle = InputDeviceGetSteamHandle(__device);
                
                if (is_numeric(_steamHandle))
                {
                    var _steamData = steam_input_get_motion_data(_steamHandle);
                    
                    if (!is_struct(_steamData))
                    {
                        __hasData = false;
                        __Clear();
                        exit;
                    }
                    
                    __hasData = true;
                    accelerationX = _steamData.pos_accel_x / 16384;
                    accelerationY = -_steamData.pos_accel_y / 16384;
                    accelerationZ = -_steamData.pos_accel_z / 16384;
                    var _toX = _steamData.rot_quat_x;
                    var _toY = _steamData.rot_quat_y;
                    var _toZ = _steamData.rot_quat_z;
                    var _toW = _steamData.rot_quat_w;
                    quatDeviceX = _toX;
                    quatDeviceY = _toY;
                    quatDeviceZ = _toZ;
                    quatDeviceW = _toW;
                    var _invFromX = -quatCalibratedX;
                    var _invFromY = -quatCalibratedY;
                    var _invFromZ = -quatCalibratedZ;
                    var _invFromW = quatCalibratedW;
                    var _deltaX = ((_invFromW * _toX) + (_invFromX * _toW) + (_invFromY * _toZ)) - (_invFromZ * _toY);
                    var _deltaY = ((_invFromW * _toY) - (_invFromX * _toZ)) + (_invFromY * _toW) + (_invFromZ * _toX);
                    var _deltaZ = (((_invFromW * _toZ) + (_invFromX * _toY)) - (_invFromY * _toX)) + (_invFromZ * _toW);
                    var _deltaW = (_invFromW * _toW) - (_invFromX * _toX) - (_invFromY * _toY) - (_invFromZ * _toZ);
                    var _radius = (_deltaX * _deltaX) + (_deltaY * _deltaY) + (_deltaZ * _deltaZ) + (_deltaW * _deltaW);
                    
                    if (_radius > 0)
                    {
                        _radius = 1 / sqrt(_radius);
                        _deltaX = _radius * _deltaX;
                        _deltaY = _radius * _deltaY;
                        _deltaZ = _radius * _deltaZ;
                        _deltaW = _radius * _deltaW;
                    }
                    else
                    {
                        _deltaX = 0;
                        _deltaY = 0;
                        _deltaZ = 0;
                        _deltaW = 1;
                    }
                    
                    var _angleRoll = __InputMotionQuatToPitch(_deltaX, _deltaY, _deltaZ, _deltaW);
                    var _anglePitch = -__InputMotionQuatToRoll(_deltaX, _deltaY, _deltaZ, _deltaW);
                    var _angleYaw = -__InputMotionQuatToYaw(_deltaX, _deltaY, _deltaZ, _deltaW);
                    angularVelocityX = _angleYaw - quatYaw;
                    angularVelocityY = _anglePitch - quatPitch;
                    angularVelocityZ = _angleRoll - quatRoll;
                    quatRoll = _angleRoll;
                    quatPitch = _anglePitch;
                    quatYaw = _angleYaw;
                }
                
                break;
            
            default:
                __Clear();
                break;
        }
    };
    
    __device = arg0;
    quatCalibratedX = 0;
    quatCalibratedY = 0;
    quatCalibratedZ = 0;
    quatCalibratedW = 1;
    __isCalibrated = false;
    
    if (true && InputGetSteamInfo(UnknownEnum.Value_0))
    {
        var _steamHandle = InputDeviceGetSteamHandle(__device);
        __hasData = is_numeric(_steamHandle) && is_struct(steam_input_get_motion_data(_steamHandle));
    }
    else
    {
        __hasData = false;
    }
    
    __Clear();
}

enum UnknownEnum
{
    Value_0
}
