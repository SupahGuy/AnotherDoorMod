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

var _pos = buffer_tell(argument1);
buffer_write(argument1, buffer_u32, 0);
rand0_save_raw(argument0[1], buffer_get_address(argument1), _pos);
