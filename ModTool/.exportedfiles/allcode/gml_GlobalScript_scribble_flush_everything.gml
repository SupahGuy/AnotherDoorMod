function scribble_flush_everything()
{
    with (__scribble_system().__cache_state)
    {
        var _i = 0;
        
        repeat (array_length(__ecache_array))
        {
            __ecache_array[_i].__flushed = true;
            _i++;
        }
        
        _i = 0;
        
        repeat (array_length(__gc_grid_ids))
        {
            ds_grid_destroy(__gc_grid_ids[_i]);
            _i++;
        }
        
        array_resize(__gc_grid_refs, 0);
        array_resize(__gc_grid_ids, 0);
        var _names_array = variable_struct_get_names(__ecache_dict);
        _i = 0;
        
        repeat (array_length(_names_array))
        {
            variable_struct_remove(__ecache_dict, _names_array[_i]);
            _i++;
        }
        
        array_resize(__ecache_name_array, 0);
        array_resize(__ecache_array, 0);
        __scribble_flush_nodels();
    }
}
