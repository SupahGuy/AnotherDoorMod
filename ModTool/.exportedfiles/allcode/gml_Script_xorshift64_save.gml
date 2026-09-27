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

var _pos = buffer_tell(argument1);
buffer_write(argument1, buffer_u64, 0);
xorshift64_save_raw(argument0[1], buffer_get_address(argument1), _pos);
