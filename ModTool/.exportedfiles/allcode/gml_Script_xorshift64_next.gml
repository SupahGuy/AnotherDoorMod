var _buf = prng_prepare_buffer(8);

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

if (xorshift64_next_raw(buffer_get_address(_buf), 8, argument0[1]))
    return buffer_read(_buf, buffer_u64);
else
    return undefined;
