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

well512_set_seed_raw(argument0[1], argument1);
