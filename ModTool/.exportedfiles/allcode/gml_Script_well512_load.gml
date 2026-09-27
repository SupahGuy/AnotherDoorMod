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

buffer_seek(argument1, buffer_seek_relative, well512_load_raw(argument0[1], buffer_get_address(argument1), buffer_tell(argument1)));
