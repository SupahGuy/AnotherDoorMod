if (argument0[0] != global.__ptrt_MINSTD)
{
    show_error("Expected a MINSTD, got " + string(argument0), true);
    exit;
}

if (int64(argument0[1]) == 0)
{
    show_error("This MINSTD is destroyed.", true);
    exit;
}

return minstd_float_raw(argument0[1], argument1);
