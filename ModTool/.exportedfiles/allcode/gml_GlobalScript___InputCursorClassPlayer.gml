function __InputCursorClassPlayer(arg0) constructor
{
    static _system = __InputCursorSystem();
    
    static __Update = function()
    {
        __prevX = __x;
        __prevY = __y;
        var _nextX = __x;
        var _nextY = __y;
        var _playerIndex = __playerIndex;
        
        if (true && InputPlayerUsingKbm(_playerIndex))
        {
            _nextX = InputMouseRoomX();
            _nextY = InputMouseRoomY();
        }
        else
        {
            var _dX = InputX(UnknownEnum.Value_0, _playerIndex);
            var _dY = InputY(UnknownEnum.Value_0, _playerIndex);
            _nextX += (__speed * _dX);
            _nextY += (__speed * _dY);
            
            if (__elasticStrength > 0)
            {
                _nextX += ((_nextX - __prevX) / __elasticStrength);
                _nextY += ((_nextY - __prevY) / __elasticStrength);
                _nextX = lerp(_nextX, __elasticX, __elasticStrength);
                _nextY = lerp(_nextY, __elasticY, __elasticStrength);
            }
        }
        
        __x = _nextX;
        __y = _nextY;
        __Limit();
    };
    
    static __Limit = function()
    {
        var _x = __x;
        var _y = __y;
        
        if (__limitType == 3)
        {
            var _dx = _x - __limitX;
            var _dy = _y - __limitY;
            var _d = sqrt((_dx * _dx) + (_dy * _dy));
            
            if (_d > 0 && _d > __limitRadius)
            {
                _d = __limitRadius / _d;
                _x = __limitX + (_d * _dx);
                _y = __limitY + (_d * _dy);
            }
        }
        else if (__limitType == 2)
        {
            _x = clamp(_x, __limitLeft, __limitRight);
            _y = clamp(_y, __limitTop, __limitBottom);
        }
        else if (__limitType == 1)
        {
            var _camera = (view_enabled && view_visible[0]) ? view_camera[0] : undefined;
            var _l, _r, _t, _b;
            
            if (_camera != undefined)
            {
                _l = camera_get_view_x(_camera);
                _t = camera_get_view_y(_camera);
                _r = (_l + camera_get_view_width(_camera)) - 1;
                _b = (_t + camera_get_view_height(_camera)) - 1;
                var _viewA = camera_get_view_angle(_camera);
                
                if (_viewA != 0)
                {
                    var _pivotX = (_l + _r) / 2;
                    var _pivotY = (_t + _b) / 2;
                    var _cos = dcos(-_viewA);
                    var _sin = dsin(-_viewA);
                    var _rotatedX = ((_x - _pivotX) * _cos) - ((_y - _pivotY) * _sin);
                    var _rotatedY = ((_x - _pivotX) * _sin) + ((_y - _pivotY) * _cos);
                    _rotatedX = clamp(_rotatedX, (_l + __limitMargin) - _pivotX, _r - __limitMargin - _pivotX);
                    _rotatedY = clamp(_rotatedY, (_t + __limitMargin) - _pivotY, _b - __limitMargin - _pivotY);
                    __x = (_rotatedX * _sin) + (_rotatedY * _cos) + _pivotX;
                    __y = (-_rotatedX * _sin) + (_rotatedY * _cos) + _pivotY;
                    exit;
                }
            }
            else
            {
                _l = 0;
                _t = 0;
                _r = room_width;
                _b = room_height;
            }
            
            _x = clamp(_x, _l + __limitMargin, _r - __limitMargin);
            _y = clamp(_y, _t + __limitMargin, _b - __limitMargin);
        }
        
        __x = _x;
        __y = _y;
    };
    
    __playerIndex = arg0;
    __speed = 8;
    __x = 0;
    __y = 0;
    __prevX = 0;
    __prevY = 0;
    __elasticX = undefined;
    __elasticY = undefined;
    __elasticStrength = 0;
    __limitType = 0;
    __limitX = undefined;
    __limitY = undefined;
    __limitRadius = undefined;
    __limitLeft = undefined;
    __limitTop = undefined;
    __limitRight = undefined;
    __limitBottom = undefined;
    __limitMargin = undefined;
}

enum UnknownEnum
{
    Value_0
}
