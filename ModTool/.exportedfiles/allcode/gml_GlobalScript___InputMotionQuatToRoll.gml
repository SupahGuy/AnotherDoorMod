function __InputMotionQuatToRoll(arg0, arg1, arg2, arg3)
{
    return darctan2(2 * ((arg3 * arg0) + (arg1 * arg2)), 1 - (2 * ((arg0 * arg0) + (arg1 * arg1))));
}
