if (argument0[0] != global.__ptrt_Xorshift64)
{
    show_error("Expected a Xorshift64, got " + string(argument0), true);
    exit;
}

if (int64(argument0[1]) == 0)
{
    show_error("This Xorshift64 is destroyed.", true);
    exit;
}

buffer_seek(argument1, buffer_seek_relative, xorshift64_load_raw(argument0[1], buffer_get_address(argument1), buffer_tell(argument1)));
