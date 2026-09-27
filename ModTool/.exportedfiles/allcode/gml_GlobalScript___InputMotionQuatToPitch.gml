function __InputMotionQuatToPitch(arg0, arg1, arg2, arg3)
{
    return darcsin(clamp(2 * ((arg3 * arg1) - (arg2 * arg0)), -1, 1));
}
