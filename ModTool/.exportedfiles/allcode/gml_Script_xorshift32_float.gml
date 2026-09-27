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

return xorshift32_float_raw(argument0[1], argument1);
