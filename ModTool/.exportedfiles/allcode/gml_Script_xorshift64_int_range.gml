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

return xorshift64_int_range_raw(argument0[1], argument1, argument2);
