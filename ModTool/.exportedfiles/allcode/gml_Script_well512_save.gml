if (argument0[0] != global.__ptrt_WELL512)
{
    show_error("Expected a WELL512, got " + string(argument0), true);
    exit;
}

if (int64(argument0[1]) == 0)
{
    show_error("This WELL512 is destroyed.", true);
    exit;
}

var _pos = buffer_tell(argument1);
buffer_write(argument1, buffer_u32, 0);

repeat (8)
    buffer_write(argument1, buffer_u64, 0);

well512_save_raw(argument0[1], buffer_get_address(argument1), _pos);
