function __scribble_texture_group_get_ready(arg0)
{
    return arg0 == undefined || texturegroup_get_status(arg0) == 2 || texturegroup_get_status(arg0) == 3;
}
