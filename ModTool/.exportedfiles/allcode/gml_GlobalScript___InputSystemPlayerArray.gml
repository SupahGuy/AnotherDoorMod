function __InputSystemPlayerArray()
{
    static _playerArray = (function()
    {
        with (__InputSystem())
        {
            __verbCount = array_length(__verbDefinitionArray);
            __clusterCount = array_length(__clusterDefinitionArray);
            var _i = 0;
            
            repeat (__verbCount)
            {
                if (!is_struct(__verbDefinitionArray[_i]))
                    __verbDefinitionArray[_i] = undefined;
                
                _i++;
            }
            
            __playerArray = array_create_ext(4, function(arg0)
            {
                return new __InputClassPlayer(arg0);
            });
            return __playerArray;
        }
    })();
    
    return _playerArray;
}
