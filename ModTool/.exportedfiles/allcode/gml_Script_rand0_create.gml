var _buf = prng_prepare_buffer(8);

if (rand0_create_raw(buffer_get_address(_buf), 8))
{
    var _ptr_0 = buffer_read(_buf, buffer_u64);
    var _box_0;
    
    if (_ptr_0 != 0)
    {
        _box_0 = array_create(2);
        _box_0[0] = global.__ptrt_Rand0;
        _box_0[1] = ptr(_ptr_0);
    }
    else
    {
        _box_0 = undefined;
    }
    
    return _box_0;
}
else
{
    return undefined;
}
