if (argument0[0] != global.__ptrt_Rand0)
{
    show_error("Expected a Rand0, got " + string(argument0), true);
    exit;
}

if (int64(argument0[1]) == 0)
{
    show_error("This Rand0 is destroyed.", true);
    exit;
}

buffer_seek(argument1, buffer_seek_relative, rand0_load_raw(argument0[1], buffer_get_address(argument1), buffer_tell(argument1)));
