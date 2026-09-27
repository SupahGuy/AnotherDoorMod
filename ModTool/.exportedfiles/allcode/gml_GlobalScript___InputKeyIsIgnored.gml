function __InputKeyIsIgnored(arg0)
{
    static _ignoreMap = (function()
    {
        var _ignoreMap = ds_map_create();
        ds_map_set(_ignoreMap, 18, true);
        ds_map_set(_ignoreMap, 165, true);
        ds_map_set(_ignoreMap, 164, true);
        ds_map_set(_ignoreMap, 91, true);
        ds_map_set(_ignoreMap, 92, true);
        ds_map_set(_ignoreMap, 255, true);
        ds_map_set(_ignoreMap, 230, true);
        
        if ((false || (false && __InputOnOperaGXMobile())) && false)
            ds_map_set(_ignoreMap, 124, true);
        
        ds_map_set(_ignoreMap, 144, true);
        ds_map_set(_ignoreMap, 145, true);
        ds_map_set(_ignoreMap, 21, true);
        ds_map_set(_ignoreMap, 22, true);
        ds_map_set(_ignoreMap, 23, true);
        ds_map_set(_ignoreMap, 24, true);
        ds_map_set(_ignoreMap, 25, true);
        ds_map_set(_ignoreMap, 26, true);
        ds_map_set(_ignoreMap, 28, true);
        ds_map_set(_ignoreMap, 29, true);
        ds_map_set(_ignoreMap, 30, true);
        ds_map_set(_ignoreMap, 31, true);
        ds_map_set(_ignoreMap, 229, true);
        ds_map_set(_ignoreMap, 166, true);
        ds_map_set(_ignoreMap, 167, true);
        ds_map_set(_ignoreMap, 168, true);
        ds_map_set(_ignoreMap, 169, true);
        ds_map_set(_ignoreMap, 170, true);
        ds_map_set(_ignoreMap, 171, true);
        ds_map_set(_ignoreMap, 172, true);
        ds_map_set(_ignoreMap, 173, true);
        ds_map_set(_ignoreMap, 174, true);
        ds_map_set(_ignoreMap, 175, true);
        ds_map_set(_ignoreMap, 176, true);
        ds_map_set(_ignoreMap, 177, true);
        ds_map_set(_ignoreMap, 178, true);
        ds_map_set(_ignoreMap, 179, true);
        ds_map_set(_ignoreMap, 180, true);
        ds_map_set(_ignoreMap, 181, true);
        ds_map_set(_ignoreMap, 182, true);
        ds_map_set(_ignoreMap, 183, true);
        ds_map_set(_ignoreMap, 251, true);
        return _ignoreMap;
    })();
    
    if (arg0 == undefined)
        return true;
    
    if (arg0 < 8 || arg0 > 57343)
        return true;
    
    return ds_map_exists(_ignoreMap, arg0);
}
