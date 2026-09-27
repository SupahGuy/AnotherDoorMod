function __InputMotionQuatToYaw(arg0, arg1, arg2, arg3)
{
    return darctan2(2 * ((arg3 * arg2) + (arg0 * arg1)), 1 - (2 * ((arg1 * arg1) + (arg2 * arg2))));
}
