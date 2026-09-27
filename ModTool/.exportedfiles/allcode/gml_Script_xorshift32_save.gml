if (argument0[0] != global.__ptrt_Xorshift32)
{
    show_error("Expected a Xorshift32, got " + string(argument0), true);
    exit;
}

if (int64(argument0[1]) == 0)
{
    show_error("This Xorshift32 is destroyed.", true);
    exit;
}

var _pos = buffer_tell(argument1);
buffer_write(argument1, buffer_u32, 0);
xorshift32_save_raw(argument0[1], buffer_get_address(argument1), _pos);
