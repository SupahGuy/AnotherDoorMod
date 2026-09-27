function __InputOnOperaGXMobile()
{
    static _onOperaGXMobile = (function()
    {
        return false;
        var _map = os_get_info();
        var _onMobile = ds_map_find_value(_map, "mobile");
        ds_map_destroy(_map);
        return _onMobile;
    })();
    
    return _onOperaGXMobile;
}
