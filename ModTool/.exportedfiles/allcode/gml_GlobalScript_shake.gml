function c_shake() constructor
{
    perlinSeedX = random(1000);
    perlinSeedY = random(1000);
    perlinInc = 0.7;
    shakeIntensity = 1;
    shakeX = 0;
    shakeY = 0;
    isRunning = false;
    elementsShaking = [];
    
    run = function()
    {
        isRunning = true;
    };
    
    stop = function()
    {
        isRunning = false;
    };
    
    set = function()
    {
        isRunning = true;
    };
    
    get_values = function()
    {
        return [shakeX, shakeY];
    };
    
    get_intensity_value = function(arg0)
    {
        switch (arg0)
        {
            case UnknownEnum.Value_0:
                return 4;
                break;
            
            case UnknownEnum.Value_1:
                return 8;
                break;
            
            case UnknownEnum.Value_2:
                return 24;
                break;
        }
    };
    
    get_intensity = function(arg0)
    {
        var _index = element_exist(arg0);
        
        if (_index != -1)
            return get_intensity_value(elementsShaking[_index].intensity);
        else
            return get_intensity_value(UnknownEnum.Value_1);
    };
    
    element_exist = function(arg0)
    {
        for (var _i = 0; _i < array_length(elementsShaking); _i++)
        {
            if (elementsShaking[_i].id == arg0)
                return _i;
        }
        
        return -1;
    };
    
    add_element = function(arg0, arg1 = UnknownEnum.Value_1)
    {
        var _index = element_exist(arg0);
        
        if (_index == -1)
        {
            var _struct = 
            {
                id: arg0,
                intensity: arg1
            };
            array_push(elementsShaking, _struct);
            
            if (!isRunning)
                run();
        }
        else if (get_intensity_value(arg1) > get_intensity_value(elementsShaking[_index].intensity))
        {
            elementsShaking[_index].intensity = arg1;
        }
    };
    
    remove_element = function(arg0)
    {
        var _index = element_exist(arg0);
        
        if (_index != -1)
        {
            array_delete(elementsShaking, _index, 1);
            
            if (array_length(elementsShaking) == 0)
                stop();
        }
    };
    
    step = function()
    {
        if (isRunning)
        {
            perlinSeedX += perlinInc;
            perlinSeedY += perlinInc;
            shakeX = map_value(perlin_noise(perlinSeedX), -1, 1, -shakeIntensity, shakeIntensity);
            shakeY = map_value(perlin_noise(perlinSeedY), -1, 1, -shakeIntensity, shakeIntensity);
        }
    };
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
