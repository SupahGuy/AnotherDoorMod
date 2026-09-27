function __scribble_flush_nodels()
{
    with (__scribble_system().__cache_state)
    {
        var _i = 0;
        
        repeat (array_length(__gc_vbuff_ids))
        {
            vertex_delete_buffer(__gc_vbuff_ids[_i]);
            _i++;
        }
        
        array_resize(__gc_vbuff_refs, 0);
        array_resize(__gc_vbuff_ids, 0);
        var _names_array = variable_struct_get_names(__mcache_dict);
        _i = 0;
        
        repeat (array_length(_names_array))
        {
            variable_struct_remove(__mcache_dict, _names_array[_i]);
            _i++;
        }
        
        array_resize(__mcache_name_array, 0);
    }
}
