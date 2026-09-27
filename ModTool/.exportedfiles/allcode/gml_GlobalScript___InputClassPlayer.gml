function __InputClassPlayer(arg0) constructor
{
    static _system = __InputSystem();
    static _verbCount = _system.__verbCount;
    static _clusterCount = _system.__clusterCount;
    static _clusterDefinitionArray = _system.__clusterDefinitionArray;
    
    static __UpdateStatus = function()
    {
        var _connected = __ghost || InputDeviceIsConnected(__device);
        
        if (_connected)
        {
            if (__status == UnknownEnum.Value_1 || __status == UnknownEnum.Value_0)
            {
                __status = UnknownEnum.Value_2;
                
                if (InputDeviceIsGamepad(__device))
                    __lastConnectedGamepadType = InputDeviceGetGamepadType(__device);
            }
            else
            {
                __status = UnknownEnum.Value_3;
            }
        }
        else if (__status == UnknownEnum.Value_2 || __status == UnknownEnum.Value_3)
        {
            __status = UnknownEnum.Value_1;
        }
        else
        {
            __status = UnknownEnum.Value_0;
        }
        
        return _connected;
    };
    
    static __UpdateClusterThresholds = function()
    {
        static _funcUpdateThresholdType = function(arg0)
        {
            var _thresholdType = 0;
            var _alternate = 0;
            
            repeat (array_length(arg0))
            {
                var _binding = arg0[_alternate];
                
                if (_binding != undefined)
                {
                    _binding = abs(_binding);
                    _thresholdType |= ((_binding == 32785 || _binding == 32786) ? 1 : ((_binding == 32787 || _binding == 32788) ? 2 : 0));
                }
                
                _alternate++;
            }
            
            return _thresholdType;
        };
        
        var _gamepadBindingArray = __gamepadBindingArray;
        var _clusterThresholdTypeArray = __clusterThresholdTypeArray;
        var _cluster = 0;
        
        repeat (_clusterCount)
        {
            var _clusterDefinition = _clusterDefinitionArray[_cluster];
            var _thresholdType = 0;
            _thresholdType |= _funcUpdateThresholdType(_gamepadBindingArray[_clusterDefinition.__verbUp]);
            _thresholdType |= _funcUpdateThresholdType(_gamepadBindingArray[_clusterDefinition.__verbRight]);
            _thresholdType |= _funcUpdateThresholdType(_gamepadBindingArray[_clusterDefinition.__verbDown]);
            _thresholdType |= _funcUpdateThresholdType(_gamepadBindingArray[_clusterDefinition.__verbLeft]);
            
            if (_thresholdType <= 1)
                _clusterThresholdTypeArray[_cluster] = UnknownEnum.Value_0;
            else if (_thresholdType == 2)
                _clusterThresholdTypeArray[_cluster] = UnknownEnum.Value_1;
            else
                _clusterThresholdTypeArray[_cluster] = UnknownEnum.Value_2;
            
            _cluster++;
        }
    };
    
    static __Update = function()
    {
        __anyInput = false;
        __InputPlugInExecuteCallbacks(UnknownEnum.Value_6, __playerIndex);
        var _consumedArray = __consumedArray;
        var _i = 0;
        
        repeat (array_length(_consumedArray))
        {
            with (_consumedArray[_i])
            {
                if (__held)
                {
                    __held = false;
                    __valueRaw = 0;
                    __valueClamp = 0;
                    __pressFrame = -infinity;
                    _i++;
                }
                else
                {
                    array_delete(_consumedArray, _i, 1);
                }
            }
        }
        
        var _verbStateArray = __verbStateArray;
        _i = 0;
        
        repeat (_clusterCount)
        {
            var _clusterDefinition = _clusterDefinitionArray[_i];
            
            if (!is_struct(_clusterDefinition))
            {
                _i++;
            }
            else
            {
                var _valueU = _verbStateArray[_clusterDefinition.__verbUp].__valueRaw;
                var _valueR = _verbStateArray[_clusterDefinition.__verbRight].__valueRaw;
                var _valueD = _verbStateArray[_clusterDefinition.__verbDown].__valueRaw;
                var _valueL = _verbStateArray[_clusterDefinition.__verbLeft].__valueRaw;
                var _dx = _valueR - _valueL;
                var _dy = _valueD - _valueU;
                var _d = sqrt((_dx * _dx) + (_dy * _dy));
                
                if (_d <= 0)
                {
                    __clusterXArray[_i] = 0;
                    __clusterYArray[_i] = 0;
                }
                else
                {
                    _dx /= max(1, _d);
                    _dy /= max(1, _d);
                    _d = min(1, _d);
                    
                    if (__device >= 0)
                    {
                        var _thresholdType = __clusterThresholdTypeArray[_i];
                        var _a = __thresholdMinArray[_thresholdType];
                        var _b = __thresholdMaxArray[_thresholdType];
                        var _min = clamp(min(_a, _b), 0, 1);
                        var _max = clamp(max(_a, _b), 0, 1);
                        var _delta = _max - _min;
                        
                        if (_delta == 0)
                            _delta = 0.001;
                        
                        var _coeff = clamp((_d - _min) / _delta, 0, 1);
                        _dx = (_dx / _d) * _coeff;
                        _dy = (_dy / _d) * _coeff;
                    }
                    
                    var _bias = _clusterDefinition.__axisBiasFactor;
                    
                    if (_bias > 0)
                    {
                        var _divisor = _clusterDefinition.__axisBiasDiagonals ? 45 : 90;
                        var _direction = point_direction(0, 0, _dx, _dy);
                        
                        if (_bias >= 1)
                        {
                            _direction = _divisor * round(_direction / _divisor);
                        }
                        else
                        {
                            var _dirMod = (_direction % _divisor) / _divisor;
                            _dirMod = clamp((_dirMod - (0.4995 * _bias)) / (1 - (0.999 * _bias)), 0, 1);
                            _dirMod = _dirMod * _dirMod * (3 - (2 * _dirMod));
                            _direction = _divisor * ((_direction div _divisor) + _dirMod);
                        }
                        
                        var _distance = point_distance(0, 0, _dx, _dy);
                        _dx = lengthdir_x(_distance, _direction);
                        _dy = lengthdir_y(_distance, _direction);
                    }
                    
                    __clusterXArray[_i] = _dx;
                    __clusterYArray[_i] = _dy;
                }
                
                _i++;
            }
        }
        
        if (__anyInput)
            __lastInputTime = current_time;
    };
    
    __playerIndex = arg0;
    __device = -666;
    __metadata = undefined;
    __status = UnknownEnum.Value_0;
    __blocked = false;
    __ghost = false;
    __anyInput = false;
    __lastInputTime = -infinity;
    __lastConnectedGamepadType = 2;
    __kbmBindingArray = array_create_ext(_verbCount, function(arg0)
    {
        static _verbDefinitionArray = __InputSystem().__verbDefinitionArray;
        
        var _verbDefinition = _verbDefinitionArray[arg0];
        return (_verbDefinition != undefined) ? variable_clone(_verbDefinition.__kbmBinding) : [];
    });
    __gamepadBindingArray = array_create_ext(_verbCount, function(arg0)
    {
        static _verbDefinitionArray = __InputSystem().__verbDefinitionArray;
        
        var _verbDefinition = _verbDefinitionArray[arg0];
        return (_verbDefinition != undefined) ? variable_clone(_verbDefinition.__gamepadBinding) : [];
    });
    __verbStateArray = array_create_ext(_verbCount, function(arg0)
    {
        return new __InputClassVerbState(arg0);
    });
    __verbMetadataArray = array_create_ext(_verbCount, function(arg0)
    {
        static _verbDefinitionArray = __InputSystem().__verbDefinitionArray;
        
        var _verbDefinition = _verbDefinitionArray[arg0];
        return (_verbDefinition != undefined) ? variable_clone(_verbDefinition.__metadata) : undefined;
    });
    __clusterMetadataArray = array_create_ext(_clusterCount, function(arg0)
    {
        static _clusterDefinitionArray = __InputSystem().__clusterDefinitionArray;
        
        var _clusterDefinition = _clusterDefinitionArray[arg0];
        return (_clusterDefinition != undefined) ? variable_clone(_clusterDefinition.__metadata) : undefined;
    });
    __valueRawArray = array_create(_verbCount, 0);
    __valueClampArray = array_create(_verbCount, 0);
    __clusterXArray = array_create(_clusterCount, 0);
    __clusterYArray = array_create(_clusterCount, 0);
    __clusterThresholdTypeArray = array_create(_verbCount, UnknownEnum.Value_0);
    __thresholdMinArray = array_create(UnknownEnum.Value_3, 0.25);
    __thresholdMaxArray = array_create(UnknownEnum.Value_3, 0.8);
    __consumedArray = [];
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_6 = 6
}
