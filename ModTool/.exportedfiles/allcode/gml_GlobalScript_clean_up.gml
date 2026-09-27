function add_to_clean_up(arg0, arg1, arg2 = undefined)
{
    if (!variable_instance_exists(id, "toCleanUp"))
        toCleanUp = [];
    
    array_push(toCleanUp, 
    {
        elem: arg0,
        parent: arg2,
        garbageType: arg1
    });
}

function g_clean_up()
{
    if (!variable_instance_exists(id, "toCleanUp"))
        exit;
    
    for (var _c = 0; _c < array_length(toCleanUp); _c++)
    {
        switch (toCleanUp[_c].garbageType)
        {
            case UnknownEnum.Value_1:
                if (instance_exists(toCleanUp[_c].elem))
                    instance_destroy(toCleanUp[_c].elem);
                
                break;
            
            case UnknownEnum.Value_0:
                if (is_instanceof(toCleanUp[_c].elem, myTimer))
                    toCleanUp[_c].elem.clean_up_variables();
                
                toCleanUp[_c].elem = undefined;
                break;
            
            case UnknownEnum.Value_2:
                if (time_source_exists(toCleanUp[_c].elem))
                    time_source_destroy(toCleanUp[_c].elem);
                
                break;
            
            case UnknownEnum.Value_5:
                if (part_emitter_exists(toCleanUp[_c].parent, toCleanUp[_c].elem))
                {
                    part_emitter_clear(toCleanUp[_c].parent, toCleanUp[_c].elem);
                    part_emitter_destroy(toCleanUp[_c].parent, toCleanUp[_c].elem);
                }
                
                break;
            
            case UnknownEnum.Value_4:
                if (part_system_exists(toCleanUp[_c].elem))
                {
                    part_particles_clear(toCleanUp[_c].elem);
                    part_system_destroy(toCleanUp[_c].elem);
                }
                
                break;
            
            case UnknownEnum.Value_6:
                if (part_type_exists(toCleanUp[_c].elem))
                    part_type_destroy(toCleanUp[_c].elem);
                
                break;
            
            case UnknownEnum.Value_3:
                if (surface_exists(toCleanUp[_c].elem))
                    surface_free(toCleanUp[_c].elem);
                
                break;
            
            case UnknownEnum.Value_7:
                if (audio_emitter_exists(toCleanUp[_c].elem))
                    audio_emitter_free(toCleanUp[_c].elem);
                
                break;
            
            case UnknownEnum.Value_8:
                if (buffer_exists(toCleanUp[_c].elem))
                    buffer_delete(toCleanUp[_c].elem);
                
                break;
            
            default:
                break;
        }
    }
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8
}
